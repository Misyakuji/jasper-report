# jasper-report

This is study project with jasper in Springboot.



## 环境准备
- 配置jdk17环境变量
- 配置docker环境
- 配置maven
```shell
# 赋予可执行权限
chmod +x mvnw
# 检证
./mvnw -v
```


### 运行
```shell
./mvnw spring-boot:run
```

### maven打包
```shell
./mvnw clean package '-Dmaven.test.skip=true'
```

### Docker构建并启动
```shell
docker-compose up --build
```

### Docker后台启动
```shell
docker-compose up -d
```