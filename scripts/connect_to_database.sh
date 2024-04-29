#!/bin/bash

# Run this script to connect to the database

TOKEN=$(curl -s --request PUT "http://169.254.169.254/latest/api/token" --header "X-aws-ec2-metadata-token-ttl-seconds: 3600")


AWSREGION=$(curl -s http://169.254.169.254/latest/meta-data/placement/region --header "X-aws-ec2-metadata-token: $TOKEN")

RDSPGINSTANCE=`aws rds describe-db-instances \
    --db-instance-identifier rds-glue-mask-pii \
    --region $AWSREGION | jq -r '.DBInstances[0]'`

read DBENDP DBPORT < <(echo $(echo $RDSPGINSTANCE | jq -r '.Endpoint.Address, .Endpoint.Port'))

read DBUSER < <(echo $(echo $RDSPGINSTANCE | jq -r '.MasterUsername'))
read DBNAME < <(echo $(echo $RDSPGINSTANCE | jq -r '.DBName'))

psql --host=$DBENDP --port=$DBPORT --username=$DBUSER --password --dbname=$DBNAME

