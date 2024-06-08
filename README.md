### 使用nodemon监听文件变化,重启服务

- nodemon.json
```json
{
    "ignore": [
        "dist",
        ".git",
        ".svn",
        ".dart_toool/**"
    ],
    "verbose": true,
    "env": {
        "NODE_ENV": "development"
    },
    "watch": [
        "./bin/*.dart",
        "./lib/*.dart"
    ],
    "quiet": true,
    "events": {
        "restart": "bash .sh/nodemon_watch.sh"
    }
}
```

- package.json

```json
{
  "scripts": {
    "start": "npm run watch",
    "watch": "nodemon --exec \"dart\" bin/cli.dart"
  },
}
```

- 运行命令

```bash
npm start
```
