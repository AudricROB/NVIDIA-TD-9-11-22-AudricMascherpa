# configure logs

Delete all lines after the 20th :
```shell
echo "$(tail -20 /var/log/dump-mysql.log)" > /var/log/dump-mysql.log
```
<br />

Control the maximum file size you can use :
```shell
ulimit -f $((TailleEnMB*1024))
```
