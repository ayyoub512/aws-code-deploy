```sh
zip revision.zip appspec.yml index.html restart-app.sh update-app.sh
```

```sh
aws s3api create-bucket \
  --bucket ayyoub-code-deploy-app-src \
  --region ca-central-1 \
  --create-bucket-configuration LocationConstraint=ca-central-1
```

```sh
aws s3 cp revision.zip s3://ayyoub-code-deploy-app-src/revisions/v2.zip
```
