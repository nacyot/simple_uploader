# Simple Image Upload Server (simple_uploader)

* Only support S3
* Simple API
  * GET /
  * GET /ping
  * POST /upload

## Environment Variable

* AWS_ACCESS_KEY
* AWS_SECRET_KEY
* AWS_BUCKET
* AWS_REGION (ex: ap-northeast-1)
* SIMPLE_UPLOADER_HOST (ex: 0.0.0.0)
* SIMPLE_UPLOADER_PORT (ex: 80)

## Installation

```
$ gem install simple_uploader
```

## Run

```
$ simple_uploader
```

