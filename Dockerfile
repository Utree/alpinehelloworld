#kdelfourさんのcloud9-dockerを拝借します
FROM kdelfour/cloud9-docker

# docker上のコンテナにcloud9をインストール
RUN /cloud9/scripts/install-sdk.sh

# PATHの設定 これがないとターミナルが使えない
RUN C9_DIR=$HOME/.c9
RUN PATH="$C9_DIR/node/bin/:$C9_DIR/node_modules/.bin:$PATH"
RUN cd $C9_DIR
RUN npm install pty.js

# ワーキングディレクトリの設定
RUN mkdir /cloud9/workspace

# アプリを実行します。
# $PORT は herokuで自動的に設定されています
CMD node server.js --port $PORT --listen 0.0.0.0 --auth name:pass -w /cloud9/workspace
