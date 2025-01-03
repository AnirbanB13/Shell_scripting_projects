#!/bin/bash

##################
# Author: Anirban Banerjee
# Date: 3rd, Jan 2025
# version: v1
#
# This script will report the AWS resource usage
#################

# AWS S3
# AWS EC2
# AWS lambda
# AWS IAM Users

set -x

# List s3 buckets
echo "Print List of s3 buckets"
aws s3 ls >> resourceTracker.txt 

# list EC2 instances
echo "Print List of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker.txt 

# List aws Lambda functions
echo "Print List of aws lambda functions" 
aws lambda list-functions >> resourceTracker.txt 

# List IAM users
echo "Print List of IAM users"
aws iam list-users | jq '.Users[].UserName' >> resourceTracker.txt
