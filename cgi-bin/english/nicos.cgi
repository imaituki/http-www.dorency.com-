#!/usr/bin/perl

##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2009 SUNFIRST.INC ALL RIGHTS RESERVED.
#
# ソフトウェア使用許諾契約
#
# [SITEUP-SYSTEM](以下[本ソフトウェア]と記載)に関する著作権等の知的財産権は、
# サンファースト株式会社(以下[弊社]と記載)に帰属し、
# 日本の著作権法その他関連して適用される法律等によって保護されています。
#
# [本ソフトウェア]は実行ファイルだけでなく、
# ユーザデータやヘルプも含む全ての構成ファイルを表します。
#
# お客様は、ソフトウェア使用許諾契約(以下[契約]と記載)の条項に従って、
# [本ソフトウェア]を日本国内で使用する、非独占的な権利を[契約]に基づき取得します。
#
# [契約]に明示的に許諾されている場合を除いて、
# [本ソフトウェア]の使用、全部又は一部を複製、改変等は出来ません。
# [契約]に明示的に許諾されている、[本ソフトウェア]を複製する場合には、
# [本ソフトウェア]に付されている著作権表示及び、その他の権利表示も同時に複製するものとします。
#
# [本ソフトウェア]及び関連資料に付されている、
# 著作権表示及びその他の権利表示を除去することは出来ません。
#
# [契約]が終了したときは、直ちに[本ソフトウェア]及びその全ての複製物並びに関連資料を
# 破棄するものとします。
#
# [弊社]及び、[本ソフトウェア]を配布する全ての者は、[契約]に同意をしていた場合でも、
# [本ソフトウェア]を個人利用・社内利用・営利目的・非営利目的を問わず、
# 全部又は一部を複製、改変等を行った場合の使用によって生じたあらゆる損害について、
# 如何なる責任も負いません。
# [弊社]及び、[本ソフトウェア]を配布する全ての者は、
# そのような損害が発生する可能性について、事前に知らされていた場合でも同様です。
#
# ※以上はインストールした際に表示される「ソフトウェア使用許諾契約書」を抜粋、追記したものです。
#
##################################################

##################################################
# ライブラリの読み込み。
##################################################

use KCatch;
require './pl/jcode.pl';

##################################################
# 基本設定情報。
##################################################

use vars qw($qu @in $key $val @qu %in %data @errorMsg);

#########################
# 1.初期設定
#########################

##################################################
# サブドメイン設定。（本番:'if',テスト:'test'）
##################################################

#my $sub_domain = "if";
my $sub_domain = "if";

##################################################
# 総合決済依頼画面呼び出しURL。(https://$sub_domain.digi-coin.com/MULTI/ControllerFirst.php?)
##################################################

my $next_url_data = "https://$sub_domain.digi-coin.com/MULTI/ControllerFirst.php?";

##################################################
# 呼び出しページID。(72)
##################################################

my $P8 = "72";

##################################################
# 商品種別ID。(11)
##################################################

my $P9 = "11";

##################################################
# 保持日数期間（1～50）。(30)
##################################################

my $P14 = "30";

##################################################
# カード利用フラグ(13バイト制限あり)。(1111111111111)
##################################################

my $P30 = "1111111010000";

##################################################
# 銀行利用フラグ(6バイト制限あり)。(111111)
##################################################

my $P31 = "111111";

##################################################
# コンビニ利用フラグ(9バイト制限あり)。(111111111)
##################################################

my $P32 = "111111110";

##################################################
# 電子マネー利用フラグ(3バイト制限あり)。(111)
##################################################

my $P33 = "011";

##################################################
# 引数取得
##################################################

sub GetPara{

	my($encode) = @_;

	my($method) = $ENV{'REQUEST_METHOD'};

	local($qu,@in,$key,$val);

	#日本語コード変換 jcode.pl 読み込み
	require './pl/jcode.pl' if $encode;

	#パラメタ取得
	if($method eq 'GET'){
		$qu = $ENV{'QUERY_STRING'};
	}elsif($method eq 'POST'){
		read(STDIN, $qu, $ENV{'CONTENT_LENGTH'});
	}

	local(@qu) = split(/&/,$qu);

	foreach(@qu){

		tr/+/ /;

		($key,$val) = split(/=/);

		$key =~ s/%([A-Fa-f0-9][A-Fa-f0-9])/pack('c', hex($1))/ge;

		$val =~ s/%([A-Fa-f0-9][A-Fa-f0-9])/pack('c', hex($1))/ge;

		$val =~ s/\r\n/\n/g;

		jcode'convert(*key, $encode) if ($encode);

		jcode'convert(*val, $encode) if ($encode);

		$in{$key} = $val;

	}

	#戻り値セット
	return *in;

}

##################################################
# 各種設定情報の取得。
##################################################

sub dataGet{

	my($file) = @_;

	#設定情報読み込み。
	open(IN,"$file");
	flock(IN,1);		#ファイルを読み出しロック。
	my @temp = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);

	return @temp;

}

##################################################
# メールアドレスチェック。
##################################################

sub check_email{

	my($mailadress) = @_;

	#メールアドレスにコンマ「,」が含まれていないか。
	if($mailadress =~ /\,/){
		push(@errorMsg,"入力エラーが発生しました。<br>メールアドレスにコンマ「\,」が含まれています。<br>");
	}

	#メールアドレスにアットマーク「@」が含まれているか。
	if($mailadress !~ /@/){
		push(@errorMsg,"入力エラーが発生しました。<br>メールアドレスにアットマーク「@」が含まれていません。<br>");
	}

	#メールアドレスに全角が含まれていないか。
	if($mailadress =~ /[^0-9a-zA-Z\.\-\_\@]/){
		push(@errorMsg,"入力エラーが発生しました。<br>メールアドレスに全角が含まれています。<br>");
	}

	#メールアドレスのドメイン書式が不正か。
	if($mailadress !~ /\.[a-zA-Z]{2,5}$/){
		push(@errorMsg,"入力エラーが発生しました。<br>メールアドレスを正しく入力して下さい。<br>");
	}

}

##################################################
# メールを送信。
##################################################

sub sendMail{

	my($sendmail_address,$address,$mailtext,$user_url) = @_;

	$sendmail_address = "/$sendmail_address";

	$subject ="NICOSエラー";
	
	#JISコード変換。
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailtext,'jis');
	#メールを送信。
	open(MAIL,"|$sendmail_address -t -f '$address'") || &error("メール送信に失敗しました");
	print MAIL "Message-Id:\n";
	print MAIL "To: $address\n";
	print MAIL "From: NICOS CGI\n";
	print MAIL "Subject: $subject\n";
	print MAIL "Content-type: text/plain;\n\n";
	print MAIL "$mailtext";
	print MAIL "\n";
	print MAIL "$user_url";
	close(MAIL);

}

sub sendMailSettlement{

	my($sendmail_address,$address,$mailtext) = @_;

	$sendmail_address = "/$sendmail_address";

	$subject ="NICOSクレジット決済システムご利用のお知らせ";
	
	#JISコード変換。
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailtext,'jis');

	#メールを送信。
	open(MAIL,"|$sendmail_address -t -f '$address'") || &error("メール送信に失敗しました");
	print MAIL "Message-Id:\n";
	print MAIL "To: $address\n";
	print MAIL "From: NICOS CGI\n";
	print MAIL "Subject: $subject\n";
	print MAIL "Content-type: text/plain;\n\n";
	print MAIL "$mailtext";
	close(MAIL);

}

#########################
# 2.ssl接続モジュールの判別を行う。
#########################

my $ssl_flg  = 0;

my $ssl_flg1 = "off";
my $ssl_flg2 = "off";
my $ssl_flg3 = "off";
my $ssl_flg4 = "off";

eval 'use Crypt::SSLeay;';
if(!$@){
	$ssl_flg1 = "on";
}

eval 'use LWP::UserAgent;';
if(!$@){
	$ssl_flg2 = "on";
}

eval 'use HTTP::Request;';
if(!$@){
	$ssl_flg3 = "on";
}

eval 'use HTTP::Request::Common qw(POST);';
if(!$@){
	$ssl_flg4 = "on";
}

if($ssl_flg1 eq "on" && $ssl_flg2 eq "on" && $ssl_flg3 eq "on" && $ssl_flg4 eq "on"){
	$ssl_flg = 1;
}

#########################
# 3.設定情報取得。
#########################

##################################################
# sendmail/CGIパーミッション情報取得。
##################################################

my @root = &dataGet("./root.ini");

my ($site_name,$site_folder,$ftp_address,$html_host,$cgi_host,$ftp_id,$ftp_pass,$html_address,$cgi_address,$perl,$sendmail,$imgdir,$page_pass,$rootdir,$html_auth,$cgi_dir_auth,$cgi_file_auth,$dat_file_auth,$csv_file_auth) = split(/,/,$root[0]);

undef(@root);

##################################################
# NOCOS設定情報取得。
##################################################

my @cartData = &dataGet("./page_design/story/cart/cart.dat");
my @cart     = split(/,/,$cartData[0]);

my $mailSettlement = $cart[0];		#決済情報送信先メールアドレス
my $cart_flg       = $cart[32];		#NICOS利用フラグ "on" or ""
my $P1             = $cart[33];		#加盟店ID
my $P2             = $cart[34];		#加盟店パスワード
my $P11            = "$cart[39]の商品";	#クレジット購入画面の表示会社名
my $numbering      = $cart[36];		#加盟店メンバーID採番区分
my $mail_adress    = $cart[40];		#エラー通知先アドレス

undef(@cartData);
undef(@cart);

my @low     = &dataGet("./page_design/story/cart/low.dat");

my @lowData = split(/,/,$low[0]);

my $lowData0 = $lowData[0];
my $lowData1 = $lowData[1];
my $lowData2 = $lowData[2];

$lowData0    =~ s/&#44;/,/g;
$lowData1    =~ s/&#44;/,/g;
$lowData2    =~ s/&#44;/,/g;

$lowData0    =~ s/<br>/\n/g;
$lowData1    =~ s/<br>/\n/g;
$lowData2    =~ s/<br>/\n/g;

##################################################
# 取得した加盟店パスワードの暗号化解除を行う。
# 解除方法：各1文字を各々XOR（排他的論理和の計算）を特定文字列（\x0c）で行う。
##################################################

my $len      = length($P2);		#設定パスワード文字数取得
my $char     = "\x0c";			#復元キー
my $tempData = "";			#テンポラリ変数

for (my $i = 0 ; $i < $len ; $i++){

	my $temp   = substr($P2, $i , 1);

	$tempData .= $temp ^ $char;

}

$P2 = $tempData;

#########################
# 4.処理判別。
#########################

#パラメータ情報取得。
*data = GetPara();

#########################
# 5.モードがpsf→決済前画面表示。
#########################
if($data{'mode'} eq "psf"){

	my $error_msg = "";

	##################################################
	# パラメータ情報取得。
	##################################################
	my $dataP4  = $data{'P4'};
	my $dataP5  = $data{'P5'};
	my $dataP6  = $data{'P6'};
	my $dataP7  = $data{'P7'};
	my $dataP12 = $data{'P12'};
	##################################################
	# パラメータのURLデコード。
	##################################################
	$dataP4  =~ tr/+/ /;
	$dataP4  =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;

	$dataP5  =~ tr/+/ /;
	$dataP5  =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;

	$dataP6  =~ tr/+/ /;
	$dataP6  =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;

	$dataP7  =~ tr/+/ /;
	$dataP7  =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;

	$dataP12 =~ tr/+/ /;
	$dataP12 =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;
	##################################################

	if($cart_flg eq "on"){

		##################################################
		# 文字制限チェック。
		##################################################
		my $str_P4     = $dataP4;			#メールアドレス
		my $str_P5     = $dataP5;			#氏名
		my $str_P6     = $dataP6;			#フリガナ
		my $str_P7     = split(/-/,$dataP7);		#電話番号
		my $str_len_P4 = length($str_P4);		#メールアドレス
		my $str_len_P5 = length($str_P5);		#氏名
		my $str_len_P6 = length($str_P6);		#フリガナ
		my $str_len_P7 = length($str_P7);		#電話番号

		#メールアドレスチェック。
		if($str_len_P4 > 64){
			$error_msg .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆メールアドレスは半角64文字以内で入力してください。<br><br>\n";
			$error_msg .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
		}else{

			&check_email($str_P4);

			if($#errorMsg != -1){

				foreach my $errorMsg(@errorMsg){

					$error_msg .= $errorMsg;
					$error_msg .= "\n";

				}

			}

		}

		#氏名チェック。
		if($str_P5 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P5 > 40 || $str_P5 =~ / /){
			$error_msg .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆お名前欄は全角文字をご入力ください。<br>◆お名前欄は全角20文字以内で入力してください。<br><br>\n";
			$error_msg .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
		}

		#フリガナチェック。
		if($str_P6 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P6 > 30 || $str_P6 =~ / /){
			$error_msg .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆フリガナ欄は全角カタカナをご入力ください。<br>◆フリガナ欄は全角15文字以内で入力してください。<br><br>\n";
			$error_msg .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
		}

		#電話番号チェック。
		if($str_P7 =~ /[^0-9]/ || $str_len_P7 > 11 || $str_P7 =~ / /){
			$error_msg .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆電話番号は半角11文字以内で入力してください。<br><br>\n";
			$error_msg .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
		}
		##################################################

	}else{

		$error_msg = "NICOS決済は現在ご利用できません。<br>\n";

	}

	if($error_msg eq ""){

		##################################################
		# 決済前画面表示。
		##################################################
print "Content-type: text/html; charset=Shift_JIS\n";
print "Pragma: no-cache\n";
print "Cache-Control: no-cache\n";
print "Expires: Thu, 01 Dec 1994 16:00:00 GMT\n\n";
print <<EOM;
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT">
<meta name="Description" content="総合決済依頼キー取得">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>総合決済依頼キー取得</title>
<style type="text/css">
<!--
body{
	font-size:12px;
	font-family:"MS UI Gothic";
}
td{
	font-size:12px;
}
.title{
	font-size:14px;
	font-weight:bold;
}
.msg{
	font-weight:bold;
}
-->
</style>
</head>
<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<table width="560" border="0" cellspacing="0" cellpadding="2" align="center">
 <tr>
  <td align="center" bgcolor="#dddddd"><span class="title">総合決済依頼キー取得</span></td>
 </tr>
 <tr>
  <td height="20">　</td>
 </tr>
</table>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td align="center">
   <table width="400" border="0" cellspacing="1" cellpadding="3" bgcolor="#EFEFEF">
    <tr>
     <td>
      <br>
      <div align="center"><b>引き続きオンライン総合決済を行います。</b></div>
      <br>
      <form action="nicos.cgi" method="post">
      <input type="hidden" name="mode" value="psa">
      <input type="hidden" name="P4" value="$dataP4">
      <input type="hidden" name="P5" value="$dataP5">
      <input type="hidden" name="P6" value="$dataP6">
      <input type="hidden" name="P7" value="$dataP7">
      <input type="hidden" name="P12" value="$dataP12">
      <div align="center">
      <input type="submit" value="オンライン総合決済画面を開く">
      </form>
      <br>
      <br>
     </td>
    </tr>
   </table>
  </td>
  </td>
 </tr>
 <tr> 
  <td height="20">　</td>
 </tr>
</table>
<br>
<br>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
  <td height="40">　</td>
 </tr>
 <tr>
  <td height="20" bgcolor="#dddddd">　</td>
 </tr>
</table>
</body>
</html>
EOM
exit;

		##################################################

	}else{

		##################################################
		# エラー画面表示。
		##################################################
print "Content-type: text/html; charset=Shift_JIS\n";
print "Pragma: no-cache\n";
print "Cache-Control: no-cache\n";
print "Expires: Thu, 01 Dec 1994 16:00:00 GMT\n\n";
print <<EOM;
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT">
<meta name="Description" content="総合決済依頼キー取得エラー">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>オンライン総合決済エラー</title>
<style type="text/css">
<!--
body{
	font-size:12px;
	font-family:"MS UI Gothic";
}
td{
	font-size:12px;
}
.title{
	font-size:14px;
	font-weight:bold;
}
.msg{
	font-weight:bold;
}
-->
</style>
</head>
<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<table width="560" border="0" cellspacing="0" cellpadding="2" align="center">
 <tr>
  <td align="center" bgcolor="#dddddd"><span class="title">エラー</span></td>
 </tr>
 <tr>
  <td height="20">　</td>
 </tr>
</table>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td align="center">
  <span class="msg">
EOM

		my @msg = split(/\n/,$error_msg);

		foreach my $msg(@msg){

print <<EOM;
$msg<br>
EOM

		}

print <<EOM;
  </span>
  </td>
 </tr>
 <tr> 
  <td height="20">　</td>
 </tr>
</table>
<br>
<br>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td>　</td>
 </tr>
 <tr> 
   <td align="center"><input type="button" value="閉じる" onClick="window.close()" style="width:100"></td>
 </tr>
 <tr>
  <td height="40">　</td>
 </tr>
 <tr>
  <td height="20" bgcolor="#dddddd">　</td>
 </tr>
</table>
</body>
</html>
EOM
exit;
		##################################################

	}

#########################
# 5.モードがpsa→決済キー取得。
#########################
}elsif($data{'mode'} eq "psa"){

	#ディレクトリ名。
	my $lockdir    = "nicos";
	my $lockdir2   = "nicos_temp";

	#リトライ回数。
	my $retry      = 10;

	my $html       = "";
	my $error_view = "";
	my $error_mail = "";

	my $date_data       = "";
	my $member_id       = "";
	my $member_name     = "";
	my $member_furigana = "";
	my $member_tel      = "";
	my $member_mail     = "";
	my $member_item     = "";
	my $member_price    = "";
	my $agency_id       = "";
	my $agency_url      = "";

	if($cart_flg eq "on"){

		if($ssl_flg == 1){

			##################################################
			# 排他制御開始。
			##################################################

			while(!mkdir($lockdir, 0755)){						# 作成。出来なければ待つ

				if(--$retry <= 0){						# リトライ回数でダメなら

					if(mkdir($lockdir2, 0755)){				# ロックを消すための排他

						if((-M $lockdir) * 86400 > 600){		# 作成時間が10分以上前なら

							rename($lockdir2, $lockdir);		# ロック入れ替え
							last;					# 一連の処理へ

						}else{

							rmdir($lockdir2);			# 部分ロック削除

						}

					}

					#サーバーBusyです しばらくたってからもう一度お試しください。
					$error_view  = "只今、システムメンテナンス中です。<br>しばらくたってからもう一度お試しください。<br>\n";

				}

				sleep(1);							# 1秒待つ

			}

			##################################################
			# 日付取得。
			# 乱数取得。
			##################################################

			#タイムゾーンを日本時間へ。
			$ENV{'TZ'} = "JST-9";

			my $date = time;

			my $rand = int(rand(1000000));

			##################################################
			# 加盟店メンバーIDを形成。（加盟店メンバーID採番区分+日付）
			##################################################

			my $P3 = "$numbering$date$rand";

			##################################################
			# 商品IDを形成。（加盟店メンバーID採番区分+日付）
			##################################################

			my $P10 = "$numbering$date$rand";

			##################################################
			# 加盟店取引IDを形成。（加盟店メンバーID採番区分+日付）
			##################################################

			my $P13 = "$numbering$date$rand";

			##################################################
			# 呼び出しパラメータ設定。(postで取得)
			##################################################

			my $param;

			#引数の結合（前処理として引数の形式チェックを行うことを推奨致します）
			$param .= 'P1='.$P1;
			$param .= '&P2='.$P2;
			$param .= '&P3='.$P3;
			$param .= '&P4='.$data{'P4'};
			$param .= '&P5='.$data{'P5'};
			$param .= '&P6='.$data{'P6'};
			$param .= '&P7='.$data{'P7'};
			$param .= '&P8='.$P8;
			$param .= '&P9='.$P9;
			$param .= '&P10='.$P10;
			$param .= '&P11='.$P11;
			$param .= '&P12='.$data{'P12'};
			$param .= '&P13='.$P13;
			$param .= '&P14='.$P14;
			$param .= '&P30='.$P30;
			$param .= '&P31='.$P31;
			$param .= '&P32='.$P32;
			$param .= '&P33='.$P33;

			my ($sec, $min, $hour, $mday, $mon, $year, $wday, $dummy1, $dummy2) = localtime($date);

			$year = sprintf("%04d", $year + 1900);
			$mon  = sprintf("%02d", $mon + 1);
			$mday = sprintf("%02d", $mday);
			$hour = sprintf("%02d", $hour);
			$min  = sprintf("%02d", $min);
			$sec  = sprintf("%02d", $sec);

			my @youbi = ('日', '月', '火', '水', '木', '金', '土');

			$date_data       = "$year/$mon/$mday($youbi[$wday]) $hour:$min:$sec";
			$member_id       = "$numbering$date$rand";
			$member_name     = $data{'P5'};
			$member_furigana = $data{'P6'};
			$member_tel      = $data{'P7'};
			$member_mail     = $data{'P4'};
			$member_price    = $data{'P12'};
			$agency_id       = $P1;
			$agency_url      = $html_address;

			##################################################
			# 文字制限チェック。
			##################################################

			my $str_P4     = $data{'P4'};			#メールアドレス
			my $str_P5     = $data{'P5'};			#氏名
			my $str_P6     = $data{'P6'};			#フリガナ
			my $str_P7     = split(/-/,$data{'P7'});	#電話番号
			my $str_len_P4 = length($str_P4);		#メールアドレス
			my $str_len_P5 = length($str_P5);		#氏名
			my $str_len_P6 = length($str_P6);		#フリガナ
			my $str_len_P7 = length($str_P7);		#電話番号

			#メールアドレスチェック。
			if($str_len_P4 > 64){
				$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆メールアドレスは半角64文字以内で入力してください。<br><br>\n";
				$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
			}else{

				&check_email($str_P4);

				if($#errorMsg != -1){

					foreach my $errorMsg(@errorMsg){

						$error_view .= $errorMsg;
						$error_view .= "\n";

					}

				}

			}

			#氏名チェック。
			if($str_P5 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P5 > 40 || $str_P5 =~ / /){
				$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆お名前欄は全角文字をご入力ください。<br>◆お名前欄は全角20文字以内で入力してください。<br><br>\n";
				$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
			}

			#フリガナチェック。
			if($str_P6 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P6 > 30 || $str_P6 =~ / /){
				$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆フリガナ欄は全角カタカナをご入力ください。<br>◆フリガナ欄は全角15文字以内で入力してください。<br><br>\n";
				$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
			}

			#電話番号チェック。
			if($str_P7 =~ /[^0-9]/ || $str_len_P7 > 11 || $str_P7 =~ / /){
				$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆電話番号は半角11文字以内で入力してください。<br><br>\n";
				$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
			}

			##################################################

			if($error_view eq ""){

				##################################################
				# 総合決済依頼キー取得CGIプログラム名を設定。(https://$sub_domain.digi-coin.com/MULTI/CGI_opnt_get_oneway_umenukey.php?)
				##################################################

				my $prg_name = "https://$sub_domain.digi-coin.com/MULTI/CGI_opnt_get_oneway_umenukey.php?";

				##################################################
				# リクエストの作成。
				##################################################

				#URLエンコード
				$param  =~ s/([\x00-\x20"#%;<>?{}|\\\\^~`\[\]\x7F-\xFF])/sprintf('%%%x',ord ($1))/eg;

				my $url      = "$prg_name$param";
				my $ua       = LWP::UserAgent->new;
				my $response = $ua->get( $url );

				##################################################
				# リクエストの実行＆レスポンスの取得。
				##################################################
				if ($response->code == 200) {

					$html = $response->content;

					if($response->is_success){
					    $html = $response->content;
					}else{
					    $html = $response->status_line;
					}

				}else{
					$html = "";
				}
				##################################################

			}

			##################################################
			# 排他制御終了。
			##################################################
			rmdir($lockdir);
			##################################################

		}else{

			##################################################
			# SSLモジュール（digireq）が存在しているかチェック。
			##################################################

			if(-e "./digireq"){

				##################################################
				# SSLモジュール（digireq）パーミッション取得。
				##################################################

				my @file_info = stat './digireq';
				my $file_per  = substr((sprintf "%03o", $file_info[2]), -3);

				##################################################
				# SSLモジュール（digireq）のパーミッションとCGIパーミッションが同じかチェック。
				##################################################

				if($file_per eq $cgi_file_auth){

					##################################################
					# 排他制御開始。
					##################################################

					while(!mkdir($lockdir, 0755)){						# 作成。出来なければ待つ

						if(--$retry <= 0){						# リトライ回数でダメなら

							if(mkdir($lockdir2, 0755)){				# ロックを消すための排他

								if((-M $lockdir) * 86400 > 600){		# 作成時間が10分以上前なら

									rename($lockdir2, $lockdir);		# ロック入れ替え
									last;					# 一連の処理へ

								}else{

									rmdir($lockdir2);			# 部分ロック削除

								}

							}

							#サーバーBusyです しばらくたってからもう一度お試しください。
							$error_view  = "只今、システムメンテナンス中です。<br>しばらくたってからもう一度お試しください。<br>\n";

						}

						sleep(1);							# 1秒待つ

					}

					##################################################
					# 日付取得。
					# 乱数取得。
					##################################################

					#タイムゾーンを日本時間へ。
					$ENV{'TZ'} = "JST-9";

					my $date = time;

					my $rand = int(rand(1000000));

					##################################################
					# 加盟店メンバーIDを形成。（加盟店メンバーID採番区分+日付）
					##################################################

					my $P3 = "$numbering$date$rand";

					##################################################
					# 商品IDを形成。（加盟店メンバーID採番区分+日付）
					##################################################

					my $P10 = "$numbering$date$rand";

					##################################################
					# 加盟店取引IDを形成。（加盟店メンバーID採番区分+日付）
					##################################################

					my $P13 = "$numbering$date$rand";

					##################################################
					# 呼び出しパラメータ設定。(postで取得)
					##################################################

					my $param;

					#引数の結合（前処理として引数の形式チェックを行うことを推奨致します）
					$param .= '\'';
					$param .= 'P1='.$P1;
					$param .= '&P2='.$P2;
					$param .= '&P3='.$P3;
					$param .= '&P4='.$data{'P4'};
					$param .= '&P5='.$data{'P5'};
					$param .= '&P6='.$data{'P6'};
					$param .= '&P7='.$data{'P7'};
					$param .= '&P8='.$P8;
					$param .= '&P9='.$P9;
					$param .= '&P10='.$P10;
					$param .= '&P11='.$P11;
					$param .= '&P12='.$data{'P12'};
					$param .= '&P13='.$P13;
					$param .= '&P14='.$P14;
					$param .= '&P30='.$P30;
					$param .= '&P31='.$P31;
					$param .= '&P32='.$P32;
					$param .= '&P33='.$P33;
					$param .= '\'';

					my ($sec, $min, $hour, $mday, $mon, $year, $wday, $dummy1, $dummy2) = localtime($date);

					$year = sprintf("%04d", $year + 1900);
					$mon  = sprintf("%02d", $mon + 1);
					$mday = sprintf("%02d", $mday);
					$hour = sprintf("%02d", $hour);
					$min  = sprintf("%02d", $min);
					$sec  = sprintf("%02d", $sec);

					my @youbi = ('日', '月', '火', '水', '木', '金', '土');

					$date_data       = "$year/$mon/$mday($youbi[$wday]) $hour:$min:$sec";
					$member_id       = "$numbering$date$rand";
					$member_name     = $data{'P5'};
					$member_furigana = $data{'P6'};
					$member_tel      = $data{'P7'};
					$member_mail     = $data{'P4'};
					$member_price    = $data{'P12'};
					$agency_id       = $P1;
					$agency_url      = $html_address;

					##################################################
					# 文字制限チェック。
					##################################################

					my $str_P4     = $data{'P4'};			#メールアドレス
					my $str_P5     = $data{'P5'};			#氏名
					my $str_P6     = $data{'P6'};			#フリガナ
					my $str_P7     = split(/-/,$data{'P7'});	#電話番号
					my $str_len_P4 = length($str_P4);		#メールアドレス
					my $str_len_P5 = length($str_P5);		#氏名
					my $str_len_P6 = length($str_P6);		#フリガナ
					my $str_len_P7 = length($str_P7);		#電話番号

					#メールアドレスチェック。
					if($str_len_P4 > 64){
						$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆メールアドレスは半角64文字以内で入力してください。<br><br>\n";
						$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
					}else{

						&check_email($str_P4);

						if($#errorMsg != -1){

							foreach my $errorMsg(@errorMsg){

								$error_view .= $errorMsg;
								$error_view .= "\n";

							}

						}

					}

					#氏名チェック。
					if($str_P5 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P5 > 40 || $str_P5 =~ / /){
						$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆お名前欄は全角文字をご入力ください。<br>◆お名前欄は全角20文字以内で入力してください。<br><br>\n";
						$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
					}

					#フリガナチェック。
					if($str_P6 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P6 > 30 || $str_P6 =~ / /){
						$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆フリガナ欄は全角カタカナをご入力ください。<br>◆フリガナ欄は全角15文字以内で入力してください。<br><br>\n";
						$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
					}

					#電話番号チェック。
					if($str_P7 =~ /[^0-9]/ || $str_len_P7 > 11 || $str_P7 =~ / /){
						$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆電話番号は半角11文字以内で入力してください。<br><br>\n";
						$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";
					}

					##################################################

					if($error_view eq ""){

						##################################################
						# 総合決済依頼キー取得CGIプログラム名を設定。(/MULTI/CGI_opnt_get_oneway_umenukey.php)
						##################################################

						my $prg_name = "/MULTI/CGI_opnt_get_oneway_umenukey.php";

						##################################################
						# リクエストの作成。
						##################################################

						#(実行コマンド　サブドメイン　呼び出しCGI　CGI引数)
						my $command = "./digireq ".$sub_domain." ".$prg_name." ".$param;

						##################################################
						# リクエストの実行＆レスポンスの取得。
						##################################################

						#リクエストの実行結果の標準出力をパイプを使用して取得
						open CMD_A ,"$command | ";

						while(<CMD_A>){

							#出力結果を取得
							$html .= $_;

						}

						close CMD_A;

						##################################################

					}

					##################################################
					# 排他制御終了。
					##################################################
					rmdir($lockdir);
					##################################################

				}else{

					$error_view  = "只今、システムメンテナンス中です。<br>しばらくたってからもう一度お試しください。<br>\n";
					$error_mail .= "アップロードが失敗している可能\性があります。\n";
					$error_mail .= "サーバー情報を確認後、再度アップロードをしてください。\n";
					$error_mail .= "(SSLモジュールに実行権限が与えられていません。)\n";

				}

				##################################################

			}else{

				$error_view  = "只今、システムメンテナンス中です。<br>しばらくたってからもう一度お試しください。<br>\n";
				$error_mail .= "アップロードが失敗している可能\性があります。\n";
				$error_mail .= "サーバー情報を確認後、再度アップロードをしてください。\n";
				$error_mail .= "(SSLモジュールが存在しません。)\n";

			}

			##################################################

		}

	}else{

		$error_view = "NICOS決済は現在ご利用できません。<br>\n";

	}

	#########################
	# 6.遷移先判別。
	#########################

	my $error_data = "";

	if($error_view eq ""){

		my $dummy     = "";
		my $error_flg = 0;
		my $key       = "";

		my(@return_data) = split(/,/,$html);

		if($return_data[0] =~ /^status=/){

			($dummy,$error_flg) = split(/=/,$return_data[0]);

		}else{

			$error_flg = 403;

		}

		if($return_data[1] =~ /^key=/){

			($dummy,$key) = split(/=/,$return_data[1]);

		}

		if($error_flg eq "0"){

			##################################################
			# 決済情報を送信。
			##################################################

			my $settlement = "";

			$member_price =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;


			$settlement .= "\n";
			$settlement .= "WEB管理者様\n";
			$settlement .= "\n";
			$settlement .= "このメールは、支払い方法：ニコスクレジット決済で商品購入された\n";
			$settlement .= "場合に、自動発行される『お客様番号』をお知らせするメールです。\n";
			$settlement .= "購入情報詳細については、別途｢注文メール｣をご確認ください。\n";
			$settlement .= "\n";
			$settlement .= "クレジット決済情報は以下の通りです。\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "【ご注文日】　" . $date_data . "\n";
			$settlement .= "【お客様名】　" . $member_name . "\n";
			$settlement .= "【お客様番号】　" . $member_id . "\n";
			$settlement .= "【料金】　" . $member_price . "円（税込み）\n";
			$settlement .= "\n";
			$settlement .= " ※決済完了時などに必要となる番号ですので、必ずお控えください。\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "\n";
			$settlement .= "お客様情報は以下の通りです。\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "【お客様名】　" . $member_name . "\n";
			$settlement .= "【フリガナ】　" . $member_furigana . "\n";
			$settlement .= "【電話番号】　" . $member_tel . "\n";
			$settlement .= "【メールアドレス】　" . $member_mail . "\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "\n";
			$settlement .= "管理者登録情報は以下の通りです。\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "【加盟店ID】　" . $agency_id . "\n";
			$settlement .= "【URL】　" . $agency_url . "\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "\n";
			$settlement .= "※このメールは、NICOSクレジット決済システムをご利用頂いている\n";
			$settlement .= "　管理者の方の登録メールアドレスにお送りしております。\n";
			$settlement .= "　もし本メールが誤って届いた際は、お手数をおかけ致しますが\n";
			$settlement .= "　その旨を文末の「連絡先」へメールにてご連絡頂きますと共に、\n";
			$settlement .= "　本メールを削除していただきますようお願い申\し上げます。\n";
			$settlement .= "\n";
			$settlement .= "※このメールアドレスは配信専用ですので、メッセージを返信され\n";
			$settlement .= "　ませぬようお願い致します。\n";
			$settlement .= "\n";
			$settlement .= "-----------特定商取引に基づく表\示---------------------\n";
			$settlement .= "【販売業者】\n";
			$settlement .= $lowData0 . "\n";
			$settlement .= "【運営責任者】\n";
			$settlement .= $lowData1 . "\n";
			$settlement .= "【所在地】\n";
			$settlement .= $lowData2 . "\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "\n";

			&sendMailSettlement($sendmail,$mailSettlement,$settlement);

			##################################################

			##################################################
			# 総合決済依頼画面呼び出しURLへジャンプ（location）する。
			##################################################
			print "location:$next_url_data$key\n\n";
			exit;
			##################################################

		}elsif($error_flg ne "0"){

			$error_data = $error_flg;

			##################################################
			# エラー画面を表示する。
			##################################################

			if($error_flg eq ""){

				#ステータスがありません。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "入力情報がありません。\n";
				$error_mail .= "サーバー情報・ショップ情報を確認後、再度アップロードをしてください。\n";

			}elsif($error_flg eq "257" || $error_flg eq "258" || $error_flg eq "261" || $error_flg eq "262"){

				#加盟店ＩＤが異常です。
				#加盟店ＩＤが登録ありません。
				#加盟店ＩＤが差止中です。
				#加盟店ＩＤが取引停止中です。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "加盟店IDが正しく設定されていません。\n";
				$error_mail .= "正しい加盟店IDを入力して、再度アップロードをしてください。\n";
				$error_mail .= "(三菱UFJニコス株式会社に確認する必要があります)\n";

			}elsif($error_flg eq "403"){

				#総合決済依頼キーが取得できない環境になっています。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "サーバーから情報が取得できませんでした。\n";
				$error_mail .= "ご利用情報をよくご確認頂き、再度アップロードをしてください。\n";

			}elsif($error_flg eq "513" || $error_flg eq "516"){

				#加盟店パスワードが異常です。
				#加盟店パスワードが不一致です。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "加盟店パスワードが正しく設定されていません。\n";
				$error_mail .= "正しい加盟店パスワードを入力して、再度アップロードをしてください。\n";
				$error_mail .= "(三菱UFJニコス株式会社に確認する必要があります)\n";

			}elsif($error_flg eq "769" || $error_flg eq "770" || $error_flg eq "773"){

				#メンバーＩＤが異常です。
				#メンバーＩＤが登録ありません。
				#メンバーＩＤが差止中です。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "メンバーID採番区分が正しく設定されていません。\n";
				$error_mail .= "正しいメンバーID採番区分を入力して、再度アップロードをしてください。\n";
				$error_mail .= "(サイト間で重複している可能\性があります)\n";

			}elsif($error_flg eq "776"){

				#メンバー口座がありません。

			}elsif($error_flg eq "1025"){

				#メンバーメールアドレスが異常です。
				$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆メールアドレスは半角64文字以内で入力してください。<br><br>\n";
				$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";

			}elsif($error_flg eq "1281"){

				#メンバー氏名が異常です。
				$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆お名前欄は全角文字をご入力ください。<br>◆お名前欄は全角20文字以内で入力してください。<br><br>\n";
				$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";

			}elsif($error_flg eq "1537"){

				#メンバーフリガナが異常です。
				$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆フリガナ欄は全角カタカナをご入力ください。<br>◆フリガナ欄は全角15文字以内で入力してください。<br><br>\n";
				$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";

			}elsif($error_flg eq "1793"){

				#メンバー電話番号が異常です。
				$error_view .= "入力エラーが発生しました。<br>以下のことをご確認頂き、再度お手続きをお願いいたします。<br>◆電話番号は半角11文字以内で入力してください。<br><br>\n";
				$error_view .= "上記内容をご確認頂いた後、クレジット決済にてご購入頂けない場合は、<br>大変申\し訳ありませんが、運営責任者へご連絡ください。<br>\n";

			}elsif($error_flg eq "2049" || $error_flg eq "2050"){

				#呼び出しページＩＤが異常です。
				#呼び出しページＩＤが登録ありません。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "アップロードが失敗している可能\性があります。\n";
				$error_mail .= "サーバー情報を確認後、再度アップロードをしてください。\n";

			}elsif($error_flg eq "2305" || $error_flg eq "2306"){

				#商品種別ＩＤが異常です。
				#商品種別ＩＤが登録ありません。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "商品種別IDが正しく設定されていません。\n";
				$error_mail .= "正しい商品種別IDを入力して、再度アップロードをしてください。\n";

			}elsif($error_flg eq "2561"){

				#商品コードが異常です。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "メンバーID採番区分が正しく設定されていません。\n";
				$error_mail .= "正しいメンバーID採番区分を入力して、再度アップロードをしてください。\n";
				$error_mail .= "(サイト間で重複している可能\性があります)\n";

			}elsif($error_flg eq "2817"){

				#商品名が異常です。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "クレジット購入画面の表示会社名が正しく設定されていません。\n";
				$error_mail .= "正しいクレジット購入画面の表示会社名を入力して、再度アップロードをしてください。\n";

			}elsif($error_flg eq "3073"){

				#商品金額が異常です。
				$error_view = "商品金額が取引限度額を超えています。<br>戻って商品を選択しなおしてください。<br>\n";

			}elsif($error_flg eq "3329" || $error_flg eq "3331"){

				#加盟店取引ＩＤが異常です しばらくたってからもう一度お試しください。
				#加盟店取引ＩＤが重複しています しばらくたってからもう一度お試しください。
				$error_view  = "只今、システムメンテナンス中です。<br>しばらくたってからもう一度お試しください。<br>\n";
				$error_mail .= "メンバーID採番区分が正しく設定されていません。\n";
				$error_mail .= "正しいメンバーID採番区分を入力して、再度アップロードをしてください。\n";
				$error_mail .= "(サイト間で重複している可能\性があります)\n";

			}elsif($error_flg eq "3585" || $error_flg eq "7681" || $error_flg eq "7937" || $error_flg eq "8193" || $error_flg eq "8449"){

				#保持期間が異常です。
				#カード利用フラグが異常です。
				#銀行利用フラグが異常です。
				#コンビニ利用フラグが異常です。
				#電子マネー利用フラグが異常です。
				$error_view  = "只今、システムメンテナンス中です。<br>しばらくたってからもう一度お試しください。<br>\n";
				$error_mail .= "アップロードが失敗している可能\性があります。\n";
				$error_mail .= "サーバー情報を確認後、再度アップロードをしてください。\n";

			}elsif($error_flg eq "10241"){

				#メンバーログイン利用フラグが異常です。

			}elsif($error_flg eq "10497"){

				#口座残高利用フラグが異常です。

			}elsif($error_flg eq "10753"){

				#ギフトＩＤ利用フラグが異常です。

			}elsif($error_flg eq "11009"){

				#デジコイン利用フラグが異常です。

			}elsif($error_flg eq "12801"){

				#ポイント配布対象金額パターンが異常です。

			}elsif($error_flg eq "13057"){

				#ポイント配布対象予定金額が異常です。

			}elsif($error_flg eq "13313"){

				#ポイント配布料率パターンフラグが異常です。

			}elsif($error_flg eq "13569"){

				#追加配布ポイントが異常です。

			}elsif($error_flg eq "13825"){

				#ポイント配布日が異常です。

			}elsif($error_flg eq "14081"){

				#ポイント有効期限が異常です。

			}elsif($error_flg eq "15361"){

				#決済完了タイミング指定が異常です。

			}elsif($error_flg eq "15617"){

				#売上確定保留期間設定が異常です。

			}elsif($error_flg eq "65535"){

				#システムメンテナンス中です。
				$error_view = "只今、システムメンテナンス中です。<br>しばらくたってからもう一度お試しください。<br>\n";
				$error_mail = "現在NICOS決済システムのメンテナンス中です。\n";

			}elsif($error_flg eq "99999"){

				#サーバーBusyです しばらくたってからもう一度お試しください。
				$error_view  = "只今、システムメンテナンス中です。<br>しばらくたってからもう一度お試しください。<br>\n";

			}else{

				#内部処理エラーです。
				$error_view  = "只今、システムメンテナンス中です。<br>大変申\し訳ありませんが、クレジット決済にてご購入頂けない場合は、運営責任者へご連絡ください。<br>\n";
				$error_mail .= "NICOS決済システムの内部エラーが発生しました。\n";
				$error_mail .= "NICOSにお問合せください。\n";
				$error_mail .= "エラー：$error_flg\n";

			}

		}

	}

	if($sendmail ne "" && $error_mail ne ""){

		&sendMail($sendmail,$mail_adress,$error_mail,$html_address);

	}

	##################################################
	# エラー画面表示。
	##################################################
print "Content-type: text/html; charset=Shift_JIS\n";
print "Pragma: no-cache\n";
print "Cache-Control: no-cache\n";
print "Expires: Thu, 01 Dec 1994 16:00:00 GMT\n\n";
print <<EOM;
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT">
<meta name="Description" content="総合決済依頼キー取得エラー">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>オンライン総合決済エラー</title>
<style type="text/css">
<!--
body{
	font-size:12px;
	font-family:"MS UI Gothic";
}
td{
	font-size:12px;
}
.title{
	font-size:14px;
	font-weight:bold;
}
.msg{
	font-weight:bold;
}
-->
</style>
</head>
<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<table width="560" border="0" cellspacing="0" cellpadding="2" align="center">
 <tr>
  <td align="center" bgcolor="#dddddd"><span class="title">$error_data エラー</span></td>
 </tr>
 <tr>
  <td height="20">　</td>
 </tr>
</table>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td align="center">
  <span class="msg">
  $error_view
  </span>
  </td>
 </tr>
 <tr> 
  <td height="20">　</td>
 </tr>
</table>
<br>
<br>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td>　</td>
 </tr>
 <tr> 
   <td align="center"><input type="button" value="閉じる" onClick="window.close()" style="width:100"></td>
 </tr>
 <tr>
  <td height="40">　</td>
 </tr>
 <tr>
  <td height="20" bgcolor="#dddddd">　</td>
 </tr>
</table>
</body>
</html>
EOM
exit;
	##################################################

##################################################
# 5.モードがpse→決済終了画面表示。
##################################################
}elsif($data{'mode'} eq "pse"){

	##################################################
	# 決済終了画面表示。
	##################################################
print "Content-type: text/html; charset=Shift_JIS\n";
print "Pragma: no-cache\n";
print "Cache-Control: no-cache\n";
print "Expires: Thu, 01 Dec 1994 16:00:00 GMT\n\n";
print <<EOM;
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT">
<meta name="Description" content="オンライン総合決済完了">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>オンライン総合決済完了</title>
<style type="text/css">
<!--
body{
	font-size:12px;
	font-family:"MS UI Gothic";
}
td{
	font-size:12px;
}
.title{
	font-size:14px;
	font-weight:bold;
}
.msg{
	font-weight:bold;
}
-->
</style>
</head>
<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<table width="560" border="0" cellspacing="0" cellpadding="2" align="center">
 <tr>
  <td align="center" bgcolor="#dddddd"><span class="title">オンライン総合決済完了</span></td>
 </tr>
 <tr>
  <td height="20">　</td>
 </tr>
</table>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td align="center">
  <span class="msg">
  ご利用ありがとうございました。
  </span>
  </td>
 </tr>
 <tr> 
  <td height="20">　</td>
 </tr>
</table>
<br>
<br>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td>　</td>
 </tr>
 <tr> 
   <td align="center"><input type="button" value="閉じる" onClick="window.close()" style="width:100"></td>
 </tr>
 <tr>
  <td height="40">　</td>
 </tr>
 <tr>
  <td height="20" bgcolor="#dddddd">　</td>
 </tr>
</table>
</body>
</html>
EOM
exit;
	##################################################

}
