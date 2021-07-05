#! /bin/bash

curl --request POST \
  --url 'https://shantanu391.atlassian.net/rest/api/3/issue/TEST-1/remotelink' \
  -H "Authorization:Basic c2hhbnRhbnVkMzkwQGdtYWlsLmNvbTo2YUpLV1VLTzN0bkR6SUZKNE5BRDdBNDE=" \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
            "object": {
            "url":"http://localhost:8081/job/jenkins-pipeline-cucumber-example/job/feature-test-pipeline-cucumber/2/cucumber-html-reports/overview-features.html",
            "title":"bdd reports"
            }
     }'
