# Gitee Pages 发布说明

## 1) 在 Gitee 创建仓库

- 建议仓库名: page-restore
- 仓库类型: 公开

## 2) 本地一键推送

在当前目录执行:

./deploy-gitee.sh https://gitee.com/<你的用户名>/<你的仓库名>.git master

## 3) 开启 Pages

- 进入仓库页面 -> 服务 -> Gitee Pages
- 选择分支: master
- 目录: /
- 点击启动

## 4) 访问地址

通常为:

https://<你的用户名>.gitee.io/<你的仓库名>/

如果要根路径直达主页，可使用:

https://<你的用户名>.gitee.io/<你的仓库名>/index.html
