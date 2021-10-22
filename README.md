# 移动端饱了么外卖系统

## 项目结构

### 后端项目bleme-backend—基于Java-Springboot

**技术选型**：

- Maven 3.8.1
- Java 1.8.0_291
- Springboot 2.5.5
- Mybatis-Plus 3.4.3.4
- Mysql 8.0.23
- Lombok

### 前端项目bleme-app—基于Vue

**技术选型**：

- Vue 2
- Vuex
- Vue-router
- Vant-UI
- axios

## 快速开始

### 数据库准备

1. 安装 Mysql 8
2. 建库 `bleme`
3. 执行根目录下的 sql 文件 `bleme.sql`

### 后端项目启动

1. 导入 `bleme-backend` 项目进入 IDEA

2. 修改 `src/main/resources/application.yml` 配置文件

   ```yml
   server:
     port: 8081 # 后端服务器端口
   spring:
     datasource:
       driver-class-name: # 数据库驱动
       url: # 数据库Url
       username: # 用户名
       password: # 密码
   mybatis-plus:
     mapper-locations: classpath*:/mapper/**/*.xml
     configuration:
       log-impl: org.apache.ibatis.logging.stdout.StdOutImpl
   ```

3. 编译项目，运行 `src\main\java\com\babyly\bleme` 下的启动类 `BlemeBackendApplication.java`

4. 无报错，启动成功

5. 后端访问地址 `localhost:8081`

### 前端项目启动

1. 进入 `bleme-app` 文件夹
2. 在此处打开 `cmd` 或 `powershell`
3. 执行 `yarn install` 命令下载并关联依赖
4. 执行 `yarn serve` 命令运行前端脚手架
5. 前端访问地址 `localhost:8080`





