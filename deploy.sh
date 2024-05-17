aws cloudformation deploy \
    --stack-name terraform-backend \
    --template-file backend.yaml \
    --profile $1

s3_bucket=$(aws cloudformation describe-stacks --profile $1 --stack terraform-backend --output text --query "Stacks[*].Outputs[?OutputKey=='S3Bucket'].OutputValue" | xargs)
dynamodb_table=$(aws cloudformation describe-stacks --profile $1 --stack terraform-backend --output text --query "Stacks[*].Outputs[?OutputKey=='DynamoDBTable'].OutputValue" | xargs)

echo
echo "S3 bucket: ${s3_bucket}"
echo "DynamoDB Table: ${dynamodb_table}"

# To run:
# $ ./deploy.sh AWS_SSO_PROFILE_NAME

# To delete:
# $ aws cloudformation delete-stack --stack-name terraform-backend --profile AWS_SSO_PROFILE_NAME