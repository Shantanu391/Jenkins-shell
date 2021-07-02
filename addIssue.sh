#! /bin/bash

issuetype_id="10002"
project_key="TEST"
description="This is a desction of the issue"
summary="Test issue created from a shell script"

template='{
  "fields": {
    "summary": "%s",
    "issuetype": {
      "id": "%s"
    },
    "project": {
      "key": "%s"
    },
    
    "description": {
      "type": "doc",
      "version": 1,
      "content": [
        {
          "type": "paragraph",
          "content": [
            {
              "text": "%s",
              "type": "text"
            }
          ]
        }
      ]
    }
  }
}'

json_final=$(printf "$template" \
		    "$summary" \
		    "$issuetype_id" \
		    "$project_key"  \
		    "$description")

curl -i -X POST \
	  -H "Authorization:Basic c2hhbnRhbnVkMzkwQGdtYWlsLmNvbTo2YUpLV1VLTzN0bkR6SUZKNE5BRDdBNDE=" \
	  -H "Content-Type:application/json" \
	  -H "X-Atlassian-Token:no-check" \
	  "https://shantanu391.atlassian.net/rest/api/3/issue/" \
	  -d \
	  "$json_final"
