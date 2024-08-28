# jasper-report

This is study project with jasper in Springboot.



## Project Run

```sh
chmod +x mvnw
./mvnw spring-boot:run
```

### maven打包

```sh
./mvnw clean package '-Dmaven.test.skip=true'

```

### Docker构建并启动

```sh
docker-compose up --build

```
### Docker后台启动

```sh
docker-compose up -d

```