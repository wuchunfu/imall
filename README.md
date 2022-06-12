# imall
### 简介
imall 是一款本地生活服务类应用，致力于为中小型商家打造私域流量。

### 最近更新

**2022-06-11** 

**更新内容：** imall v1.0.0 正式开源！

### 技术选型

前端技术：

| 技术 | 说明 | 相关文档 |
|---|---|---|
| vue3 | 前端框架 | https://v3.cn.vuejs.org |
| vue-router | 页面路由 | https://next.router.vuejs.org |
| axios | 网络请求库 | https://axios-http.com |
| vuex | 状态管理 | https://next.vuex.vuejs.org |
| element plus | 前端UI组件库 | https://element-plus.org |

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

微信小程序技术：

| 技术 | 说明 | 相关文档 |
|---|---|---|
| vant weapp | UI组件库 | https://vant-contrib.gitee.io/vant-weapp |
| 微信小程序开发文档 | 官方文档 | https://developers.weixin.qq.com/miniprogram/dev/framework |

### 本地部署

运行环境：
| 环境 | 版本 |
|---|---|
| go | 1.17.x |
| mysql | 8.0.x |
| redis | 6.0.x |
| elasticsearch | 7.14.x |
| node.js | 14.13.x |
| npm | 6.14.x |

项目下载：
```
git clone https://github.com/zchengo/imall.git
```

**部署一：Go服务端（server）**

修改配置文件：

配置文件位于 /server/config.yaml，请按实际情况进行修改

初始化并运行：

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

成功启动后，即可通过浏览器访问：http://localhost:8080/#/login  

用户名: admin 密码: 12345

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
