use strict;
use warnings;

# 変数：データ（スカラー値、配列、ハッシュ）につけるラベル

  # スカラー（単一の値：数値、文字列）変数：＄

    # my $msg;
    # $msg = "hello wsorld\n";

  # print $msg;

    # my $x = 10;
    # my $y = 10.7;
    # my $z = 123_235_235;

# # 演算子
  # # =
  # # + - / * % **

    # my $xx = 10 * 10;
    # my $yy = 10 % 3;
    # my $zz = 2 ** 3;

  # # ++ --
  # $x++;
  # $x--;

  # # + =

    # $x += 5;

    # print $x;

# "" と '' 違い

  # my $name = "tom";
  # my $a = "hello, $name\n"; # 特殊文字（\n, \t）などが使える。変数展開がされる
  # my $b = 'hello';

    # print $a;

  # # . 文字連結 x ＊と同じ
    # # print "hello" . "world";
    # print "hello" x 5;

# 配列変数
  # my @sales = (150, 200, 300); #配列変数は@を先頭につける
  # # my @clolors = ('red', 'green'); #文字列も可能
  # my @mixed = (150, 'red', 1.5); #混合も可能

    # my @inc = (1..100); #範囲演算子
    # my @clolors = qw(red green); #文字列の配列はqwでも可能

    # print @clolors;

  # 配列変数：＠ : スカラー値のリスト
    # my @sales = (300, 150, 200);

    # print @sales[1]; # @変数名[指定したい順番]

    # print @sales[-1]; # -も可能

    # print @sales[0..1]; # 範囲演算子で指定することも可能

  # @sales $#sales: 末尾の添字

    # print @sales[1..$#sales];

# ハッシュ変数 : キーと値 : %
  # phpでは配列変数とハッシュ変数まとめてできたが、perlでは分ける必要がある

    # my %sales = ("tanaka"=>300, "suzuki"=>150, "ohira"=>200);

    # print $sales{"tanaka"}; # 取り出したい値がスカラー値の時は$になおす

# 条件分岐と比較演算子

    # my $score = 85;
    # my $name = "Luke";

    # if($score >= 80) && ($score >= 80) {
    #   print("ok!")
    # }

    # if(($name eq "Luke") && ($score >= 80)) {
    #   print("I am your father!!")
    # }

  # 数値の比較演算子：
    # <  〜より小さい
    # >  〜より大きい
    # <= 〜以下
    # >= 〜以上
    # == 同じ
    # != 否定

  # 文字列の比較演算子: 0-9 < A-Z < a-z
    # eq が 同じ
    # ne が 否定
    # gt が 〜より大きい
    # lt が 〜より小さい
    # ge が 〜以上
    # le が 〜以下

  # 論理演算子
    # && (AND)
    # || (OR)
    # !  (NOT)

# 条件分岐２

  # my $score = 35;

  # if ($score >= 80) {
  #   print("ok!!");
  # } elsif ($score >= 40) {
  #   print("not ok...");
  # } else {
  #   print("take the test again!")
  # }

# if文の後置
  # my $score = 85;
  # print("OK!") if ($score >= 80);
# 三項演算子 if ~ else ~
  # （条件）？ 値１ : 値２;

    # my $a = 10;
    # my $b = 20;

    # my $max = ($a > $b) ? $a : $b;

    # print $max;

# ループ処理
  # while文

    # my $i = 0;

    # while ($i < 10) {
    #   print "i = $i\n";
    #   $i++;
    # }

  # for文

    # for (my $i = 0; $i < 10; $i++) {
    #   print "i = $i\n";
    # }

  # foreach文(forでも可)
  #   my @colors = qw(red green blue orange pink);

  #   foreach my $color (@colors){
  #     print "color = $color\n";
  #   }
  # # 省略することも可（特殊変数 $_;）
  #   for (@colors){
  #     print "color = $_\n";
  #   }

  # foreach文ハッシュループ

    # my %sales = ("tanaka"=>150, "suzuki"=>300, "ohira"=>200);

    # foreach my $key (keys(%sales)) {
    #   print "sales for $key is $sales{$key}\n";
    # }
  # 短縮系

    # for (keys %sales) {
    #   print "sales for $_ is $sales{$_}\n";
    # }

# ファイルの入出力
    # (読み込んだ内容を$inに格納, 読み込むときに < を使う, 読み込むファイル名) or die(エラーした時の処理)
    #   open(my $in, "<", "test.dat") or die("could not open file.");

    #   # while (<$in>) {
    #   #   print $_;
    #   # }

    # # 書き込むときは > を使う
    #   open(my $out, ">", "test.dat") or die("could not open file.");

    #       while (<$in>) {
    #     print $out $_;
    #   }

    #   close($in);
    #   close($out);
  # 正規表現
    # open(my $in, "<", "test.dat") or die("could not open file.");
    # while (<$in>) {
    #   # 置換する方法
    #   # 読み込んだファイル =~ s/マッチさせたいパターン/書き換えたいパターン/
    #   $_ =~ s/abc/ABC/;
    #   if ($_ =~ /[a-z]/){
    #     print $_;
    #   }
    #   # 省略することも可能
    #   s/abc/ABC/;
    #   if (/[a-z]/){
    #     print $_;
    #   }
    # }
    # close($in);
# サブルーチン（ユーザーが定義する関数（機能、メソッド））
  # sub 名前 {処理内容}
  # sub max {
  #   my $max = $_[0];
  #   if ($_[1] > $max) {
  #     $max = $_[1];
  #   }
  #   return $max;
  # }

  # print max(12,8);
# サブルーチンの改良

  sub max {
    my $max = shift(@_);
    foreach (@_) {
      $max = $_ if $_ > $max;
    }
    $max;
  }

  print max(12, 8, 100, 23, 38);

