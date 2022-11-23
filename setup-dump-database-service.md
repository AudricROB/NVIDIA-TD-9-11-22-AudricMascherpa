# Service Setup :

The service file stores the name, description, configuration file location, commands to use to start or stop the service.
On the side of the socket configuration file, there is the name of the associated service and the listening port.

Open or create the service if it does not exist :
```shell
sudo gedit dump-database.service
```
```shell
sudo gedit dump-database.timer
```
<br />

Start the service at system startup
```shell
sudo systemctl enable dump-database.service
```
```shell
sudo systemctl enable dump-database.timer
```
<br />

Start service :
```shell
sudo systemctl start dump-database.service
```
Stop the service
```shell
sudo systemctl stop dump-database.status
```