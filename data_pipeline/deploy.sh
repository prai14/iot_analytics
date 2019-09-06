#!/usr/bin/env bash

AWS_PROFILE=default
AWS_DEFAULT_REGION=us-east-2
S3_CODE_BUCKET=iot-bucket-20190805
export AWS_PROFILE
export AWS_DEFAULT_REGION

npm install --prefix ./analytics-transform --cwd ./analytics-transform &&
sam build &&
sam package --template-file template.yaml --output-template-file packaged.yaml --s3-bucket ${S3_CODE_BUCKET} &&
sam deploy --template-file ./packaged.yaml --stack-name AnalyticalPipeline --capabilities CAPABILITY_IAM