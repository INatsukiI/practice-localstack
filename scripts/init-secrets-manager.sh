#!/bin/bash

echo "Creating Secrets Manager secret..."

aws --endpoint-url=http://localstack:4566 secretsmanager create-secret --name sample-secret
aws --endpoint-url=http://localstack:4566 secretsmanager put-secret-value --secret-id sample-secret --secret-string "{\"SAMPLE_TOKEN\": \"${SAMPLE_TOKEN}\"}"

echo "Secret created successfully!"