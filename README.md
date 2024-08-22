# 概要
`docker`+`apache`+`passenger`+`rails`の構成で環境構築を行う。

# コマンド
`Apache`サーバーを起動
```sh
service apache2 start
```

`Apache`サーバーを停止
```sh
service apache2 stop
```

`Apache`サーバーを再起動する
```sh
service apache2 restart
```

`passenger`の確認
```sh
passenger-status
```

`passenger`を使う為の設定値を出力
```sh
passenger-install-apache2-module --snippet
```

# 参考資料
## 環境構築関連
- [Docker Rails + Reactの本番環境構築(ubuntu + Apache + rails + React + MySQL)](https://qiita.com/NNKK1234/items/bcd88e030403215348a8)
- [Ruby on Railsアプリが動くApache Passenger Postgresql環境をdockerでつくる](https://qiita.com/itagakishintaro/items/7bad20470f7942c116c4)
- [Rails+Passenger+Debian](https://qiita.com/ryokubozono/items/e9451e88f7ab5f7c11ca)

## apache関連
- [dockerで構築したapacheでHeader関係の関数が使えない件の対応](https://blog.websandbag.com/entry/2017/11/04/212907)
- [Docker で Apache .htaccess の挙動を確認してみる](https://qiita.com/mochizukikotaro/items/57c429d5fd6ab8725868)
- [.htaccess 効いてるか 確認する方法](https://it-afi.com/apache/htaccess-%E5%8A%B9%E3%81%84%E3%81%A6%E3%82%8B%E3%81%8B-%E7%A2%BA%E8%AA%8D%E3%81%99%E3%82%8B%E6%96%B9%E6%B3%95/)
- [dockerで構築したapacheでHeader関係の関数が使えない件の対応](https://blog.websandbag.com/entry/2017/11/04/212907)
- [htaccessがどうしても効かないときの対処法】Apacheのデフォルト設定をチェック！](https://takabus.com/tips/2661/)
- [UbuntuにてApacheのモジュールを有効化する](https://www.t3a.jp/blog/infrastructure/apache2-mod-add/)
- [apache2のAH00558への対応](https://note.com/kazuyama4vrc/n/n3953be34b70d)

## Phusion passenger関連
- [[Phusion passenger公式]Configuration reference](https://www.phusionpassenger.com/library/config/apache/reference/#configuration-reference-for-passenger-+-apache)
- [Phusion passenger Security check update holding connection](https://stackoverflow.com/questions/60414033/phusion-passenger-security-check-update-holding-connection)
- [PassengerDisableSecurityUpdateCheck](https://www.phusionpassenger.com/library/config/apache/reference/#passengerdisablesecurityupdatecheck)
- [Phusion Passenger: permission denied で ruby を実行できない問題](https://tkrd.hatenablog.com/entry/2017/07/18/121511)
- [PassengerDefaultUser](https://www.phusionpassenger.com/library/config/apache/reference/#passengerdefaultuser)
- [Passenger ユーザースイッチングを利用できる要件](https://ameblo.jp/hbnizm31/entry-11708905395.html)
- [Passenger はどのユーザーアカウントで動くのか？](https://yuumi3.hatenablog.com/entry/20090312/1236871330)
