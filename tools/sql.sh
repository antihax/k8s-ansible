#!/bin/sh
kubectl run sql-client --image bitnami/mariadb  --restart='Never' -it --rm -nstorage \
  --env="MYSQL_PWD=$(kubectl get secret --namespace storage sql-auth -o jsonpath="{.data.mariadb-root-password}" | base64 --decode)" \
  --command -- mysql -uroot --host=sql-mariadb