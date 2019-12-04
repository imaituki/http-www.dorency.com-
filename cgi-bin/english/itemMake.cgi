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

my @itemStockBase = ();

for(my $category = 1 ; $category <= 5 ; $category++){

	for(my $page = 0 ; $page <= 5 ; $page++){

		my $kind = "";

		#ページ種類での変数設定。
		if($category eq "1" && $page eq "0"){$kind = "$knm10";}
		if($category eq "1" && $page eq "1"){$kind = "$knm11";}
		if($category eq "1" && $page eq "2"){$kind = "$knm12";}
		if($category eq "1" && $page eq "3"){$kind = "$knm13";}
		if($category eq "1" && $page eq "4"){$kind = "$knm14";}
		if($category eq "1" && $page eq "5"){$kind = "$knm15";}
		if($category eq "2" && $page eq "0"){$kind = "$knm20";}
		if($category eq "2" && $page eq "1"){$kind = "$knm21";}
		if($category eq "2" && $page eq "2"){$kind = "$knm22";}
		if($category eq "2" && $page eq "3"){$kind = "$knm23";}
		if($category eq "2" && $page eq "4"){$kind = "$knm24";}
		if($category eq "2" && $page eq "5"){$kind = "$knm25";}
		if($category eq "3" && $page eq "0"){$kind = "$knm30";}
		if($category eq "3" && $page eq "1"){$kind = "$knm31";}
		if($category eq "3" && $page eq "2"){$kind = "$knm32";}
		if($category eq "3" && $page eq "3"){$kind = "$knm33";}
		if($category eq "3" && $page eq "4"){$kind = "$knm34";}
		if($category eq "3" && $page eq "5"){$kind = "$knm35";}
		if($category eq "4" && $page eq "0"){$kind = "$knm40";}
		if($category eq "4" && $page eq "1"){$kind = "$knm41";}
		if($category eq "4" && $page eq "2"){$kind = "$knm42";}
		if($category eq "4" && $page eq "3"){$kind = "$knm43";}
		if($category eq "4" && $page eq "4"){$kind = "$knm44";}
		if($category eq "4" && $page eq "5"){$kind = "$knm45";}
		if($category eq "5" && $page eq "0"){$kind = "$knm50";}
		if($category eq "5" && $page eq "1"){$kind = "$knm51";}
		if($category eq "5" && $page eq "2"){$kind = "$knm52";}
		if($category eq "5" && $page eq "3"){$kind = "$knm53";}
		if($category eq "5" && $page eq "4"){$kind = "$knm54";}
		if($category eq "5" && $page eq "5"){$kind = "$knm55";}

		if($kind eq "ショップ1" || $kind eq "ショップ2"){

			#記事内容情報ファイル読み込み。
			if(-e "$rootdir/page_design/story/comment/$category$page.dat" && -e "$rootdir/page_design/story/rules/$category$page.dat"){

				open(IN,"$rootdir/page_design/story/comment/$category$page.dat");
				flock(IN,1);		#ファイルを読み出しロック。
				my @storycomment = <IN>;
				flock(IN,8);		# ロック解除。
				close(IN);

				open(IN,"$rootdir/page_design/story/rules/$category$page.dat");
				flock(IN,1);		#ファイルを読み出しロック。
				my @rules = <IN>;
				flock(IN,8);		# ロック解除。
				close(IN);

				my ($rls1,$rls2,$rls3,$rls4,$rls5,$rls6,$rls7,$rls8,$rls9,$rls10,$rls11,$rls12,$rls13,$rls14,$rls15,$rls16,$rls17,$rls18,$rls19,$rls20,$rls21,$rls22,$rls23,$rls24,$rls25,$rls26,$rls27,$rls28,$rls29,$rls30,$rls31,$rls32,$rls33,$rls34,$rls35,$rls36,$rls37,$rls38,$rls39,$rls40) = split(/,/,$rules[0]);

				# 11,1,サンプル記事1,1000,種類1,種類1,種類1,,

				if($rls5 ne "" && $rls6 ne ""){

					foreach my $storycomment(@storycomment){

						my(@storycomment_data) = split(/\,/,$storycomment);

						my @storycomment20 = split(/<br>/,$storycomment_data[20]);
						my @storycomment21 = split(/<br>/,$storycomment_data[21]);
						my @storycomment22 = split(/<br>/,$storycomment_data[22]);

						if($#storycomment20 != -1){

							foreach my $storycomment20(@storycomment20){

								my $unit_price = "";
								my $type       = "";

								if($storycomment20 =~ /：/){

									($unit_price,$type) = split(/：/,$storycomment20);

								}elsif($storycomment20 =~ /:/){

									($unit_price,$type) = split(/:/,$storycomment20);

								}else{

									$unit_price = $storycomment20;

								}

								if($#storycomment21 != -1 && $#storycomment22 != -1){

									foreach my $storycomment21(@storycomment21){

										foreach my $storycomment22(@storycomment22){

											push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,$storycomment21,$storycomment22,,\n");

										}

									}

								}elsif($#storycomment21 != -1 && $#storycomment22 == -1){

									foreach my $storycomment21(@storycomment21){

										push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,$storycomment21,,,\n");

									}

								}elsif($#storycomment21 == -1 && $#storycomment22 != -1){

									foreach my $storycomment22(@storycomment22){

										push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,$storycomment22,,\n");

									}

								}elsif($#storycomment21 == -1 && $#storycomment22 == -1){

									push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,,,\n");

								}

							}

						}

					}

				}elsif($rls5 ne "" && $rls6 eq ""){

					foreach my $storycomment(@storycomment){

						my(@storycomment_data) = split(/\,/,$storycomment);

						my @storycomment20 = split(/<br>/,$storycomment_data[20]);
						my @storycomment21 = split(/<br>/,$storycomment_data[21]);

						if($#storycomment20 != -1){

							foreach my $storycomment20(@storycomment20){

								my $unit_price = "";
								my $type       = "";

								if($storycomment20 =~ /：/){

									($unit_price,$type) = split(/：/,$storycomment20);

								}elsif($storycomment20 =~ /:/){

									($unit_price,$type) = split(/:/,$storycomment20);

								}else{

									$unit_price = $storycomment20;

								}

								if($#storycomment21 != -1){

									foreach my $storycomment21(@storycomment21){

										push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,$storycomment21,,,\n");

									}

								}elsif($#storycomment21 == -1){

									push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,,,\n");

								}

							}

						}

					}

				}elsif($rls5 eq "" && $rls6 ne ""){

					foreach my $storycomment(@storycomment){

						my(@storycomment_data) = split(/\,/,$storycomment);

						my @storycomment20 = split(/<br>/,$storycomment_data[20]);
						my @storycomment22 = split(/<br>/,$storycomment_data[22]);

						if($#storycomment20 != -1){

							foreach my $storycomment20(@storycomment20){

								my $unit_price = "";
								my $type       = "";

								if($storycomment20 =~ /：/){

									($unit_price,$type) = split(/：/,$storycomment20);

								}elsif($storycomment20 =~ /:/){

									($unit_price,$type) = split(/:/,$storycomment20);

								}else{

									$unit_price = $storycomment20;

								}

								if($#storycomment22 != -1){

									foreach my $storycomment22(@storycomment22){

										push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,$storycomment22,,\n");

									}

								}elsif($#storycomment22 == -1){

									push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,,,\n");

								}

							}

						}

					}

				}elsif($rls5 eq "" && $rls6 eq ""){

					foreach my $storycomment(@storycomment){

						my(@storycomment_data) = split(/\,/,$storycomment);

						my @storycomment20 = split(/<br>/,$storycomment_data[20]);

						if($#storycomment20 != -1){

							foreach my $storycomment20(@storycomment20){

								my $unit_price = "";
								my $type       = "";

								if($storycomment20 =~ /：/){

									($unit_price,$type) = split(/：/,$storycomment20);

								}elsif($storycomment20 =~ /:/){

									($unit_price,$type) = split(/:/,$storycomment20);

								}else{

									$unit_price = $storycomment20;

								}

								push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,,,\n");

							}

						}

					}

				}

				undef(@storycomment);

			}

		}

	}

}

# 11,1,サンプル記事1,1000,種類1,種類1,種類1,,

my %count;
@itemStockBase = grep {!$count{$_}++} @itemStockBase;

#ファイルを書き出す。
open(OUT, "> ./itemStockBase.dat");	# 読み書きモードで開く
flock(OUT, 2);				# ロック確認。ロック
seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
print OUT @itemStockBase;			# 書き込む
truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
close(OUT);				# closeすれば自動でロック解除

undef(@itemStockBase);

print "Content-type: text/html;\n\n";
exit;
