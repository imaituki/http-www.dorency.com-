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

#パラメータ情報による動作条件の制御を行う。

use strict;
use KCatch;
use CGI qw( :standard );

use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
use vars qw(@page_kind $pnm00 $knm00 $pnm10 $knm10 $pnm11 $knm11 $pnm12 $knm12 $pnm13 $knm13 $pnm14 $knm14 $pnm15 $knm15 $pnm20 $knm20 $pnm21 $knm21 $pnm22 $knm22 $pnm23 $knm23 $pnm24 $knm24 $pnm25 $knm25 $pnm30 $knm30 $pnm31 $knm31 $pnm32 $knm32 $pnm33 $knm33 $pnm34 $knm34 $pnm35 $knm35 $pnm40 $knm40 $pnm41 $knm41 $pnm42 $knm42 $pnm43 $knm43 $pnm44 $knm44 $pnm45 $knm45 $pnm50 $knm50 $pnm51 $knm51 $pnm52 $knm52 $pnm53 $knm53 $pnm54 $knm54 $pnm55 $knm55);

#サイトサーバー設定情報の読み込み。
if(-e "./root.ini"){
	open(IN,"./root.ini");
	flock(IN,1);		#ファイルを読み出しロック。
	@root = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);
	($site_name,$site_folder,$ftp_address,$html_host,$cgi_host,$ftp_id,$ftp_pass,$html_address,$cgi_address,$perl,$sendmail,$imgdir,$page_pass,$rootdir,$html_auth,$cgi_dir_auth,$cgi_file_auth,$dat_file_auth,$csv_file_auth) = split(/,/,$root[0]);
}

#サイト内ページ情報ファイル読み込み。
if(-e "$rootdir/constraction/page.dat"){
	open(IN,"$rootdir/constraction/page.dat");
	flock(IN,1);		#ファイルを読み出しロック。
	@page_kind = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);
	($pnm00,$knm00,$pnm10,$knm10,$pnm11,$knm11,$pnm12,$knm12,$pnm13,$knm13,$pnm14,$knm14,$pnm15,$knm15,$pnm20,$knm20,$pnm21,$knm21,$pnm22,$knm22,$pnm23,$knm23,$pnm24,$knm24,$pnm25,$knm25,$pnm30,$knm30,$pnm31,$knm31,$pnm32,$knm32,$pnm33,$knm33,$pnm34,$knm34,$pnm35,$knm35,$pnm40,$knm40,$pnm41,$knm41,$pnm42,$knm42,$pnm43,$knm43,$pnm44,$knm44,$pnm45,$knm45,$pnm50,$knm50,$pnm51,$knm51,$pnm52,$knm52,$pnm53,$knm53,$pnm54,$knm54,$pnm55,$knm55) = split(/,/,$page_kind[0]);
}

my @formBase = ();

for(my $category = 1 ; $category <= 5 ; $category++){

	for(my $page = 0 ; $page <= 5 ; $page++){

		my $kind       = "";
		my $page_title = "";

		#ページ種類での変数設定。
		if($category eq "1" && $page eq "0"){$kind = "$knm10"; $page_title = "$pnm10";}
		if($category eq "1" && $page eq "1"){$kind = "$knm11"; $page_title = "$pnm11";}
		if($category eq "1" && $page eq "2"){$kind = "$knm12"; $page_title = "$pnm12";}
		if($category eq "1" && $page eq "3"){$kind = "$knm13"; $page_title = "$pnm13";}
		if($category eq "1" && $page eq "4"){$kind = "$knm14"; $page_title = "$pnm14";}
		if($category eq "1" && $page eq "5"){$kind = "$knm15"; $page_title = "$pnm15";}
		if($category eq "2" && $page eq "0"){$kind = "$knm20"; $page_title = "$pnm20";}
		if($category eq "2" && $page eq "1"){$kind = "$knm21"; $page_title = "$pnm21";}
		if($category eq "2" && $page eq "2"){$kind = "$knm22"; $page_title = "$pnm22";}
		if($category eq "2" && $page eq "3"){$kind = "$knm23"; $page_title = "$pnm23";}
		if($category eq "2" && $page eq "4"){$kind = "$knm24"; $page_title = "$pnm24";}
		if($category eq "2" && $page eq "5"){$kind = "$knm25"; $page_title = "$pnm25";}
		if($category eq "3" && $page eq "0"){$kind = "$knm30"; $page_title = "$pnm30";}
		if($category eq "3" && $page eq "1"){$kind = "$knm31"; $page_title = "$pnm31";}
		if($category eq "3" && $page eq "2"){$kind = "$knm32"; $page_title = "$pnm32";}
		if($category eq "3" && $page eq "3"){$kind = "$knm33"; $page_title = "$pnm33";}
		if($category eq "3" && $page eq "4"){$kind = "$knm34"; $page_title = "$pnm34";}
		if($category eq "3" && $page eq "5"){$kind = "$knm35"; $page_title = "$pnm35";}
		if($category eq "4" && $page eq "0"){$kind = "$knm40"; $page_title = "$pnm40";}
		if($category eq "4" && $page eq "1"){$kind = "$knm41"; $page_title = "$pnm41";}
		if($category eq "4" && $page eq "2"){$kind = "$knm42"; $page_title = "$pnm42";}
		if($category eq "4" && $page eq "3"){$kind = "$knm43"; $page_title = "$pnm43";}
		if($category eq "4" && $page eq "4"){$kind = "$knm44"; $page_title = "$pnm44";}
		if($category eq "4" && $page eq "5"){$kind = "$knm45"; $page_title = "$pnm45";}
		if($category eq "5" && $page eq "0"){$kind = "$knm50"; $page_title = "$pnm50";}
		if($category eq "5" && $page eq "1"){$kind = "$knm51"; $page_title = "$pnm51";}
		if($category eq "5" && $page eq "2"){$kind = "$knm52"; $page_title = "$pnm52";}
		if($category eq "5" && $page eq "3"){$kind = "$knm53"; $page_title = "$pnm53";}
		if($category eq "5" && $page eq "4"){$kind = "$knm54"; $page_title = "$pnm54";}
		if($category eq "5" && $page eq "5"){$kind = "$knm55"; $page_title = "$pnm55";}

		if($kind eq "フォーム1"){

			#記事内容情報ファイル読み込み。
			if(-e "$rootdir/page_design/story/comment/$category$page.dat" && -e "$rootdir/page_design/story/rules/$category$page.dat"){

				open(IN,"$rootdir/page_design/story/comment/$category$page.dat");
				flock(IN,1);		#ファイルを読み出しロック。
				my @storycomment = <IN>;
				flock(IN,8);		# ロック解除。
				close(IN);

				foreach my $storycomment(@storycomment){

					#記事内容情報を分割。
					my ($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$storycomment);

					push(@formBase,"$title,$page_title,$category,$page\n");

				}

				undef(@storycomment);

			}

		}

	}

}

#ファイルを書き出す。
open(OUT, "> ./formBase.dat");	# 読み書きモードで開く
flock(OUT, 2);				# ロック確認。ロック
seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
print OUT @formBase;			# 書き込む
truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
close(OUT);				# closeすれば自動でロック解除

undef(@formBase);

print "Content-type: text/html;\n\n";
exit;
