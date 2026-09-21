#!/bin/bash

FILE=$1
BUCKET="daws3simple-$(date +%Y%m%d)"

# Verifica se o bucket já existe
if aws s3api head-bucket --bucket "$BUCKET" 2>/dev/null; then
  echo "Bucket já existe, seguindo..."
else
  echo "Criando bucket $BUCKET..."
  aws s3api create-bucket --bucket "$BUCKET"

  # Habilita ACLs: define que o dono do objeto é quem fez o upload
  aws s3api put-bucket-ownership-controls \
    --bucket "$BUCKET" \
    --ownership-controls 'Rules=[{ObjectOwnership=BucketOwnerPreferred}]'

  # Remove o bloqueio de acesso público para que as ACLs funcionem
  aws s3api put-public-access-block \
    --bucket "$BUCKET" \
    --public-access-block-configuration \
      "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"
fi

# Faz o upload do arquivo com ACL de leitura pública
aws s3 cp "$FILE" "s3://$BUCKET/$FILE" --acl public-read

# Gera e exibe a URL pública
echo "URL pública: https://$BUCKET.s3.amazonaws.com/$FILE"