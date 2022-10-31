#!/bin/sh
export MYSQL_PWD=$(kubectl get secret --namespace storage sql-auth -o jsonpath="{.data.mariadb-root-password}" | base64 --decode)
kubectl run sql-client --image thekevjames/mysqltuner --restart='Never' -it --rm -nstorage -- /mysqltuner.pl --user root --pass $MYSQL_PWD --host sql-mariadb --forcemem 24000