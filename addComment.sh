#! /bin/bash

issuekey="TEST-3"


curl -i -X POST \
	  -H "Authorization:Basic c2hhbnRhbnVkMzkwQGdtYWlsLmNvbTo2YUpLV1VLTzN0bkR6SUZKNE5BRDdBNDE=" \
	  -H "Content-Type:application/json" \
	  -H "X-Atlassian-Token:no-check" \
	  "https://shantanu391.atlassian.net/rest/api/3/issue/$issuekey/comment" \
	  -d \
	  '{
    "body": {
        "type": "doc",
        "version": 1,
        "content": [
          {
            "type": "paragraph",
            "content": [
              {
                "text": "build failure in '"$1"'" ,
                "type": "text"
              }
            ]
          }
        ]
      }
    }'
