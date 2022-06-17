# imall
### 简介
imall 是一个本地生活服务类商城，包括微信小程序、商家后台、服务端。

### 技术选型

前端技术：

| 技术 | 说明 | 相关文档 |
|---|---|---|
| vue3 | 前端框架 | https://v3.cn.vuejs.org |
| vue-router | 页面路由 | https://next.router.vuejs.org |
| axios | 网络请求库 | https://axios-http.com |
| vuex | 状态管理 | https://next.vuex.vuejs.org |
| element plus | 前端UI组件库 | https://element-plus.org |
| vant weapp | 微信小程序UI组件库 | https://vant-contrib.gitee.io/vant-weapp |

后端技术：

| 技术 | 说明 | 相关文档 |
|---|---|---|
| gin | Web框架 | https://gin-gonic.com |
| gorm | ORM框架 | https://gorm.io |
| jwt | 用户认证 | https://github.com/golang-jwt/jwt |
| captcha | 验证码生成器 | https://github.com/mojocn/base64Captcha |
| viper | 配置管理 | https://github.com/spf13/viper |
| redis | 缓存 | https://github.com/go-redis/redis |
| elasticsearch | 搜索引擎 | https://github.com/olivere/elastic |

### 项目结构
```
imall
  ├── app         // 微信小程序
  ├── demo        // 演示资源
  ├── server      // 服务端
  ├── web         // 商家后台
  ├── ...         // 其他
```
### 开发工具

本项目使用 Visual Studio Code、Navicat Premium、微信开发者工具等开发工具。

### 本地运行

**运行环境及最低版本：**

go(v1.17.1)、mysql(v8.0.28)、redis(v6.0.16)、elasticsearch(v7.14.0)、node(v14.13.1)、npm(v6.14.8)。

**项目代码下载：**
```
git clone https://github.com/zchengo/imall.git
```

**部署一：Go服务端（server）**

修改配置文件：配置文件位于 /server/config.yaml，请按实际情况进行修改

推荐使用 Goland 或 VSCode 打开 server 目录，在 Terminal(终端) 中，执行如下命令。
```
$ cd server
$ go mod tidy
$ go build -o server main.go (windows编译命令为 go build -o server.exe main.go )

# 运行二进制
$ ./server (windows运行命令为 server.exe)
```

**部署二：Web后台管理前端（web）**

推荐使用 WebStorm 或 VSCode 打开 web 目录，在 Terminal(终端) 中，执行如下命令。
```
$ cd web
$ npm install
$ npm run serve
```

成功启动后，即可通过浏览器访问：http://localhost:8080/#/login，用户名: admin 密码: 12345

**部署三：微信小程序（app）**

需要使用微信开发者工具打开 app 目录，在 Terminal(终端) 中，执行如下命令。
```
$ cd app 
$ npm install
```

在编译运行微信小程序之前，你需要进行以下设置：

在微信开发者工具右上角->【详情】->【本地设置】-> 选择【使用npm模块】和【不校验合法域名，web-view（业务域名）、TLS版本...】。最后，在微信开发者工具的工具栏->【工具】->【构建npm】。

**预览**

商家后台管理：

![运行结果1](https://github.com/zchengo/imall/blob/main/demo/result/web.jpg)

小程序商城：

![运行结果2](https://github.com/zchengo/imall/blob/main/demo/result/app.jpg)

### 使用说明

本商城系统使用MIT开源许可证，完全免费，请放心使用。

图片素材来源于网络，部分图标来源www.iconfont.cn，图片、图标仅供学习使用。
