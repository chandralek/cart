# CART Service

This service is a `NodeJS` service, So we need **NodeJS** to be installed .

1. Install NodeJS

```
# curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/nodejs/install.sh | bash 
```

2. As per standards of any realtime application we do not run any service as root user. Hence we need to create one user for this application and we need to start this service with a normal user which we created.

```
# useradd cart
```

3. Download the code with `cart` user and install dependencies

**Use Git Clone**

```
$ npm install
```

4. Need to import cart service to the system, To manage with `systemctl`.

```
# mkdir -p /var/log/robo-shop/
# cp 
```