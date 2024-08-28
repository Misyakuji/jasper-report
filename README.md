# jasper-report

This is study project with jasper in Springboot.



## Project Run

```sh
chmod +x mvnw
./mvnw spring-boot:run
```

### Project build in Docker

```sh
./mvnw clean package '-Dmaven.test.skip=true' && docker-compose up --build

```

### Project Setup in Docker

```sh
./mvnw clean package '-Dmaven.test.skip=true' && docker-compose up -d

```
