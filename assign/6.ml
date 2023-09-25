以下のようなモジュールを作成せよ

ただし、1つのファイル内、もしくはREPLにシグネチャとストラクチャーの両方を書くこと

モジュール名はIniad
引数が()で文字列”Information Networking for Innovation and Design”を返す関数isを定義する
関数isはシグネチャで公開する

module type INIAD = sig
  val is : unit -> string
end

module Iniad : INIAD = struct
  let is () = "Information Networking for Innovation and Design"
end