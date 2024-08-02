# Copy and scrub PII between Amazon RDS databases using visual ETL jobs in AWS Glue Studio

This repository is an accompaniment to the blog post __Copy and scrub PII between Amazon RDS databases using visual ETL jobs in AWS Glue Studio__.

This directory contains [AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html) templates to help you complete the **Prerequisites** highlighted in the blog post. 


## Artifacts Overview


- **`cf-prerequisites.yml`**: This template provisions AWS components in source, AWS Glue and target accounts as per the Prerequisites in the blog post. 


- **`cf_aws_cloud9_ssm_roles.yml`**: 
This AWS CloudFormation template creates the AWS IAM roles that enable [AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/what-is-systems-manager.html) to manage the EC2 instance that backs the Amazon Cloud9 environment.

> [!IMPORTANT]
> You will need `cf_aws_cloud9_ssm_roles.yml` AWS CloudFormation template **only if** you have **not** previously provisioned an Amazon Cloud9 environment on the source and/or target accounts.


Refer to main [README](../README.md) file for instructions on how to leverage these AWS CloudFormation templates.


## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.



