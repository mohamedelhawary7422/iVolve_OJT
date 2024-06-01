creating s3 bucket:
![Screenshot 2024-06-01 232547](https://github.com/mohamedelhawary7422/iVolve_OJT/assets/167206716/88f71c0f-ab7b-4d4a-93cf-0d6aa9826a87)
the bucke-policy.json:
![image](https://github.com/mohamedelhawary7422/iVolve_OJT/assets/167206716/9850cca1-c2b0-4441-8741-0597b4767f88)
appling bucket policy:
aws s3api put-bucket-policy --bucket mh162024 --policy file://bucket-policy.json
enable versioning:
aws s3api put-bucket-versioning --bucket mh162024 --versioning-configuration Status=Enabled
create logging bucket:
aws s3api create-bucket --bucket mh162024-logs --region us-east-1
enable logging in the original bucket:
aws s3api put-bucket-logging --bucket mh162024 --bucket-logging-status '{
    "LoggingEnabled": {
        "TargetBucket": "mh162024-logs",
        "TargetPrefix": "mh162024-logs/"
    }
}'
upload file:
aws s3 cp ~/bucket-policy.json s3://mh162024/file.txt
download file:
aws s3 cp s3://mh162024/file.txt ~/bucket-policy.json

