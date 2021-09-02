# ssm-envsubst

AWS EC2 Parameter Storeのパラメータから、envsubstを使いファイルへ環境変数を埋め込む

## Dependency

- Docker

## Example

事前にAWS EC2 Parameter Storeにパラメータを登録

```shell
aws ssm --region ap-northeast-1 put-parameter --name /PASSWORD --type SecureString --value <value>
```

.envファイルを作成する

```text:.env
AWS_ACCESS_KEY_ID=AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY=AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION=AWS_DEFAULT_REGION
```

in.txtを作成

```text:in.txt
password=$PASSWORD
```

実行

```shell
docker run --rm -i --env-file .env ghcr.io/swat9013/ssm-envsubst < in.txt > out.txt
```

```text:out.txt
password=<value>
```
