# jasper-report

This is study project with jasper in Springboot.



## Project Setup

```sh
chmod +x mvnw
./mvnw spring-boot:run
```

### Project Setup in Docker

```sh

./mvnw clean package '-Dmaven.test.skip=true' && docker-compose up --build

#or

./mvnw clean package '-Dmaven.test.skip=true' && docker-compose up --d
```
