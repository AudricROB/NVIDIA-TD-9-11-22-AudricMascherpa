# Service Setup :

The service file stores the name, description, configuration file location, commands to use to start or stop the service.
On the side of the socket configuration file, there is the name of the associated service and the listening port.

to create a service, start with:
```shell
$ sudo touch /ect/systemd/system/<filename>.service
```
