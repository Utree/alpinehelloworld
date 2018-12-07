# Cloud9 on HerokuのDockerfile
Heroku上にCloud9をデプロイするためのDockerfileです

## 使い方
Dockerfileの18行目は適宜変更してください
```
$ heroku container:login
$ git clone https://github.com/Utree/alpinehelloworld.git
$ heroku create
$ cd alpinehelloworld
$ heroku container:push web -a アプリ名
$ heroku container:release web -a アプリ名
$ heroku open -a アプリ名
```

## オプション一覧
```
--settings       Settings file to use
--help           Show command line options.
-t               Start in test mode
-k               Kill tmux server in test mode
-b               Start the bridge server - to receive commands from the cli  [default: false]
-w               Workspace directory
--port           Port
--debug          Turn debugging on
--listen         IP address of the server
--readonly       Run in read only mode
--packed         Whether to use the packed version.
--auth           Basic Auth username:password
--collab         Whether to enable collab.
--no-cache       Don't use the cached version of CSS
```

参考: [Cloud9 coreのリポジトリ](https://github.com/c9/core)
