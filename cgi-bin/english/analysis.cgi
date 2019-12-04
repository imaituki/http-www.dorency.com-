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

#ログファイルの分析表示を行う。

use strict;
use KCatch;
use CGI;

#設定情報の変数の初期化を行う。

#設定情報。
use vars qw($script $bar $max_view $logdir @log_files $pswd_file $reject_file $pv $pageing $debug_flg %engn_sw @youbi $cpu_start $cpu_end);

#基本情報。
use vars qw($dummy $site_folder $ftp_id $html_address $imgdir $dat_file_auth);

#ログファイル名。
use vars qw(@ymd_files @ym_files);

#デコード情報。
use vars qw($buffer %in @filedata $mode $sunfirst $action $range $select $pswd $ymd_file $week_file $month_file $ym_file $sentence1 $cond1 $sentence2 $cond2 $sentence3 $cond3 $sentence4 $cond4 $sentence5 $cond5 $sentence6 $cond6 $sentence7 $cond7 $page $referrer $search_engin $search_keyword $host_name $os $agent $execution $type $submit $no);

#ログ情報。
use vars qw(@tmp1 @tmp2 @lines @lists %uniq_user $ymd);

#時間フォーマッ情報。
use vars qw($date1 $date2 $date3);

#アクセス情報。
use vars qw(%dms $dmp %youbis $youbip %hours $hourp %pages $pagep %referrer_servers $referrer_serverp %engins $enginp $word %keywords $keywordp %host_names $host_namep);
use vars qw($data1 $data2 $os_name %os_names $os_namep $agent_name %agent_names $agent_namep);

#ライブラリの読み込み。
require './pl/jcode.pl';
require './pl/analysisAgent.pl';
require './pl/analysisParts.pl';

#スクリプト名の初期化。
$script = "./analysis.cgi";

#グラフ画像のデフォルトの幅。
$bar = 150;

#ログの最大表示数。
$max_view = 100;

#ログファイルディレクトリ設定。
$logdir = "./site_log/";

#ログファイル名取得。
(opendir DIR,"$logdir");
@log_files = readdir(DIR);
close(DIR);

#パスワードファイル設定。
$pswd_file = "./site_analysis/pswd.dat";

#ホスト名情報ファイル設定。
$reject_file = "./site_analysis/reject_host.dat";

#ページビュー変数の初期化。
$pv = 0;

#ページングの表示件数設定。
$pageing = 1000;

#デバッグフラグ設定。
$debug_flg = "off";

#検索エンジン名の配列を設定。
%engn_sw = ('yahoo.co.jp'=>'p','google.co.jp'=>'q','search.msn.co.jp'=>'q','excite.co.jp'=>'search','goo.ne.jp'=>'MT','fresheye.com'=>'kw','infoseek.co.jp'=>'qt');

#曜日の配列を設定。
@youbi = ('日','月','火','水','木','金','土');

#タイムゾーンを日本時間へ。
$ENV{'TZ'} = "JST-9";

#スクリプト開始時間。
$cpu_start = (times)[0];

##################################################
# サイトサーバー設定情報の読み込み。
##################################################
if(-e "./root.ini"){
	open(IN,"./root.ini");
	flock(IN,1);		#ファイルを読み出しロック。
	my @root = <IN>;
	flock(IN,8);		#ロック解除。
	close(IN);
	($dummy,$site_folder,$dummy,$dummy,$dummy,$ftp_id,$dummy,$html_address,$dummy,$dummy,$dummy,$imgdir,$dummy,$dummy,$dummy,$dummy,$dummy,$dat_file_auth,$dummy) = split(/,/,$root[0]);
}else{
	#エラー画面表示。
	&error("システム情報がありません。");
	exit;
}
##################################################
# ログファイル名精査。
##################################################
foreach (@log_files){

	#ログファイル名マッチング。
	if($_ =~ /^(\d\d\d\d)(\d\d)(\d\d).cgi/){

		#年月日を取得。
		push(@ymd_files,"$1/$2/$3");

		#年月が重複しない処理フラグ。
		my $flag = 0;

		foreach (@ym_files){
			if($_ eq "$1/$2"){
				$flag = 1;
			}
		}

		if($flag == 0){
			#年月を取得。
			push(@ym_files,"$1/$2");
		}
	}
}
##################################################
# デコード処理。
##################################################
&decode;
##################################################
# ヘッダー表示。
##################################################
if($mode ne "download"){
	&header;
}
##################################################
# 表示モード判別。
##################################################
if($mode eq ""){
	#初期表示。
	&login;
}else{
	if($sunfirst eq ""){
		#ログイン経過時間がない場合。
		&login;
	}else{

		if($sunfirst ne "analysis"){

			#ログイン経過時間チェック。
			my $check_login = &checkLogin($sunfirst);

			#ログイン時間が大幅に過ぎていたらログイン画面表示。
			if($check_login ne "1"){
				&login;
			}
		}
	}

	if($mode eq "login"){
		if($pswd eq ""){
			#パスワード情報がない場合。
			&login;
		}elsif($pswd ne ""){

			#パスワードチェック。
			my $check_pswd = &checkPswd($pswd);

			if($check_pswd ne "1"){
				#パスワードが認証できなかったらエラー画面表示。
				&error("パスワードが認証できません");
			}else{
				#解析モード画面表示。
				&index;
			}
		}
	}

	if($mode eq "wait"){
		if($submit eq "管理画面へ"){
			#管理画面表示。
			&admin;
		}else{
			#解析モード結果待ち表示。
			&putWait;
		}
	}
}
##################################################
# 日でのアクセス解析。
##################################################
if($range eq "day"){

	#ログファイル名マッチング。
	$ymd_file =~ /^(\d\d\d\d)\/(\d\d)\/(\d\d)/;

	#ログファイルを読み込み。
	open(IN,"<$logdir$1$2$3.cgi");
	flock(IN,1);		#ファイルを読み出しロック。
	while(<IN>){

		#最後の[CR/LF]除去。
		chomp($_);

		#データが存在していた場合。
		if($_ ne ""){

			#ログ情報を分割。
			my(@log_data) = split(/,/,$_);

			#ログ情報が全て存在している場合は正しいデータとして取り扱う。
			if($log_data[0] ne "" 
			&& $log_data[1] ne "" 
			&& $log_data[2] ne "" 
			&& $log_data[3] ne "" 
			&& $log_data[4] ne "" 
			&& $log_data[5] ne "" 
			&& $log_data[5] =~ /^\d{10}/){

				#ブラウザ情報の置換。#（クロスサイトスクリプティング対応）
				$log_data[4] =~ s/</&lt;/g;
				$log_data[4] =~ s/>/&gt;/g;
				$log_data[4] =~ s/\&\#44\;/\,/g;

				my $tmp_page_name       = "";
				my $tmp_referrer_server = "";
				my $tmp_engin           = "";
				my $tmp_keyword         = "";
				my $tmp_host_name       = "";
				my $tmp_os              = "";
				my $tmp_agent           = "";
				my $tmp_time            = "";
				my $line_data           = "";

				if($sentence1 eq ""
				&& $sentence2 eq ""
				&& $sentence3 eq ""
				&& $sentence4 eq ""
				&& $sentence5 eq ""
				&& $sentence6 eq ""
				&& $sentence7 eq ""){

					#ページ名を取得することができた有効なログ件数。
					$tmp_page_name = $log_data[0];

					#リンク元を取得することができた有効なログ件数。
					if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
						$tmp_referrer_server = &getReferrerServer($log_data[4]);
					}

					#検索サイトを取得することができた有効なログ件数。
					$tmp_engin = &getSearchEngin($log_data[4]);

					#検索キーワードを取得することができた有効なログ件数。
					if($log_data[4] =~ /\?/){
						$tmp_keyword = &getSearchWord($log_data[4]);
					}

					#ホストを取得することができた有効なログ件数。
					$tmp_host_name = $log_data[1];

					my ($tmp1,$tmp2) = &getAgentName($log_data[3]);

					#OSを取得することができた有効なログ件数。
					$tmp_os = $tmp1;

					#ブラウザを取得することができた有効なログ件数。
					$tmp_agent = $tmp2;

					$tmp_time  = $log_data[5];
					$line_data = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

					push(@tmp1,$log_data[1]);
					push(@tmp2,$log_data[3]);
					push(@lines,$line_data);

				}else{

					$tmp_page_name       = $log_data[0];
					if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
						$tmp_referrer_server = &getReferrerServer($log_data[4]);
					}
					$tmp_engin           = &getSearchEngin($log_data[4]);
					if($log_data[4] =~ /\?/){
						$tmp_keyword = &getSearchWord($log_data[4]);
					}
					$tmp_host_name       = $log_data[1];
					($tmp_os,$tmp_agent) = &getAgentName($log_data[3]);
					$tmp_time            = $log_data[5];
					$line_data           = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

					my $examination = &examination($line_data);

					if($examination == 1){

						push(@tmp1,$log_data[1]);
						push(@tmp2,$log_data[3]);
						push(@lines,$line_data);

					}
				}
			}
		}
	}
	flock(IN,8);		#ロック解除。
	close(IN);

	#ログ情報をソート。
	@lines = @lines[sort {$tmp1[$a] cmp $tmp1[$b] or $tmp2[$a] cmp $tmp2[$b]} 0 .. $#tmp1];

	#比較ログファイル情報を初期化。
	my @tmp_data = ();

	#ログ情報精査フラグを初期化。
	my $equ = 0;

	#アクセス数を初期化。
	my $count = 0;

	#ログファイルを精査。
	foreach (@lines){

		#ログファイル情報を分割。
		my (@log_data) = split(/\,/,$_);

		#ホスト名、ブラウザ情報が同じ場合はカウントしない。
		if($log_data[4] eq "$tmp_data[0]" && "$log_data[6]" eq "$tmp_data[1]"){

			#ログ情報精査フラグを立てる。
			$equ = 1;

		}

		if($equ == 0){

			#ホスト名、ブラウザ情報の取得。
			@tmp_data = ($log_data[4],$log_data[6]);

			#アクセス数取得。
			$count++;

		}else{

			#ログ情報精査フラグを初期化。
			$equ = 0;

		}
	}


	#月/日を形成。
	my $md = "$2/$3";

	#日付付き配列を形成。
	$uniq_user{$md} = $count;

	#配列を初期化。
	undef(@tmp_data);
	undef(@tmp1);
	undef(@tmp2);

	#配列を代入。
	push(@lists,@lines);

	#配列を初期化。
	undef(@lines);

	#表示の設定。
	$ymd = "$1年$2月$3日";
}
##################################################
# 週でのアクセス解析。
##################################################
if($range eq "week"){

	#日別の解析数の初期化。
	my $i = 0;

	#[～1週間前]での解析。
	if($week_file eq "0") {$i = 0;}

	#[1週間前～2週間前]での解析。

	if($week_file eq "7") {$i = 7;}
	#[2週間前～3週間前]での解析。

	if($week_file eq "14"){$i = 14;}

	#[3週間前～4週間前]での解析。
	if($week_file eq "21"){$i = 21;}

	#日の配列の形成。
	my @day = (0..6);

	#年月日情報の初期化。
	my @week_files = ();

	#日の配列を精査し年月日を取得。
	foreach (@day){

		#時間数のカウント。
		my $count = 24 * $i;

		#localtime関数で差し引いた日付を取得。（秒、分、時、日、月、年、曜日、1月1日からの経過年数、サマータイム期間中は1）
		my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime(time - $count * 3600);

		#フォーマット変更。（20060101）
		my $date = sprintf("%04d%02d%02d",$year + 1900,$month + 1,$mday);

		#年月日を配列に代入。
		push(@week_files,"$date");

		#カウントアップ。
		$i++;
	}

	#取得した年月日を精査。
	foreach my $y(sort @week_files){

		#ファイル有無判別。
		unless(-e "$logdir$y.cgi"){
			next;
		}

		#ログファイルを読み込み。
		open(IN,"<$logdir$y.cgi");
		flock(IN,1);		#ファイルを読み出しロック。
		while(<IN>){

			#最後の[CR/LF]除去。
			chomp($_);

			#データが存在していた場合。
			if($_ ne ""){

				#ログ情報を分割。
				my (@log_data) = split(/,/,$_);

				#ログ情報が全て存在している場合は正しいデータとして取り扱う。
				if($log_data[0] ne "" 
				&& $log_data[1] ne "" 
				&& $log_data[2] ne "" 
				&& $log_data[3] ne "" 
				&& $log_data[4] ne "" 
				&& $log_data[5] ne "" 
				&& $log_data[5] =~ /^\d{10}/){

					#ブラウザ情報の置換。#（クロスサイトスクリプティング対応）
					$log_data[4] =~ s/</&lt;/g;
					$log_data[4] =~ s/>/&gt;/g;
					$log_data[4] =~ s/\&\#44\;/\,/g;

					my $tmp_page_name       = "";
					my $tmp_referrer_server = "";
					my $tmp_engin           = "";
					my $tmp_keyword         = "";
					my $tmp_host_name       = "";
					my $tmp_os              = "";
					my $tmp_agent           = "";
					my $tmp_time            = "";
					my $line_data           = "";

					if($sentence1 eq ""
					&& $sentence2 eq ""
					&& $sentence3 eq ""
					&& $sentence4 eq ""
					&& $sentence5 eq ""
					&& $sentence6 eq ""
					&& $sentence7 eq ""){

						#ページ名を取得することができた有効なログ件数。
						$tmp_page_name = $log_data[0];

						#リンク元を取得することができた有効なログ件数。
						if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
							$tmp_referrer_server = &getReferrerServer($log_data[4]);
						}

						#検索サイトを取得することができた有効なログ件数。
						$tmp_engin = &getSearchEngin($log_data[4]);

						#検索キーワードを取得することができた有効なログ件数。
						if($log_data[4] =~ /\?/){
							$tmp_keyword = &getSearchWord($log_data[4]);
						}

						#ホストを取得することができた有効なログ件数。
						$tmp_host_name = $log_data[1];

						my ($tmp1,$tmp2) = &getAgentName($log_data[3]);

						#OSを取得することができた有効なログ件数。
						$tmp_os = $tmp1;

						#ブラウザを取得することができた有効なログ件数。
						$tmp_agent = $tmp2;

						$tmp_time  = $log_data[5];
						$line_data = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

						push(@tmp1,$log_data[1]);
						push(@tmp2,$log_data[3]);
						push(@lines,$line_data);

					}else{

						$tmp_page_name       = $log_data[0];
						if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
							$tmp_referrer_server = &getReferrerServer($log_data[4]);
						}
						$tmp_engin           = &getSearchEngin($log_data[4]);
						if($log_data[4] =~ /\?/){
							$tmp_keyword = &getSearchWord($log_data[4]);
						}
						$tmp_host_name       = $log_data[1];
						($tmp_os,$tmp_agent) = &getAgentName($log_data[3]);
						$tmp_time            = $log_data[5];
						$line_data           = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

						my $examination = &examination($line_data);

						if($examination == 1){

							push(@tmp1,$log_data[1]);
							push(@tmp2,$log_data[3]);
							push(@lines,$line_data);

						}
					}
				}
			}
		}
		flock(IN,8);		#ロック解除。
		close(IN);

		#ログ情報をソート。
		@lines = @lines[sort {$tmp1[$a] cmp $tmp1[$b] or $tmp2[$a] cmp $tmp2[$b]} 0 .. $#tmp1];

		#比較ログファイル情報を初期化。
		my @tmp_data = ();

		#ログ情報精査フラグを初期化。
		my $equ = 0;

		#アクセス数を初期化。
		my $count = 0;

		#ログファイルを精査。
		foreach (@lines){

			#ログファイル情報を分割。
			my (@log_data) = split(/\,/,$_);

			#ホスト名、ブラウザ情報が同じ場合はカウントしない。
			if($log_data[4] eq "$tmp_data[0]" && "$log_data[6]" eq "$tmp_data[1]"){

				#ログ情報精査フラグを立てる。
				$equ = 1;

			}

			if($equ == 0){

				#ホスト名、ブラウザ情報の取得。
				@tmp_data = ($log_data[4],$log_data[6]);

				#アクセス数取得。
				$count++;

			}else{

				#ログ情報精査フラグを初期化。
				$equ = 0;

			}
		}

		#日と月を取得。
		my $day   = substr($y,6,2);
		my $month = substr($y,4,2);

		#月/日を形成。
		my $md = "$month/$day";

		#日付付き配列を形成。
		$uniq_user{$md} = $count;

		#配列を初期化。
		undef(@tmp_data);
		undef(@tmp1);
		undef(@tmp2);

		#配列を代入。
		push(@lists,@lines);

		#配列を初期化。
		undef(@lines);
	}

	#表示の設定。
	my $year1  = substr(@week_files[0],0,4);
	my $month1 = substr(@week_files[0],4,2);
	my $day1   = substr(@week_files[0],6,2);

	my $tmp_ymd = pop @week_files;
	my $year2   = substr($tmp_ymd,0,4);
	my $month2  = substr($tmp_ymd,4,2);
	my $day2    = substr($tmp_ymd,6,2);

	$ymd = "$year2年$month2月$day2日～$year1年$month1月$day1日";
}
##################################################
# 月でのアクセス解析。
##################################################
if($range eq "month"){

	#年月を取得。
	my ($year,$month) = split(/\//,$ym_file);

	#ログファイル名精査。
	foreach (sort @log_files){

		#ログファイル名マッチング。
		if($_ =~ /^$year$month(\d\d).cgi/){

			#ログファイルを読み込み。
			open(IN,"$logdir$year$month$1".".cgi");
			flock(IN,1);		#ファイルを読み出しロック。
			foreach (<IN>){

				#最後の[CR/LF]除去。
				chomp($_);

				#データが存在していた場合。
				if($_ ne ""){

					#ログ情報を分割。
					my (@log_data) = split(/,/,$_);

					#ログ情報が全て存在している場合は正しいデータとして取り扱う。
					if($log_data[0] ne "" 
					&& $log_data[1] ne "" 
					&& $log_data[2] ne "" 
					&& $log_data[3] ne "" 
					&& $log_data[4] ne "" 
					&& $log_data[5] ne "" 
					&& $log_data[5] =~ /^\d{10}/){

						#ブラウザ情報の置換。#（クロスサイトスクリプティング対応）
						$log_data[4] =~ s/</&lt;/g;
						$log_data[4] =~ s/>/&gt;/g;
						$log_data[4] =~ s/\&\#44\;/\,/g;

						my $tmp_page_name       = "";
						my $tmp_referrer_server = "";
						my $tmp_engin           = "";
						my $tmp_keyword         = "";
						my $tmp_host_name       = "";
						my $tmp_os              = "";
						my $tmp_agent           = "";
						my $tmp_time            = "";
						my $line_data           = "";

						if($sentence1 eq ""
						&& $sentence2 eq ""
						&& $sentence3 eq ""
						&& $sentence4 eq ""
						&& $sentence5 eq ""
						&& $sentence6 eq ""
						&& $sentence7 eq ""){

							#ページ名を取得することができた有効なログ件数。
							$tmp_page_name = $log_data[0];

							#リンク元を取得することができた有効なログ件数。
							if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
								$tmp_referrer_server = &getReferrerServer($log_data[4]);
							}

							#検索サイトを取得することができた有効なログ件数。
							$tmp_engin = &getSearchEngin($log_data[4]);

							#検索キーワードを取得することができた有効なログ件数。
							if($log_data[4] =~ /\?/){
								$tmp_keyword = &getSearchWord($log_data[4]);
							}

							#ホストを取得することができた有効なログ件数。
							$tmp_host_name = $log_data[1];

							my ($tmp1,$tmp2) = &getAgentName($log_data[3]);

							#OSを取得することができた有効なログ件数。
							$tmp_os = $tmp1;

							#ブラウザを取得することができた有効なログ件数。
							$tmp_agent = $tmp2;

							$tmp_time  = $log_data[5];
							$line_data = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

							push(@tmp1,$log_data[1]);
							push(@tmp2,$log_data[3]);
							push(@lines,$line_data);

						}else{

							$tmp_page_name       = $log_data[0];
							if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
								$tmp_referrer_server = &getReferrerServer($log_data[4]);
							}
							$tmp_engin           = &getSearchEngin($log_data[4]);
							if($log_data[4] =~ /\?/){
								$tmp_keyword = &getSearchWord($log_data[4]);
							}
							$tmp_host_name       = $log_data[1];
							($tmp_os,$tmp_agent) = &getAgentName($log_data[3]);
							$tmp_time            = $log_data[5];
							$line_data           = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

							my $examination = &examination($line_data);

							if($examination == 1){

								push(@tmp1,$log_data[1]);
								push(@tmp2,$log_data[3]);
								push(@lines,$line_data);

							}
						}
					}
				}
			}
			flock(IN,8);		#ロック解除。
			close(IN);

			#ログ情報をソート。
			@lines = @lines[sort {$tmp1[$a] cmp $tmp1[$b] or $tmp2[$a] cmp $tmp2[$b]} 0 .. $#tmp1];

			#比較ログファイル情報を初期化。
			my @tmp_data = ();

			#ログ情報精査フラグを初期化。
			my $equ = 0;

			#アクセス数を初期化。
			my $count = 0;

			#ログファイルを精査。
			foreach (@lines){

				#ログファイル情報を分割。
				my (@log_data) = split(/\,/,$_);

				#ホスト名、ブラウザ情報が同じ場合はカウントしない。
				if($log_data[4] eq "$tmp_data[0]" && "$log_data[6]" eq "$tmp_data[1]"){

					#ログ情報精査フラグを立てる。
					$equ = 1;

				}

				if($equ == 0){

					#ホスト名、ブラウザ情報の取得。
					@tmp_data = ($log_data[4],$log_data[6]);

					#アクセス数取得。
					$count++;

				}else{

					#ログ情報精査フラグを初期化。
					$equ = 0;

				}
			}

			#月/日を形成。
			my $md = "$month/$1";

			#日付付き配列を形成。
			$uniq_user{$md} = $count;

			#配列を初期化。
			undef(@tmp_data);
			undef(@tmp1);
			undef(@tmp2);

			#配列を代入。
			push(@lists,@lines);

			#配列を初期化。
			undef(@lines);
		}
	}

	#配列を初期化。
	undef(@log_files);

	#表示の設定。
	$ymd = "$year年$month月";
}
##################################################
# アクセス情報の精査。
##################################################
if($select eq "log"){

	my @sort = ();

	foreach my $log(@lists){

		#最後の[CR/LF]除去。
		chomp($log);

		#アクセス情報の分割。
		my ($tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time) = split(/\,/,$log);

		push(@sort,$tmp_time);

	}

	@lists = @lists[sort {$sort[$a] <=> $sort[$b]} 0 .. $#sort];

	undef(@sort);

}elsif($select ne "log"){

	foreach my $log(@lists){

		#ページ数カウントアップ。
		$pv++;

		#最後の[CR/LF]除去。
		chomp($log);

		#アクセス情報の分割。
		my ($tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time) = split(/\,/,$log);

		#日付のフォーマット変更。
		my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime($tmp_time);

		#日の桁合わせ。
		if($mday < 10){
			$mday = "0$mday";
		}

		#月の（+1）。
		$month = $month + 1;

		#月の桁合わせ。
		if($month < 10){
			$month = "0$month";
		}

		#月/日を形成。
		my $md = "$month/$mday";

		#日別ログ件数。
		if($md ne ""){

			#日別アクセス数。
			$dms{($md)[0]}++;

			#アクセス数。
			$dmp++;
		}

		#曜日別ログ件数。
		if($wday ne ""){

			#曜日別アクセス数。
			$youbis{($wday)[0]}++;

			#アクセス数。
			$youbip++;
		}

		#時の桁合わせ。
		if($hour < 10){
			$hour = "0$hour";
		}

		#時間別ログ件数。
		if($hour ne ""){

			#時間別アクセス数。
			$hours{($hour)[0]}++;

			#アクセス数。
			$hourp++;
		}

		#ページ名を取得することができた有効なログ件数。
		if($page eq "on"){

			if($tmp_page_name ne ""){

				#ページ別アクセス数。
				$pages{($tmp_page_name)[0]}++;

				#アクセス数。
				$pagep++;
			}
		}

		#リンク元を取得することができた有効なログ件数。
		if($referrer eq "on"){

			if($tmp_referrer_server ne ""){

				#リンク元別アクセス数。
				$referrer_servers{($tmp_referrer_server)[0]}++;

				#アクセス数。
				$referrer_serverp++;
			}
		}

		#検索サイトを取得することができた有効なログ件数。
		if($search_engin eq "on"){

			if($tmp_engin ne ""){

				#検索サイト別アクセス数。
				$engins{($tmp_engin)[0]}++;

				#アクセス数。
				$enginp++;
			}
		}

		#検索キーワードを取得することができた有効なログ件数。
		if($search_keyword eq "on"){

			if($tmp_keyword ne ""){

				#検索キーワード別アクセス数。
				$keywords{($tmp_keyword)[0]}++;

				#アクセス数。
				$keywordp++;
			}
		}

		#ホストを取得することができた有効なログ件数。
		if($host_name eq "on"){

			if($tmp_host_name ne ""){

				#ホスト別アクセス数。
				$host_names{($tmp_host_name)[0]}++;

				#アクセス数。
				$host_namep++;
			}
		}

		#OSを取得することができた有効なログ件数。
		if($os eq "on"){

			if($tmp_os ne ""){

				#OS別アクセス数。
				$os_names{($tmp_os)[0]}++;

				#アクセス数。
				$os_namep++;
			}
		}

		#ブラウザを取得することができた有効なログ件数。
		if($agent eq "on"){

			if($tmp_agent ne ""){

				#ブラウザ別アクセス数。
				$agent_names{($tmp_agent)[0]}++;

				#アクセス数。
				$agent_namep++;
			}
		}
	}
}
##################################################
# 各項目のデータが無い場合の初期化。
##################################################
if($pagep eq "")           {$pagep            = 0;}
if($referrer_serverp eq ""){$referrer_serverp = 0;}
if($enginp eq "")          {$enginp           = 0;}
if($keywordp eq "")        {$keywordp         = 0;}
if($host_namep eq "")      {$host_namep       = 0;}
if($os_namep eq "")        {$os_namep         = 0;}
if($agent_namep eq "")     {$agent_namep      = 0;}
##################################################
# 表示モード判別。
##################################################
if($mode ne ""){

	if($mode eq "index"){
		if($type eq "page")          {&logView("page");}
		if($type eq "referrerServer"){&logView("referrerServer");}
		if($type eq "search_engin")  {&logView("search_engin");}
		if($type eq "os")            {&logView("os");}
		if($type eq "agent")         {&logView("agent");}
		if($type eq "searchWord")    {&logView("searchWord");}
		if($type eq "hostName")      {&logView("hostName");}
		if($type eq ""){
			if($select eq "graph"){
				#アクセス履歴の集計表示。
				&putAnalysis;
			}elsif($select eq "log"){
				#アクセス履歴の一覧表示。
				&putLog;
			}elsif($select eq ""){
				#解析モード画面表示。
				&index;
			}
		}
	}
	if($mode eq "admin")         {&admin;}
	if($mode eq "set_pswd")      {&setPswd;}
	if($mode eq "set_reject")    {&setReject;}
	if($mode eq "delete_file")   {&deleteFile;}
	if($mode eq "download_file") {&downloadFile;}
	if($mode eq "download")      {&download;}
	if($mode eq "error")         {&error;}

}
##################################################
# decode
# デコード処理。
##################################################
sub decode{

	if($ENV{'REQUEST_METHOD'} eq "POST"){

		#データ送信方法がPOSTの場合。

		#バイナリモードで読むようにする。
		binmode(STDIN);

		#POSTされたデータをバイナリでバッファに保存。
		read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});

	}else{

		#データ送信方法がGETの場合。

		#パラメータ情報をバッファに保存。
		$buffer = $ENV{'QUERY_STRING'};

	}

	#送信内容がファイルの場合。
	if($ENV{'CONTENT_TYPE'} =~ /multipart\/form-data; boundary=(.*)/){

		#送信内容がファイルの場合。
		&uploadFile($buffer);

	}else{

		#送信内容がファイルではない場合。

		#バッファを「&」別で配列に保存。
		my(@pairs) = split(/&/,$buffer);

		#バッファデータ精査。
		foreach my $pair(@pairs){

			#バッファデータをパラメータ名、データに分ける。
			my($name,$value) = split(/=/,$pair);

			#パラメータ名取得の処理。
			$value =~ tr/+/ /;
			$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

			#文字コード変換。
			&jcode'h2z_sjis(*value);
			&jcode'convert(*value,'sjis');

			#タグ処理。(クロスサイトスクリプティング対応)
			$value     =~ s/\"/&quot;/g;
			$value     =~ s/</&lt;/g;
			$value     =~ s/>/&gt;/g;
			$value     =~ s/\r\n/<br>/g;
			$value     =~ s/\r/<br>/g;
			$value     =~ s/\n/<br>/g;
			$value     =~ s/\r//g;
			$value     =~ s/\n//g;
			$value     =~ s/\,/\&\#44\;/g;
			$value     =~ s/\&/\#38;/g;
			$in{$name} = $value;

			#ファイル名を配列に代入。
			if($name eq "file"){
				push(@filedata,$in{$name});
			}

		}

		#取得情報を各変数に代入。
		$mode           = $in{'mode'};
		$sunfirst       = $in{'sunfirst'};
		$action         = $in{'action'};
		$range          = $in{'range'};
		$select         = $in{'select'};
		$pswd           = $in{'pswd'};
		$ymd_file       = $in{'ymd_file'};
		$week_file      = $in{'week_file'};
		$month_file     = $in{'month_file'};
		$ym_file        = $in{'ym_file'};
		$page           = $in{'page'};
		$referrer       = $in{'referrer'};
		$search_engin   = $in{'search_engin'};
		$search_keyword = $in{'search_keyword'};
		$host_name      = $in{'host_name'};
		$os             = $in{'os'};
		$agent          = $in{'agent'};
		$execution      = $in{'execution'};
		$type           = $in{'type'};
		$submit         = $in{'submit'};
		$no             = $in{'no'};
		$sentence1      = $in{'sentence1'};
		$cond1          = $in{'cond1'};
		$sentence2      = $in{'sentence2'};
		$cond2          = $in{'cond2'};
		$sentence3      = $in{'sentence3'};
		$cond3          = $in{'cond3'};
		$sentence4      = $in{'sentence4'};
		$cond4          = $in{'cond4'};
		$sentence5      = $in{'sentence5'};
		$cond5          = $in{'cond5'};
		$sentence6      = $in{'sentence6'};
		$cond6          = $in{'cond6'};
		$sentence7      = $in{'sentence7'};
		$cond7          = $in{'cond7'};

	}
}
##################################################
# examination
# ログ精査。
##################################################
sub examination{

	my ($tmp_line_data) = @_;

	my ($tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time) = split(/\,/,$tmp_line_data);

	my $sflag1      = 1;
	my $sflag2      = 1;
	my $sflag3      = 1;
	my $sflag4      = 1;
	my $sflag5      = 1;
	my $sflag6      = 1;
	my $sflag7      = 1;
	my $return_data = 0;

	if($sentence1 ne ""){

		#入力内容を整理。
		my $sword1  = $sentence1;
		$sword1     =~ s/　/ /g;
		$sword1     =~ s/\t/ /g;
		my @spairs1 = split(/ /,$sword1);

		foreach my $spair1(@spairs1){

			$spair1 =~ s/\#38;/\&/g;

			if(index($tmp_page_name,$spair1) >=0){

				$sflag1 = 1;
				if($cond1 eq "or"){
					last;
				}
			}else{
				if($cond1 eq "and"){
					$sflag1 = 0;
					last;
				}
			}
		}
	}

	if($sentence2 ne ""){

		#入力内容を整理。
		my $sword2  = $sentence2;
		$sword2     =~ s/　/ /g;
		$sword2     =~ s/\t/ /g;
		my @spairs2 = split(/ /,$sword2);

		foreach my $spair2(@spairs2){

			$spair2 =~ s/\#38;/\&/g;

			if(index($tmp_referrer_server,$spair2) >=0){

				$sflag2 = 1;
				if($cond2 eq "or"){
					last;
				}
			}else{
				if($cond2 eq "and"){
					$sflag2 = 0;
					last;
				}
			}
		}
	}

	if($sentence3 ne ""){

		#入力内容を整理。
		my $sword3  = $sentence3;
		$sword3     =~ s/　/ /g;
		$sword3     =~ s/\t/ /g;
		my @spairs3 = split(/ /,$sword3);

		foreach my $spair3(@spairs3){

			$spair3 =~ s/\#38;/\&/g;

			if(index($tmp_engin,$spair3) >=0){

				$sflag3 = 1;
				if($cond3 eq "or"){
					last;
				}
			}else{
				if($cond3 eq "and"){
					$sflag3 = 0;
					last;
				}
			}
		}
	}

	if($sentence4 ne ""){

		#入力内容を整理。
		my $sword4  = $sentence4;
		$sword4     =~ s/　/ /g;
		$sword4     =~ s/\t/ /g;
		my @spairs4 = split(/ /,$sword4);

		foreach my $spair4(@spairs4){

			$spair4 =~ s/\#38;/\&/g;

			if(index($tmp_keyword,$spair4) >=0){

				$sflag4 = 1;
				if($cond4 eq "or"){
					last;
				}
			}else{
				if($cond4 eq "and"){
					$sflag4 = 0;
					last;
				}
			}
		}
	}

	if($sentence5 ne ""){

		#入力内容を整理。
		my $sword5  = $sentence5;
		$sword5     =~ s/　/ /g;
		$sword5     =~ s/\t/ /g;
		my @spairs5 = split(/ /,$sword5);

		foreach my $spair5(@spairs5){

			$spair5 =~ s/\#38;/\&/g;

			if(index($tmp_host_name,$spair5) >=0){

				$sflag5 = 1;
				if($cond5 eq "or"){
					last;
				}
			}else{
				if($cond5 eq "and"){
					$sflag5 = 0;
					last;
				}
			}
		}
	}

	if($sentence6 ne ""){

		#入力内容を整理。
		my $sword6  = $sentence6;
		$sword6     =~ s/　/ /g;
		$sword6     =~ s/\t/ /g;
		my @spairs6 = split(/ /,$sword6);

		foreach my $spair6(@spairs6){

			$spair6 =~ s/\#38;/\&/g;

			if(index($tmp_os,$spair6) >=0){

				$sflag6 = 1;
				if($cond6 eq "or"){
					last;
				}
			}else{
				if($cond6 eq "and"){
					$sflag6 = 0;
					last;
				}
			}
		}
	}

	if($sentence7 ne ""){

		#入力内容を整理。
		my $sword7  = $sentence7;
		$sword7     =~ s/　/ /g;
		$sword7     =~ s/\t/ /g;
		my @spairs7 = split(/ /,$sword7);

		foreach my $spair7(@spairs7){

			$spair7 =~ s/\#38;/\&/g;

			if(index($tmp_agent,$spair7) >=0){

				$sflag7 = 1;
				if($cond7 eq "or"){
					last;
				}
			}else{
				if($cond7 eq "and"){
					$sflag7 = 0;
					last;
				}
			}
		}
	}

	if($sflag1 == 1 
	&& $sflag2 == 1 
	&& $sflag3 == 1 
	&& $sflag4 == 1 
	&& $sflag5 == 1 
	&& $sflag6 == 1 
	&& $sflag7 == 1 ){
		$return_data = 1;
	}

	return $return_data;
}
##################################################
# getReferrerServer
# リンク元サーバ取得。
##################################################
sub getReferrerServer{

	my $return_data = "";

	my ($http_referrer_data) = @_;

	if($http_referrer_data =~ /^(s?https?|ftp|file)(:\/\/)([a-zA-Z0-9|\.|\-|\_]*)\.([a-zA-Z0-9]*)/i){

		$return_data = "$1$2$3\.$4";
		$return_data =~ tr/A-Z/a-z/;
	}

	return $return_data;
}
##################################################
# getSearchEngin
# 検索エンジン名取得。
##################################################
sub getSearchEngin{

	my $return_data = "";

	my ($http_referrer_data) = @_;

	if($http_referrer_data    =~ /^http\:\/\/search\.msn\.co.jp/i)   {$return_data = "msn";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.google\.co\.jp/i)  {$return_data = "google";}
	elsif($http_referrer_data =~ /^http\:\/\/search\.yahoo\.co\.jp/i){$return_data = "yahoo";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.excite\.co\.jp/i)  {$return_data = "excite";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.goo\.ne.\jp/i)     {$return_data = "goo";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.fresheye\.com/i)   {$return_data = "fresheye";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.infoseek\.co\.jp/i){$return_data = "infoseek";}

	return $return_data;
}
##################################################
# getSearchWord
# 検索キーワード取得。
##################################################
sub getSearchWord{

	my (%sw) = ();

	my ($http_referrer_data) = @_;

	my (%word) = "";

	#アクセス直前のURIを[?]で分割する。
	my ($dummy,$qstr) = split(/\?/,$http_referrer_data);

	#分割したアクセス直前のURIを、さらに[&]で分割する。
	my (@ques) = split(/\&/,$qstr);

	#分割した情報を変数名、データとしてセットする。
	foreach my $que(@ques){
		my ($name,$value) = split(/=/,$que);
		$sw{$name}        = $value;
	}

	#検索キーワードの初期化。
	$word = "";

	#検索キーワードの精査。
	foreach (keys(%engn_sw)){

		#検索キーワードの取得。
		if($dummy =~ /$_/){
			$word = $sw{($engn_sw{$_})};
		}
	}

	#検索ワードをデコード。
	$word =~ tr/+/ /;

	#検索ワードがunicodeかチェック。
	if($word =~ m/%[eE][0-9a-fA-F]{1}%[0-9a-fA-F]{2}%[0-9a-fA-F]{2}%[eE][0-9a-fA-F]{1}%[0-9a-fA-F]{2}%[0-9a-fA-F]{2}/){

		#検索ワードをsjisにコンバート。
		require "./pl/simaguni.pl";

		if(&simaguni'loadbook8()){
			&simaguni'decode8(*word,'sjis');
			&simaguni'unloadbook8();
		}

	}else{

		#検索ワードをデコード。
		$word =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

		#検索ワードをsjisにコンバート。
		&jcode'convert(*word,'sjis');

	}

	#アクセス直前のURI情報を初期化。
	undef(%sw);

	#検索ワードのカンマ置換。
	$word =~ s/\,/&#44;/g;

	#検索ワードの全角スペース置換。
	$word =~ s/　/ /g;

	return $word;
}
##################################################
# checkLogin
# ログイン経過時間チェック。
##################################################
sub checkLogin{

	#チェックする日付を取得。
	my ($input) = @_;

	#チェックフラグを初期化。
	my $admin = 0;

	#現在日時取得。
	my $nowtime = time - $input;

	if($nowtime < 86400){
		$admin = 1;
	}

	return $admin;

}
##################################################
# checkPswd
# パスワードチェック。
##################################################
sub checkPswd{

	#パスワードファイルが存在していた場合。
	if(-e $pswd_file){

		#チェックするパスワードを取得。
		my ($input) = @_;

		#チェックフラグを初期化。
		my $admin = 0;

		#パスワードファイルの読み込み。
		open(IN,$pswd_file) || &error("管理者パスワードファイルが開けません。");
		flock(IN,1);		#ファイルを読み出しロック。
		my $master = <IN>;
		flock(IN,8);		#ロック解除。
		close(IN);

		#パスワード情報から改行を削除。
		$master =~ s/\n//;

		#パスワードのタイプを初期化。
		my $salt = 0;

		#パスワードのタイプを判別。
		if($master =~ /^\$1\$/){$salt = 3;}

		#設定パスワードと入力パスワードのチェック。
		if($master eq "" || $input eq "")                      {;}
		elsif(crypt($input,substr($master,$salt,2)) eq $master){$admin = 1;}

		return $admin;

	}else{

		#チェックするパスワードを取得。
		my ($input) = @_;

		#チェックフラグを初期化。
		my $admin = 0;

		#パスワードを「ftp_id」に設定。
		my $master = $ftp_id;

		#パスワード（ftp_id）と入力パスワードのチェック。
		if($master eq "" || $input eq ""){;}
		elsif($input eq "$master")       {$admin = 1;}

		return $admin;

	}
}
##################################################
# makePswd
# パスワードの暗号化。
##################################################
sub makePswd{

	#暗号化するパスワードを取得。
	my ($plain) = @_;

	#暗号化文字列の候補を作成。
	my @saltset = ('a'..'z','A'..'Z','0'..'9','.','/');

	#日付を取得。
	my $now = time;

	#ランダム関数初期化。（現在までの秒数|プロセス番号）
	srand(time|$$);

	#ランダム関数で擬似的に2バイトの情報を作成。
	my $f = splice(@saltset,rand(@saltset),1) . splice(@saltset,rand(@saltset),1);

	#2バイトの情報から、10進数のキャラクタコードを作成。
	my ($pert1,$pert2) = unpack("C2",$f);

	#日付 / (60 * 60 * 24 * 7) + 乱数 + 乱数 - 暗号化するパスワードの文字数。
	my $week = $now / (60 * 60 * 24 * 7) + $pert1 + $pert2 - length($plain);

	#暗号化の「種」を作成。
	my $nsalt = $saltset[$week % 64] . $saltset[$now % 64];

	#パスワードの暗号化。
	my $result = crypt($plain,$nsalt);

	#パスワードのタイプを初期化。
	my $salt = 0;

	#パスワードのタイプを判別。
	if($result =~ /^\$1\$/){$salt = 3;}

	#パスワード生成チェック。
	if(crypt($plain,substr($result,$salt,2)) ne $result || $result eq ""){
		&error("パスワードの暗号化に失敗しました。再度実行(更新･再読み込み･リロード)してください");
	}

	return $result;
}
##################################################
# download
# ファイルダウンロード。
##################################################
sub download{

	if($execution eq "ダウンロード" || $execution eq ""){

		if($#filedata > 0){

			#ファイル内容変数の初期化。
			my @tmpData;

			foreach (@filedata){

				#ログファイルが存在していた場合。
				if(-e "$logdir$_"){

					#ログ情報読み込み。
					open(IN,"$logdir$_");
					flock(IN,1);		#ファイルを読み出しロック。
					my @rd = <IN>;
					flock(IN,8);		#ロック解除。
					close(IN);
					push(@tmpData,@rd);

				}
			}

			#ダウンロードダイアログ表示。
			print"Content-disposition: attachment; filename=\"download.cgi\"\n";
			print"Content-type: text/download\n\n";
			print @tmpData;
			exit;

		}elsif($#filedata == 0){

			#ログファイルが存在していた場合。
			if(-e "$logdir$filedata[0]"){

				#ログ情報読み込み。
				open(IN,"$logdir$filedata[0]");
				flock(IN,1);		#ファイルを読み出しロック。
				my @tmpData = <IN>;
				flock(IN,8);		#ロック解除。
				close(IN);

				#ダウンロードダイアログ表示。
				print"Content-disposition: attachment; filename=\"$filedata[0]\"\n";
				print"Content-type: text/download\n\n";
				print @tmpData;
				exit;

			}

		}elsif($#filedata < 0){

			&header;
			&error("ファイルを選択してください。");
			exit;

		}

	}elsif($execution eq "すべてダウンロード"){

		#ファイル内容変数の初期化。
		my @tmpData;

		#ログファイル名の精査。
		foreach (@log_files){

			#ログファイルが存在していた場合。
			if(-e "$logdir$_.cgi"){

				#ログ情報読み込み。
				open(IN,"$logdir$_");
				flock(IN,1);		#ファイルを読み出しロック。
				my @rd = <IN>;
				flock(IN,8);		#ロック解除。
				close(IN);
				push(@tmpData,@rd);

			}
		}

		#ダウンロードダイアログ表示。
		print"Content-disposition: attachment; filename=\"download.cgi\"\n";
		print"Content-type: text/download\n\n";
		print @tmpData;
		exit;

	}elsif($execution eq "削除"){

		if($#filedata >= 0){

			#削除するファイル名変数の初期化。
			my @delete = ();

			#ログファイル名の精査。
			foreach (@filedata){
				push(@delete,"$logdir$_")
			}

			#ファイルを削除する。
			unlink @delete;

			print"Location: $script?mode=download_file&sunfirst=$sunfirst&ym_file=$ym_file\n\n";
			exit;

		}elsif($#filedata < 0){

			&header;
			&error("ファイルを選択してください。");
			exit;

		}
	}
}
##################################################
# uploadFile
# ファイルアップロード。
##################################################
sub uploadFile{

	#ローカル変数の初期化。
	my (%ctype,$tmp_mode,$tmp_sunfirst,$tmpData,%writeData);

	#バッファデータを分割。
	my (@form_data) = split(/\r?\n?--(.*)\r\n/,$buffer);

	#バッファデータを精査。
	foreach my $part(@form_data){

		#ファイルデータ定義。
		my $data = $part;
		$data =~ s/^Content-(.*)\r\n//mg;
		$data =~ s/^\r\n//m;

		#ファイル名初期化。
		my $mname = "";

		#バッファデータをさらに分割。
		my (@part) = split(/\r\n/,$part);

		#バッファデータをさらに精査。
		while(($_ = shift(@part)) ne ""){

			#データ取得開始。
			if(/^Content-Disposition: /i){

				my (@disposition) = split(/; /);

				foreach (@disposition){

					if(/^name=(\S*)/){

						$mname = $1;
						$mname =~ s/^"(.*)"$/$1/;

					}
				}

			}elsif(/^Content-Type: (\S*)/i){

				$ctype{$mname} = $1;

			}

			#パラメータ情報設定。
			if($mname eq "mode"){

				$tmp_mode = join("",@part);

			}elsif($mname eq "sunfirst"){

				$tmp_sunfirst = join("",@part);

			}elsif($mname eq "upFile"){

				$tmpData = $data;
			}

		}
	}

	if($tmpData eq ""){

		&header;
		&error("ファイルが0バイトです。");
		exit;

	}

	#ファイル内容精査。
	if($ctype{'upFile'} eq "application\/octet-stream"){

		my @readData = split(/\n/,$tmpData);
		my @ymdData = ();
		foreach (@readData){

			my ($dummy,$dummy,$dummy,$dummy,$dummy,$times) = split(/,/,$_);

			#日付のフォーマット変更。
			my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime($times);

			#フォーマット変更。（20060101）
			my $date = sprintf("%04d%02d%02d",$year + 1900,$month + 1,$mday);

			$writeData{$date} .= $_;
			$writeData{$date} .= "\n";

		}

		foreach (keys(%writeData)){

			#ログファイルを書き込み。
			open(OUT, "> $logdir$_\.cgi");		# 読み書きモードで開く
			flock(OUT, 2);				# ロック確認。ロック
			seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
			print OUT $writeData{$_};		# 書き込む
			truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
			close(OUT);				# closeすれば自動でロック解除

		}

	}

	print"Location: $script?mode=admin&sunfirst=$tmp_sunfirst\n\n";
	exit;
}

