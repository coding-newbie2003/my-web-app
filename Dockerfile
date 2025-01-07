# PHPの公式イメージをベースに使用
FROM php:8.0-apache

# 作業ディレクトリを指定（コンテナ内で作業する場所）
WORKDIR /var/www/html

# 現在のローカルのファイルをコンテナ内にコピー
COPY . .

# コンテナのポート80を開放（Renderはポート80を使うため）
EXPOSE 80

# Apacheを起動し、PHPを使ってWebサーバーを立ち上げるコマンド
CMD ["apache2-foreground"]