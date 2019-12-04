#!/usr/bin/perl

##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2004 SUNFIRST.INC ALL RIGHTS RESERVED.
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
# ログファイルの出力を行う。
##################################################

use strict;
use KCatch;

##################################################
# 設定情報の変数の初期化を行う。
##################################################

#基本設定情報
use vars qw($error %in $page_name $user_host $makedir1 $makedir2 $makedir3 $makedir4 $remote_host $remote_addr $http_user_agent $buffer $dummy $http_referer $logfile $host_logfile $lockfile $date2 $lockdir1 $lockdir2 $retry);
use vars qw($f_log1 $f_log2 $f_log3 $f_log4 $f_log5 $f_log6);
use vars qw($s_log1 $s_log2 $s_log3 $s_log4 $s_log5 $s_log6);
use vars qw($t_log1 $t_log2 $t_log3 $t_log4 $t_log5 $t_log6);
use vars qw($no $host $flag $line $times $name $value @pairs $pair $dir_permission $file_permission);

#サイトサーバー設定情報。
use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
#サイト内ページ情報。
use vars qw(@page_kind $pnm00 $knm00 $pnm10 $knm10 $pnm11 $knm11 $pnm12 $knm12 $pnm13 $knm13 $pnm14 $knm14 $pnm15 $knm15 $pnm20 $knm20 $pnm21 $knm21 $pnm22 $knm22 $pnm23 $knm23 $pnm24 $knm24 $pnm25 $knm25 $pnm30 $knm30 $pnm31 $knm31 $pnm32 $knm32 $pnm33 $knm33 $pnm34 $knm34 $pnm35 $knm35 $pnm40 $knm40 $pnm41 $knm41 $pnm42 $knm42 $pnm43 $knm43 $pnm44 $knm44 $pnm45 $knm45 $pnm50 $knm50 $pnm51 $knm51 $pnm52 $knm52 $pnm53 $knm53 $pnm54 $knm54 $pnm55 $knm55);

##################################################
# サイトサーバー設定情報の読み込み。
##################################################

if(-e "./root.ini"){
	open(IN,"./root.ini");
	flock(IN,1);		#ファイルを読み出しロック。
	@root = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);
	($site_name,$site_folder,$ftp_address,$html_host,$cgi_host,$ftp_id,$ftp_pass,$html_address,$cgi_address,$perl,$sendmail,$imgdir,$page_pass,$rootdir,$html_auth,$cgi_dir_auth,$cgi_file_auth,$dat_file_auth,$csv_file_auth) = split(/,/,$root[0]);
}else{
	$error = 99;
}

##################################################
# サイト内ページ情報ファイル読み込み。
##################################################

open(IN,"./constraction/page.dat");
flock(IN,1);		#ファイルを読み出しロック。
my @page_kind = <IN>;
flock(IN,8);		#ロック解除。
close(IN);

#サイト内ページ情報ファイル分割。
my($pnm00,$knm00,$pnm10,$knm10,$pnm11,$knm11,$pnm12,$knm12,$pnm13,$knm13,$pnm14,$knm14,$pnm15,$knm15,$pnm20,$knm20,$pnm21,$knm21,$pnm22,$knm22,$pnm23,$knm23,$pnm24,$knm24,$pnm25,$knm25,$pnm30,$knm30,$pnm31,$knm31,$pnm32,$knm32,$pnm33,$knm33,$pnm34,$knm34,$pnm35,$knm35,$pnm40,$knm40,$pnm41,$knm41,$pnm42,$knm42,$pnm43,$knm43,$pnm44,$knm44,$pnm45,$knm45,$pnm50,$knm50,$pnm51,$knm51,$pnm52,$knm52,$pnm53,$knm53,$pnm54,$knm54,$pnm55,$knm55) = split(/,/,$page_kind[0]);

##################################################
# ライブラリの読み込み。
##################################################

require './pl/jcode.pl';

##################################################
# デコード処理。
##################################################

if($ENV{'REQUEST_METHOD'} eq "POST"){		#データ送信方法がPOSTの場合。

	#バイナリモードで読むようにする。
	binmode(STDIN);

	#POSTされたデータをバイナリでバッファに保存。
	read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});

}else{						#データ送信方法がGETの場合。

	#パラメータ情報をバッファに保存。
	$buffer = $ENV{'QUERY_STRING'};

}

#送信内容がファイルではない場合。

#バッファを「&」別で配列に保存。
@pairs = split(/&/,$buffer);

#バッファデータ精査。
foreach $pair(@pairs){

	#バッファデータをパラメータ名、データに分ける。
	local($name,$value) = split(/=/,$pair);

	#パラメータ名取得の処理。
	$value =~ tr/+/ /;
	$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

	#データ取得の処理。
	$name =~ tr/+/ /;
	$name =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

	#文字コード変換。
	&jcode'h2z_sjis(*value);
	&jcode'convert(*value,'sjis');
	&jcode'convert(*name,'sjis');

	#タグ処理。(クロスサイトスクリプティング対応)
	$value =~ s/\"/&quot;/g;
	$value =~ s/</&lt;/g;
	$value =~ s/>/&gt;/g;

	#改行処理。
	$value =~ s/\r\n/<br>/g;
	$value =~ s/\r/<br>/g;
	$value =~ s/\n/<br>/g;

	#データを結合して代入。
	$in{$name} .= $value;

}
##################################################
# 時間の取得。
##################################################

#タイムゾーンを日本時間へ。
$ENV{'TZ'} = "JST-9";

#時間変数設定。
$times = time;

#（秒、分、時、日、月、年、曜日、ダミー、ダミー）
my($sec,$min,$hour,$mday,$mon,$year,$wday,$dummy,$dummy) = localtime($times);

#日時のフォーマット。[例：2000/01/01]
$date2 = sprintf("%04d\%02d\%02d",$year + 1900,$mon + 1,$mday);

##################################################
# ページ種類での変数設定。
##################################################

if($in{'page_name'} eq "")     {$page_name = "トップページ";}
elsif($in{'page_name'} eq "00"){$page_name = "トップページ";}
elsif($in{'page_name'} eq "10"){$page_name = "$pnm10";}
elsif($in{'page_name'} eq "11"){$page_name = "$pnm11";}
elsif($in{'page_name'} eq "12"){$page_name = "$pnm12";}
elsif($in{'page_name'} eq "13"){$page_name = "$pnm13";}
elsif($in{'page_name'} eq "14"){$page_name = "$pnm14";}
elsif($in{'page_name'} eq "15"){$page_name = "$pnm15";}
elsif($in{'page_name'} eq "20"){$page_name = "$pnm20";}
elsif($in{'page_name'} eq "21"){$page_name = "$pnm21";}
elsif($in{'page_name'} eq "22"){$page_name = "$pnm22";}
elsif($in{'page_name'} eq "23"){$page_name = "$pnm23";}
elsif($in{'page_name'} eq "24"){$page_name = "$pnm24";}
elsif($in{'page_name'} eq "25"){$page_name = "$pnm25";}
elsif($in{'page_name'} eq "30"){$page_name = "$pnm30";}
elsif($in{'page_name'} eq "31"){$page_name = "$pnm31";}
elsif($in{'page_name'} eq "32"){$page_name = "$pnm32";}
elsif($in{'page_name'} eq "33"){$page_name = "$pnm33";}
elsif($in{'page_name'} eq "34"){$page_name = "$pnm34";}
elsif($in{'page_name'} eq "35"){$page_name = "$pnm35";}
elsif($in{'page_name'} eq "40"){$page_name = "$pnm40";}
elsif($in{'page_name'} eq "41"){$page_name = "$pnm41";}
elsif($in{'page_name'} eq "42"){$page_name = "$pnm42";}
elsif($in{'page_name'} eq "43"){$page_name = "$pnm43";}
elsif($in{'page_name'} eq "44"){$page_name = "$pnm44";}
elsif($in{'page_name'} eq "45"){$page_name = "$pnm45";}
elsif($in{'page_name'} eq "50"){$page_name = "$pnm50";}
elsif($in{'page_name'} eq "51"){$page_name = "$pnm51";}
elsif($in{'page_name'} eq "52"){$page_name = "$pnm52";}
elsif($in{'page_name'} eq "53"){$page_name = "$pnm53";}
elsif($in{'page_name'} eq "54"){$page_name = "$pnm54";}
elsif($in{'page_name'} eq "55"){$page_name = "$pnm55";}

##################################################
# ホスト情報取得。
##################################################

$user_host = $ENV{'HTTP_HOST'};

##################################################
# ログ記録。
##################################################

#ログファイル名。
$logfile = "./site_log/$date2.cgi";

#ホストログファイル名。
$host_logfile = "./site_analysis/reject_host.dat";

#ロックファイル名。
$lockfile = "./site_log/lock.cgi";

#ロックディレクトリ名1。
$lockdir1 = "./lock";

#ロックディレクトリ名2。
$lockdir2 = "./lock2";

#リトライ回数セット。
$retry = 5;

if($user_host ne "localhost:11213" || $error eq ""){

	#ディレクトリパーミッション設定。
	$dir_permission = sprintf("%04d",oct($cgi_dir_auth));

	#ログ保管ディレクトリ作成。
	$makedir1 = "./site_log";
	unless (-d $makedir1){
		mkdir($makedir1,$dir_permission);
	}
	$makedir2 = "./site_analysis";
	unless (-d $makedir2){
		mkdir($makedir2,$dir_permission);
	}
	$makedir3 = "./site_log/form";
	unless (-d $makedir3){
		mkdir($makedir3,$dir_permission);
	}
	$makedir4 = "./site_log/cart";
	unless (-d $makedir4){
		mkdir($makedir4,$dir_permission);
	}

	if($cgi_dir_auth eq ""){
		chmod(0755,$makedir1);
		chmod(0755,$makedir2);
		chmod(0755,$makedir3);
		chmod(0755,$makedir4);
	}else{
		chmod($dir_permission,$makedir1);
		chmod($dir_permission,$makedir2);
		chmod($dir_permission,$makedir3);
		chmod($dir_permission,$makedir4);
	}

	#サーバ/ブラウザ情報取得。
	$remote_host     = $ENV{'REMOTE_HOST'};
	$remote_addr     = $ENV{'REMOTE_ADDR'};
	$http_user_agent = $ENV{'HTTP_USER_AGENT'};
	$http_user_agent =~ s/HTML,/HTML/g;

	#送信されたデータを分割。
	if($buffer =~ /&&|&amp;&amp;/){
		($dummy,$http_referer) = split(/&&/,$ENV{'QUERY_STRING'});
	}
	if($http_referer eq ""){
		$http_referer = $ENV{'HTTP_REFERER'};
	}

	#「,」を「&#44;」に置換。
 	$http_referer    =~ s/\,/\&\#44\;/g;
 	$http_user_agent =~ s/\,/\&\#44\;/g;

	#リモートホスト名が空、もしくはリモートホスト名がIPアドレスの場合には、IPアドレスからリモートホスト名取得。
	if($remote_host eq "" || $remote_host eq "$remote_addr"){
		$remote_host = gethostbyaddr(pack('C4',split(/\./,$remote_addr)),2);
	}

	#リモートホスト名が空の場合にはリモートホスト名をIPアドレスにする。
	if($remote_host eq ""){
		$remote_host = $remote_addr;
	}

	#ロックの開始。
	open(LOCK,"> $lockfile") or die "Can't open lockfile: $!";
	eval { flock(OUT,2); };

#	if($@){

#		#ディレクトリ作成。出来なければ待つ。
#		while(!mkdir($lockdir1,$dir_permission)){

#			#5回ダメの場合。
#			if(--$retry <= 0){

#				#ロックを消すための排他。
#				if(mkdir($lockdir2,$dir_permission)){

#					#作成時間が10分以上前の場合。
#					if((-M $lockdir1) * 86400 > 600){

#						#ロック入れ替え。
#						rename($lockdir2, $lockdir1) or exit; 

#						#一連の処理へ。
#						last;

#					}else{

#						#部分ロック削除。
#						rmdir($lockdir2);

#					}
#				}

#				#あきらめる。
#				exit;

#			}

#			#1秒待つ。
#			sleep(1);

#		}

#		#ログファイルを読み込み。
#		open(IN,"$logfile");
#		my @temp = <IN>;
#		close(IN);

#		#ログ情報の分割。
#		($f_log1,$f_log2,$f_log3,$f_log4,$f_log5,$f_log6) = split(/,/,$temp[0]);
#		($s_log1,$s_log2,$s_log3,$s_log4,$s_log5,$s_log6) = split(/,/,$temp[1]);
#		($t_log1,$t_log2,$t_log3,$t_log4,$t_log5,$t_log6) = split(/,/,$temp[2]);

#		if($page_name eq "$f_log1" && $remote_host eq "$f_log2"){exit;}
#		if($page_name eq "$s_log1" && $remote_host eq "$s_log2"){exit;}
#		if($page_name eq "$t_log1" && $remote_host eq "$t_log2"){exit;}

#		#ホストログファイルを読み込み。
#		open(IN,"$host_logfile");
#		my @reject = <IN>;
#		close(IN);

#		#ホストログ情報の精査。
#		foreach (@reject){

#			#ホストログ情報の分割。
#			($no,$host) = split(/,/,$_);

#			#検索マッチングフラグ初期化。
#			$flag = 0;

#			#最後の[CR/LF]除去。
#			chomp $host;

#			#検索実行。
#			if(index($host,$remote_host) >= 0){
#				$flag = 1;
#				exit;
#			}
#		}

#		if($remote_host     ne "" 
#		&& $remote_addr     ne "" 
#		&& $http_user_agent ne "" 
#		&& $http_referer    ne "" ){

#			#ログを形成。
#			$line = "$page_name,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

#			#形成したログファイルを新しく先頭に追記。
#			unshift(@temp,$line);

#			#ログファイルを書き込み。
#			open(OUT,"> $logfile");			# 読み書きモードで開く
#			print OUT @temp;			# 書き込む
#			close(OUT);				# close

#			#ディレクトリ削除。
#			rmdir($lockdir1);

#		}

#	}else{

		#ログファイルを読み込み。
		open(IN,"$logfile");
		flock(IN,1);		#ファイルを読み出しロック。
		my @temp = <IN>;
		flock(IN,8);		# ロック解除。
		close(IN);

		#ログ情報の分割。
		($f_log1,$f_log2,$f_log3,$f_log4,$f_log5,$f_log6) = split(/,/,$temp[0]);
		($s_log1,$s_log2,$s_log3,$s_log4,$s_log5,$s_log6) = split(/,/,$temp[1]);
		($t_log1,$t_log2,$t_log3,$t_log4,$t_log5,$t_log6) = split(/,/,$temp[2]);

		if($page_name eq "$f_log1" && $remote_host eq "$f_log2"){exit;}
		if($page_name eq "$s_log1" && $remote_host eq "$s_log2"){exit;}
		if($page_name eq "$t_log1" && $remote_host eq "$t_log2"){exit;}

		#ホストログファイルを読み込み。
		open(IN,"$host_logfile");
		flock(IN,1);		#ファイルを読み出しロック。
		my @reject = <IN>;
		flock(IN,8);		# ロック解除。
		close(IN);

		#ホストログ情報の精査。
		foreach (@reject){

			#ホストログ情報の分割。
			($no,$host) = split(/,/,$_);

			#検索マッチングフラグ初期化。
			$flag = 0;

			#最後の[CR/LF]除去。
			chomp $host;

			#検索実行。
			if(index($host,$remote_host) >= 0){
				$flag = 1;
				exit;
			}
		}

		if($remote_host     ne "" 
		&& $remote_addr     ne "" 
		&& $http_user_agent ne "" 
		&& $http_referer    ne "" ){

			#ログを形成。
			$line = "$page_name,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

			#形成したログファイルを新しく先頭に追記。
			unshift(@temp,$line);

			#ログファイルを書き込み。
			open(OUT,"> $logfile")  or die "Can't open    : $!";		# 書き込みモードで開く
			flock(OUT,2)            or die "Can't flock   : $!";		# ロック確認。ロック
			seek(OUT,0,0)           or die "Can't seek    : $!";		# ファイルポインタを先頭にセット
			print OUT @temp         or die "Can't print   : $!";		# 書き込む
			truncate(OUT, tell(OUT))or die "Can't truncate: $!";		# ファイルサイズを書き込んだサイズにする
			close(OUT);							# closeすれば自動でロック解除

			#ファイルパーミッション設定。
			$file_permission = sprintf("%04d",oct($cgi_file_auth));

			if($cgi_file_auth eq ""){
				chmod(0755,$logfile);
			}else{
				chmod($file_permission,$logfile);
			}
		}
#	}

	#ロックの終了。
	close(LOCK); 

	#ファイルパーミッション設定。
	$file_permission = sprintf("%04d",oct($cgi_file_auth));

	if($cgi_dir_auth eq ""){
		chmod(0755,$lockfile);
	}else{
		chmod($file_permission,$lockfile);
	}

}

exit;
