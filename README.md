# EXAM

## 一、项目简介

​		该项目是一个JavaWeb的在线考试系统，用户可以注册、登录、在线答题、查看历史记录。目前，只有单选题，日后有时间有精力还可以扩张出多选题，简答题……（该项目是阶段学习的成果，功能比较单一）

## 二、成员分工

### 登录 （陈 LinYiJing26 id:ccc、秦 resposiii id:qqq）
1.教师和学生 登录/改密/注册
2.管理员 登录/改密 （主）

### 学生 （傅 josartfu17 id:fff）
1.个人信息管理 （主）
**2.考试**
3.查询成绩

![学生用例图](https://linyijing26.github.io/EXAM/images_useCaseDiagram/用例图_学生.PNG)

### 教师 （孙 SheldorKop id:yabaiyabaiyabai）
1.个人信息管理 （主）
2.试卷管理
3.查询成绩

![教师用例图](https://linyijing26.github.io/EXAM/images_useCaseDiagram/用例图_教师.PNG)

### 管理员 （许 Darrenreally id:xxx）
1.信息管理 （主）
2.试卷管理
3.查询成绩

![管理员用例图](https://linyijing26.github.io/EXAM/images_useCaseDiagram/用例图_管理员.PNG)

## 三、所用技术

开发工具：IntelliJ IDEA 2020.1 x64、GitHub Desktop、MySQL Workbench等

###### 工具
1.GitHub Desktop https://desktop.github.com/
2.IntelliJ IDEA 2020.1 x64 https://www.jetbrains.com/idea/download/
3.MySQL 5.7 https://www.mysql.com/
4.MySQL Workbench https://dev.mysql.com/downloads/workbench/
5.apache Tomcat 9.0.20 http://tomcat.apache.org/

操作系统：windows10

所用语言：Java

前台框架：Bootstrap

后台框架：Spring Data Jpa、Spring Boot 、Mybatis （参考 https://www.cnblogs.com/chenglc/p/11226693.html）

数据库：MySQL 5.7

## 四、实现功能：

1. 用户前台注册
2. 教师前台登录，添加考试,添加题目，发布考试
3. 考生登录前台参加考试，交卷
4. 系统自动比对答案
5. 考生可以在考试历史查看成绩
6. 管理员包含教师所有功能，且有对人员、考试等增删去留的高级权限

## 五、数据库表

### 1.Student

| 字段名          | 类型        | 是否为主键  | 是否为空 | 描述     |
| --------------- | ----------- | ---------- | -------- | ------- |
| studentID       | int(50) | 是         | 否       | 主键ID   |
| studentName     | varchar(20) | 否         | 否       | 姓名     |
| gender             | varchar(20)         | 否         | 否       | 性别     |
| cardID          | varchar(20) | 否         | 否       | 身份证号  |
| studentPassword | varchar(50) | 否         | 否       | 密码     |

### 2.Teacher

| 字段名      | 类型          | 是否为主键  | 是否为空 | 描述   |
| ----------- | ------------- | ---------- | -------- | ------ |
| teacherID   | int           | 是         | 否       | 主键ID |
| teacherName | varchar(50)   | 否         | 否       | 姓名   |
| gender         | varchar(20)           | 否         | 否       | 性别   |
| Password    | varchar(50)   | 否         | 否       | 密码   |

### 3.Administrator

| 字段名      | 类型        | 是否为主键  | 是否为空 | 描述   |
| ----------- | ----------- | ---------- | -------- | ------ |
| managerID   | int         | 是         | 否       | 主键ID |
| managerName | varchar(50) | 否         | 否       | 姓名   |
| password    | varchar(20) | 否         | 否       | 密码   |

### 4、Questions

| 字段名  | 类型        | 是否为主键 | 是否为空  | 描述   |
| ------- | ----------- | ---------- | -------- | ----- |
| Id      | int         | 是         | 否       | 主键ID |
| Subject | varchar(50) | 否         | 否       | 科目   |
| Chart   | varchar(50) | 否         | 否       | 章节   |
| Type    | varchar(50) | 否         | 否       | 类型   |
| ans1    | varchar(50) | 否         | 否       | A选项  |
| ans2    | varchar(50) | 否         | 否       | B选项  |
| ans3    | varchar(50) | 否         | 否       | C选项  |
| ans4    | varchar(50) | 否         | 否       | D选项  |
| answer  | varchar(50) | 否         | 否       | 答案   |
| public  | int         | 否         | 否       | 用户名 |

### 5.Demand

| 字段名           | 类型        | 是否为主键  | 是否为空 | 描述      |
| ---------------- | ----------- | ---------- | -------- | -------- |
| cardID           | varchar(50) | 是         | 否       | 主键ID    |
| studentID        | int         | 否         | 否       | 学号      |
| studentName      | varchar(50) | 否         | 否       | 姓名      |
| objectlvesScore  | int         | 否         | 否       | 客观题分数 |
| subjectlvesScore | int         | 否         | 否       | 主观题分数 |
| TotalScore       | float       | 否         | 否       | 总分       |

### 6.Affiche

| 字段名   | 类型        | 是否为主键 | 是否为空 | 描述   |
| -------- | ----------- | ---------- | -------- | ------ |
| id      | int         | 是         | 否       | 主键ID |
| title   | varchar(50) | 否         | 否       | 标题   |

---

#### 数据库初始化语句
CREATE DATABASE EXAM;
USE EXAM;
>CREATE TABLE Student
(studentID int(50) primary key not null,studentName varchar(50) not null,gender int not null,cardID varchar(50) not null,studentPassword varchar(50) not null);
>CREATE TABLE Teacher
(teacharID int auto_increment primary key not null,teacherName varchar(50) not null,gender varchar(20) not null,Password varchar(50) not null);
>CREATE TABLE Administrator
(managerID int auto_increment primary key not null,managerName varchar(50) not null,password varchar(20) not null);
>CREATE TABLE Questions
(id int auto_increment primary key not null,subject varchar(50) not null,chart varchar(50) not null,title varchar(50) not null,type varchar(50) not null,ans1 varchar(50) not null,ans2 varchar(50) not null,ans3 varchar(50) not null,ans4 varchar(50) not null,answer varchar(50) not null,public int not null);
>CREATE TABLE Demand
(cardID varchar(50) not null,studentID int not null,studentName varchar(50) not null,objectlvesScore int not null,subjectlvesScore int not null,totalScore float not null);
>CREATE TABLE Affiche
(id int not null,title varchar(50) not null);

---

*ccc* 4.15
JDBC方式java连接mysql

>详细步骤说明参考 https://blog.csdn.net/hju22/article/details/87364956?utm_source=app

>驱动包/jar包下载 https://cdn.mysql.com//Downloads/Connector-J/mysql-connector-java-8.0.19.zip https://dev.mysql.com/downloads/file/?id=492426

>报错参考 https://www.cnblogs.com/yongdongma/p/9911393.html 

>>1.修改URL：`jdbc:mysql://localhost:3306/DatabaseName?useUnicode=true&amp;characterEncoding=utf-8` -> `jdbc:mysql://localhost:3306/DatabaseName?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT` 

>>2.修改驱动：`Class.forName("com.mysql.jdbc.Driver");` -> `Class.forName("com.mysql.cj.jdbc.Driver");`

---

*ccc* 4.15
修改student层
>student属性名规范（同时修改了创建数据库的Create Database.sql文件以及README.md文件）
>Login和Register的逻辑重写（导致注册需要更多要求）

---

*ccc* 4.16
更多的bug了
>Login和Register的逻辑重写（导致更多bug。。。）

---

*ccc* 4.16
>对项目描述更详细的README文档

---

*yabaiyabaiyabai* 4.17
>添加了三个系统的用例图

---

