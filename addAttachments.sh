#! /bin/bash

issue_key="TEST-1"

curl -s -i -X POST \
     -H "Authorization:Basic c2hhbnRhbnVkMzkwQGdtYWlsLmNvbTo2YUpLV1VLTzN0bkR6SUZKNE5BRDdBNDE=" \
     -H "X-Atlassian-Token:no-check" \
     -F "file=@C:/Windows/System32/config/systemprofile/AppData/Local/Jenkins/.jenkins/jobs/jenkins-pipeline-cucumber-example/branches/feature-test-pipeline-cucumber/builds/2/cucumber-html-reports/report-feature_3809222109.html" \
     'https://shantanu391.atlassian.net/rest/api/3/issue/'$issue_key'/attachments'
