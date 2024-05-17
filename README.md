# Terraform Backend AWS Resources

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white) ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

This repository contains a CloudFormation template and a shell script to set up a Terraform backend using AWS S3 and DynamoDB.

## Files
- `template.yaml`: AWS CloudFormation template to create an S3 bucket and a DynamoDB table.
- `deploy.sh`: Shell script to deploy the CloudFormation stack and output the IDs of the created resources.

## Usage
1. Ensure you have an AWS account and AWS credentials configured on your machine.
2. Make the deploy script executable:
    ```bash
    chmod +x deploy.sh
    ```
3. Run the deploy script with your AWS SSO profile name:
    ```bash
    ./deploy.sh AWS_SSO_PROFILE_NAME
    ```


## Deletion
To delete the created resources, run: 
```bash
aws cloudformation delete-stack --stack-name terraform-backend --profile AWS_SSO_PROFILE_NAME
```

## License
This project is open source and available under the MIT License.
