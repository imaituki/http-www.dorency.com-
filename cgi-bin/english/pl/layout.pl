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
# html
# 全体レイアウトを形成して表示を行う。
##################################################
sub html{

	#クッキーにあるユーザー情報を取得する。
	&user_get;

	#ヘッダーHTMLの表示をタイプ別に行う。
	#ページ種類がショップ1もしくはショップ2の場合。
	if($kind eq "ショップ1" || $kind eq "ショップ2"){
		&header_shop;
	}else{
		&header;
	}

	#[body]を形成。
	if($ppt4 ne ""){$t_ppt4 = " background=\"$base_imgdir/$ppt4\"";}
	if($ppt3 ne ""){$t_ppt3 = " bgcolor=\"$ppt3\"";}
	if($ppt5 ne ""){$t_ppt5 = " text=\"$ppt5\"";}
	if($ppt6 ne ""){$t_ppt6 = " link=\"$ppt6\"";}
	if($ppt7 ne ""){$t_ppt7 = " vlink=\"$ppt7\"";}
	if($ppt1 ne ""){$t_ppt1 = " leftmargin=\"$ppt1\"";}
	if($ppt2 ne ""){$t_ppt2 = " topmargin=\"$ppt2\"";}

	#[body]を表示。
	if(($kind eq "ショップ1" || $kind eq "ショップ2") && ($in{'cart'} eq "payment")){
		print"<body$t_ppt4$t_ppt3$t_ppt5$t_ppt6$t_ppt7$t_ppt1$t_ppt2 onload=\"viewButton()\">\n";
	}else{
		print"<body$t_ppt4$t_ppt3$t_ppt5$t_ppt6$t_ppt7$t_ppt1$t_ppt2>\n";
	}

	#[table]を形成。
	if($all9 ne ""){$t_all9 = " background=\"$base_imgdir/$all9\"";}
	if($all8 ne ""){$t_all8 = " bgcolor=\"$all8\"";}
	if($all4 ne ""){$t_all4 = " border=\"$all4\"";}
	if($all4 eq ""){$t_all4 = " border=\"0\"";}
	if($all5 ne ""){$t_all5 = " bordercolor=\"$all5\"";}
	if($all6 ne ""){$t_all6 = " cellspacing=\"$all6\"";}
	if($all6 eq ""){$t_all6 = " cellspacing=\"0\"";}
	if($all7 ne ""){$t_all7 = " cellpadding=\"$all7\"";}
	if($all7 eq ""){$t_all7 = " cellpadding=\"0\"";}
	if($all1 ne ""){$t_all1 = " width=\"$all1\"";}
	if($all2 ne ""){$t_all2 = " height=\"$all2\"";}
	if($all3 ne ""){$t_all3 = " align=\"$all3\"";}

	#[table]を表示。

print<<"EOM";
<table$t_all9$t_all8$t_all4$t_all5$t_all6$t_all7$t_all1$t_all2$t_all3>
EOM

	if($hdr12 ne "" || $hdr20 ne ""){

		#[table]を形成。
		if($hdr19 ne ""){$t_hdr19 = " background=\"$base_imgdir/$hdr19\"";}
		if($hdr18 ne ""){$t_hdr18 = " bgcolor=\"$hdr18\"";}
		if($hdr11 ne ""){$t_hdr11 = " border=\"$hdr11\"";}
		if($hdr11 eq ""){$t_hdr11 = " border=\"0\"";}
		if($hdr15 ne ""){$t_hdr15 = " bordercolor=\"$hdr15\"";}
		if($hdr9  ne ""){$t_hdr9  = " width=\"$hdr9\"";}
		if($hdr9  eq ""){$t_hdr9  = " width=\"100%\"";}
		if($hdr10 ne ""){$t_hdr10 = " height=\"$hdr10\"";}
		if($hdr17 ne ""){$t_hdr17 = " cellpadding=\"$hdr17\"";}
		if($hdr16 ne ""){$t_hdr16 = " cellspacing=\"$hdr16\"";}

		#[table]を表示。

print<<"EOM";
 <tr>
  <td colspan="2" valign="top">
   <table$t_hdr19$t_hdr18$t_hdr11$t_hdr15$t_hdr9$t_hdr10$t_hdr17$t_hdr16>
EOM

		if($hdr12 ne ""){

			#[td]を形成。
			if($hdr6 ne ""){$t_hdr6 = " background=\"$base_imgdir/$hdr6\"";}
			if($hdr5 ne ""){$t_hdr5 = " bgcolor=\"$hdr5\"";}
			if($hdr4 ne ""){$t_hdr4 = " bordercolor=\"$hdr4\"";}
			if($hdr1 ne ""){$t_hdr1 = " height=\"$hdr1\"";}
			if($hdr2 ne ""){$t_hdr2 = " align=\"$hdr2\"";}
			if($hdr3 ne ""){$t_hdr3 = " valign=\"$hdr3\"";}
			if($hdr3 eq ""){$t_hdr3 = " valign=\"top\"";}

			#[alt]を形成。
			if($hdr13 ne ""){$t_hdr13 = " alt=\"$hdr13\"";}

			if(($in{'category'} eq "0" && $in{'page'} eq "0") || ($in{'category'} eq "" && $in{'page'} eq "")){

				if($location eq "up"){

					#リンクを設定。
					if($hdr7 =~ /^http/){

						#絶対アドレスの場合はそのままにする。
						$hdr7 = "$hdr7";

					}else{

						if($hdr7 ne ""){

							#相対アドレスの場合は置換処理を行う。
							$hdr7 =~ s/^.//;
							$hdr7 = "$cgi_address/$site_folder$hdr7";

						}
					}
				}
			}

			if($hdr7 ne ""){

				if($hdr8 ne ""){$t_hdr8 = " target=\"_blank\"";}

				#[H1]タグの挿入有無の判別。
				if($hdr14 ne ""){

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr6$t_hdr5$t_hdr4$t_hdr1$t_hdr2$t_hdr3><h1><a href="$hdr7"$t_hdr8><img src="$base_imgdir/$hdr12"$t_hdr13 border="0"></a></h1></td>
    </tr>
EOM

				}else{

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr6$t_hdr5$t_hdr4$t_hdr1$t_hdr2$t_hdr3><a href="$hdr7"$t_hdr8><img src="$base_imgdir/$hdr12"$t_hdr13 border="0"></a></td>
    </tr>
EOM

				}

			}else{

				#[H1]タグの挿入有無の判別。
				if($hdr14 ne ""){

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr6$t_hdr5$t_hdr4$t_hdr1$t_hdr2$t_hdr3><h1><img src="$base_imgdir/$hdr12"$t_hdr13></h1></td>
    </tr>
EOM

				}else{

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr6$t_hdr5$t_hdr4$t_hdr1$t_hdr2$t_hdr3><img src="$base_imgdir/$hdr12"$t_hdr13></td>
    </tr>
EOM

				}
			}
		}

		if($hdr20 ne ""){

			#[td]を形成。
			if($hdr30 ne ""){$t_hdr30 = " background=\"$base_imgdir/$hdr30\"";}
			if($hdr29 ne ""){$t_hdr29 = " bgcolor=\"$hdr29\"";}
			if($hdr28 ne ""){$t_hdr28 = " bordercolor=\"$hdr28\"";}
			if($hdr21 ne ""){$t_hdr21 = " height=\"$hdr21\"";}
			if($hdr22 ne ""){$t_hdr22 = " align=\"$hdr22\"";}
			if($hdr23 ne ""){$t_hdr23 = " valign=\"$hdr23\"";}
			if($hdr23 eq ""){$t_hdr23 = " valign=\"top\"";}

			#[font]を形成。
			if($hdr25 ne "")                {$t_hdr25  = " size=\"$hdr25\"";}
			if($hdr24 ne "")                {$t_hdr24  = " color=\"$hdr24\"";}
			if($hdr25 ne "" || $hdr24 ne ""){$t1_font1 = "<font$t_hdr25$t_hdr24>";}
			if($hdr25 ne "" || $hdr24 ne ""){$t1_font2 = "</font>";}

			#表示項目を形成。
			if($hdr26 ne "" && $hdr27 ne ""){
				$t_hdr20 = "<strong><i>$t1_font1$hdr20$t1_font2</i></strong>";
			}

			if($hdr26 ne "" && $hdr27 eq ""){
				$t_hdr20 = "<strong>$t1_font1$hdr20$t1_font2</strong>";
			}

			if($hdr26 eq "" && $hdr27 ne ""){
				$t_hdr20 = "<i>$t1_font1$hdr20$t1_font2</i>";
			}

			if($hdr26 eq "" && $hdr27 eq ""){
				$t_hdr20 = "$t1_font1$hdr20$t1_font2";
			}

			if(($in{'category'} eq "0" && $in{'page'} eq "0") || ($in{'category'} eq "" && $in{'page'} eq "")){

				if($location eq "up"){

					#リンクを設定。
					if($hdr32 =~ /^http/){

						#絶対アドレスの場合はそのままにする。
						$hdr32 = "$hdr32";

					}else{

						if($hdr32 ne ""){

							#相対アドレスの場合は置換処理を行う。
							$hdr32 =~ s/^.//;
							$hdr32 = "$cgi_address/$site_folder$hdr32";

						}
					}
				}
			}

			if($hdr32 ne ""){

				if($hdr33 ne ""){$t_hdr33 = " target=\"_blank\"";}

				#[H1]タグの挿入有無の判別。
				if($hdr31 ne ""){

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr30$t_hdr29$t_hdr28$t_hdr21$t_hdr22$t_hdr23><h1><a href="$hdr32"$t_hdr33>$t_hdr20</a></h1></td>
    </tr>
EOM

				}else{

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr30$t_hdr29$t_hdr28$t_hdr21$t_hdr22$t_hdr23><a href="$hdr32"$t_hdr33>$t_hdr20</a></td>
    </tr>
EOM

				}

			}else{

				#[H1]タグの挿入有無の判別。
				if($hdr31 ne ""){

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr30$t_hdr29$t_hdr28$t_hdr21$t_hdr22$t_hdr23><h1>$t_hdr20</h1></td>
    </tr>
EOM

				}else{

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr30$t_hdr29$t_hdr28$t_hdr21$t_hdr22$t_hdr23>$t_hdr20</td>
    </tr>
EOM

				}
			}
		}

		#[table]を表示。

print<<"EOM";
   </table>
  </td>
 </tr>
EOM

	}

	#[td]を形成。
	if($ngs5 ne ""){$t_ngs5 = " background=\"$base_imgdir/$ngs5\"";}
	if($ngs4 ne ""){$t_ngs4 = " bgcolor=\"$ngs4\"";}
	if($ngs3 ne ""){$t_ngs3 = " bordercolor=\"$ngs3\"";}
	if($ngs1 ne ""){$t_ngs1 = " width=\"$ngs1\"";}
	if($ngs8 ne ""){$t_ngs8 = " height=\"$ngs8\"";}
	if($ngs2 ne ""){$t_ngs2 = " align=\"$ngs2\"";}

	#ナビゲーションを表示。

print<<"EOM";
 <tr>
  <td$t_ngs5$t_ngs4$t_ngs3$t_ngs1$t_ngs8$t_ngs2 valign="top">
EOM

	#ナビゲーションの表示開始位置余白を表示。
	if($ngs6 eq "改行"){
		print"  <br>\n";
	}
	if($ngs6 eq "数値" && $ngs7 ne "0"){
		if($ngs7 ne ""){$t_ngs7 = " height=\"$ngs7\"";}
		print"   <img src=\"$imgdir/spacer.gif\"$t_ngs7><br>\n";
	}

	#ナビゲーション0を表示。
	if($cnm0 ne ""){
		&naviTop;
	}

	#ナビゲーション1を表示。
	if($cnm1 ne ""){
		&naviOther(1);
	}

	#ナビゲーション2を表示。
	if($cnm2 ne ""){
		&naviOther(2);
	}

	#ナビゲーション3を表示。
	if($cnm3 ne ""){
		&naviOther(3);
	}

	#ナビゲーション4を表示。
	if($cnm4 ne ""){
		&naviOther(4);
	}

	#ナビゲーション5を表示。
	if($cnm5 ne ""){
		&naviOther(5);
	}

print<<"EOM";
  </td>
EOM

	#存在しないページのエラー処理。
	if($noData ne ""){

		$width = $all1 - $ngs1;
		if($width ne "" && $width > 0){
			$t_width = " width=\"$width\"";
		}

print<<"EOM";
  <td$t_width align="center" valign="top">
EOM

		#エラー画面の表示。
		&errorPage;

		#著作権を表示。
		if($ppt17 ne ""){

print<<"EOM";
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td><font size="-1">$ppt17</font></td>
    </tr>
   </table>
EOM

		}

print<<"EOM";
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}else{

		#[td]を形成。
		if($pge5 ne ""){$t_pge5 = " background=\"$page_imgdir/$pge5\"";}
		if($pge4 ne ""){$t_pge4 = " bgcolor=\"$pge4\"";}
		if($pge3 ne ""){$t_pge3 = " bordercolor=\"$pge3\"";}
		if($pge1 ne ""){$t_pge1 = " width=\"$pge1\"";}
		if($pge8 ne ""){$t_pge8 = " height=\"$pge8\"";}
		if($pge2 ne ""){$t_pge2 = " align=\"$pge2\"";}

print<<"EOM";
  <td$t_pge5$t_pge4$t_pge3$t_pge1$t_pge8$t_pge2 valign="top">
EOM

		#ページの表示開始位置余白を形成。
		if($pge6 eq "改行"){
			print"   <br>\n";
		}
		if($pge6 eq "数値" && $pge7 ne "0"){
			if($pge7 ne ""){$t_pge7 = " height=\"$pge7\"";}
			print"   <img src=\"$imgdir/spacer.gif\"$t_pge7><br>\n";
		}

		#画像を形成。
		if($pig17 ne "" || $pig24 ne ""){

			if($pig21 ne ""){$t_pig21 = " width=\"$pig21\"";}
			if($pig22 ne ""){$t_pig22 = " height=\"$pig22\"";}
			if($pig20 ne ""){$t_pig20 = " alt=\"$pig20\"";}

			#画像がフラッシュファイルの場合（拡張子がswfの場合）を形成。
			if($pig17 =~ /.swf/){
				$t_pig17  = "";
				$t_pig17 .= "     <script type=\"text/javascript\">\n";
				$t_pig17 .= "     <!--\n";
				$t_pig17 .= "     checkPlugin(6,'$page_imgdir/$pig17','$pig21','$pig22');\n";
				$t_pig17 .= "     //-->\n";
				$t_pig17 .= "     </script>";
			}else{
				$t_pig17 = "     <img src=\"$page_imgdir/$pig17\"$t_pig21$t_pig22$t_pig20>";
			}

			#[table]を形成。
			if($pig11 ne ""){$t_pig11 = " background=\"$page_imgdir/$pig11\"";}
			if($pig10 ne ""){$t_pig10 = " bgcolor=\"$pig10\"";}
			if($pig5 ne "") {$t_pig5  = " border=\"$pig5\"";}
			if($pig5 eq "") {$t_pig5  = " border=\"0\"";}

			if($pig6 ne "") {$t_pig6  = " bordercolor=\"$pig6\"";}
			if($pig8 ne "") {$t_pig8  = " cellspacing=\"$pig8\"";}
			if($pig8 eq "") {$t_pig8  = " cellspacing=\"0\"";}
			if($pig9 ne "") {$t_pig9  = " cellpadding=\"$pig9\"";}
			if($pig9 eq "") {$t_pig9  = " cellpadding=\"0\"";}
			if($pig1 ne "") {$t_pig1  = " width=\"$pig1\"";}
			if($pig2 ne "") {$t_pig2  = " height=\"$pig2\"";}

			#[td]を形成。
			if($pig19 ne ""){$t_pig19 = " background=\"$page_imgdir/$pig19\"";}
			if($pig18 ne ""){$t_pig18 = " bgcolor=\"$pig18\"";}
			if($pig7 ne "") {$t_pig7  = " bordercolor=\"$pig7\"";}
			if($pig3 ne "") {$t_pig3  = " align=\"$pig3\"";}
			if($pig4 ne "") {$t_pig4  = " valign=\"$pig4\"";}
			if($pig4 eq "") {$t_pig4  = " valign=\"top\"";}
			if($pig23 ne ""){$t_pig23 = " height=\"$pig23\"";}

			if($pig34 ne ""){$t_pig34 = " background=\"$page_imgdir/$pig34\"";}
			if($pig33 ne ""){$t_pig33 = " bgcolor=\"$pig33\"";}
			if($pig32 ne ""){$t_pig32 = " bordercolor=\"$pig32\"";}
			if($pig26 ne ""){$t_pig26 = " align=\"$pig26\"";}
			if($pig27 ne ""){$t_pig27 = " valign=\"$pig27\"";}
			if($pig27 eq ""){$t_pig27 = " valign=\"top\"";}
			if($pig25 ne ""){$t_pig25 = " height=\"$pig25\"";}

			#[font]を形成。
			if($pig29 ne "")                {$t_pig29  = " size=\"$pig29\"";}
			if($pig28 ne "")                {$t_pig28  = " color=\"$pig28\"";}
			if($pig29 ne "" || $pig28 ne ""){$t2_font1 = "<font$t_pig29$t_pig28>";}
			if($pig29 ne "" || $pig28 ne ""){$t2_font2 = "</font>";}

			#表示項目を形成。
			if($pig30 ne "" && $pig31 ne ""){
				$t_pig24 = "<strong><i>$t2_font1$pig24$t2_font2</i></strong>";
			}

			if($pig30 ne "" && $pig31 eq ""){
				$t_pig24 = "<strong>$t2_font1$pig24$t2_font2</strong>";
			}

			if($pig30 eq "" && $pig31 ne ""){
				$t_pig24 = "<i>$t2_font1$pig24$t2_font2</i>";
			}

			if($pig30 eq "" && $pig31 eq ""){
				$t_pig24 = "$t2_font1$pig24$t2_font2";
			}

print<<"EOM";
   <table$t_pig11$t_pig10$t_pig5$t_pig6$t_pig8$t_pig9$t_pig1$t_pig2>
EOM

			#ページ画像を表示。
			if($pig17 ne ""){

print<<"EOM";
    <tr>
     <td$t_pig19$t_pig18$t_pig7$t_pig3$t_pig4$t_pig23>$t_pig17</td>
    </tr>
EOM

			}

			#ページタイトルを表示。
			if($pig24 ne ""){

print<<"EOM";
    <tr>
     <td$t_pig34$t_pig33$t_pig32$t_pig26$t_pig27$t_pig25>$t_pig24</td>
    </tr>
EOM

			}

print<<"EOM";
   </table>
EOM

			#区切りを形成。
			if($pig15 ne ""){$t_pig15 = " size=\"$pig15\"";}
			if($pig14 ne ""){$t_pig14 = " width=\"$pig14\"";}
			if($pig16 ne ""){$t_pig16 = " color=\"$pig16\"";}
			if($pig13 ne ""){$t_pig13 = " height=\"$pig13\"";}

			#区切りを表示。
			if($pig12 eq "区切り線"){
				print"   <hr$t_pig15$t_pig14$t_pig16>\n";
			}elsif($pig12 eq "改行"){
				print"   <br>\n";
			}elsif($pig12 eq "数値" && $pig13 ne "0"){
				print"   <img src=\"$imgdir/spacer.gif\"$t_pig13><br>\n";
			}else{
				print"";
			}
		}

		#コメントを形成。
		if($pct17 ne ""){

			#[table]を形成。
			if($pct11 ne ""){$t_pct11 = " background=\"$page_imgdir/$pct11\"";}
			if($pct10 ne ""){$t_pct10 = " bgcolor=\"$pct10\"";}
			if($pct5 ne "") {$t_pct5  = " border=\"$pct5\"";}
			if($pct5 eq "") {$t_pct5  = " border=\"0\"";}
			if($pct6 ne "") {$t_pct6  = " bordercolor=\"$pct6\"";}
			if($pct8 ne "") {$t_pct8  = " cellspacing=\"$pct8\"";}
			if($pct8 eq "") {$t_pct8  = " cellspacing=\"0\"";}
			if($pct9 ne "") {$t_pct9  = " cellpadding=\"$pct9\"";}
			if($pct9 eq "") {$t_pct9  = " cellpadding=\"0\"";}
			if($pct1 ne "") {$t_pct1  = " width=\"$pct1\"";}
			if($pct2 ne "") {$t_pct2  = " height=\"$pct2\"";}

			#[td]を形成。
			if($pct23 ne ""){$t_pct23 = " background=\"$page_imgdir/$pct23\"";}
			if($pct22 ne ""){$t_pct22 = " bgcolor=\"$pct22\"";}
			if($pct7 ne "") {$t_pct7  = " bordercolor=\"$pct7\"";}
			if($pct3 ne "") {$t_pct3  = " align=\"$pct3\"";}
			if($pct4 ne "") {$t_pct4  = " valign=\"$pct4\"";}
			if($pct4 eq "") {$t_pct4  = " valign=\"top\"";}

			#[font]を形成。
			if($pct19 ne "")                {$t_pct19  = " size=\"$pct19\"";}
			if($pct18 ne "")                {$t_pct18  = " color=\"$pct18\"";}
			if($pct19 ne "" || $pct18 ne ""){$t3_font1 = "<font$t_pct19$t_pct18>";}
			if($pct19 ne "" || $pct18 ne ""){$t3_font2 = "</font>";}

			if($pct24 ne "on"){

				$pct17 =~ s/([^=^\"]|^)(http\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
				$pct17 =~ s/([^=^\"]|^)(https\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
				$pct17 =~ s/\b([-\w.]+@[-\w.]+\.[-\w.]+)\b/<a href=\"mailto:$1\">$1<\/a>/g;

			}elsif($pct24 eq "on"){
				$pct17 =~ s/&lt;br&gt;/\n/g;
				$pct17 =~ s/&#44;/,/g;
			}

			#コメントを形成。
			if($pct20 ne "" && $pct21 ne ""){$pct17 = "<strong><i>$pct17</i></strong>";}
			if($pct20 ne "" && $pct21 eq ""){$pct17 = "<strong>$pct17</strong>";}
			if($pct20 eq "" && $pct21 ne ""){$pct17 = "<i>$pct17</i>";}

			#コメントを表示。

print<<"EOM";
   <table$t_pct11$t_pct10$t_pct5$t_pct6$t_pct8$t_pct9$t_pct1$t_pct2>
    <tr>
     <td$t_pct23$t_pct22$t_pct7$t_pct3$t_pct4>$t3_font1$pct17$t3_font2</td>
    </tr>
   </table>
EOM

			#区切りを形成。
			if($pct15 ne ""){$t_pct15 = " size=\"$pct15\"";}
			if($pct14 ne ""){$t_pct14 = " width=\"$pct14\"";}
			if($pct16 ne ""){$t_pct16 = " color=\"$pct16\"";}
			if($pct13 ne ""){$t_pct13 = " height=\"$pct13\"";}

			#区切りを表示。
			if($pct12 eq "区切り線"){
				print"   <hr$t_pct15$t_pct14$t_pct16>\n";
			}elsif($pct12 eq "改行"){
				print"   <br>\n";
			}elsif($pct12 eq "数値" && $pct13 ne "0"){
				print"   <img src=\"$imgdir/spacer.gif\"$t_pct13><br>\n";
			}else{
				print"";
			}
		}

		#[table]を形成。
		if($pst11 ne ""){$t_pst11 = " background=\"$page_imgdir/$pst11\"";}
		if($pst10 ne ""){$t_pst10 = " bgcolor=\"$pst10\"";}
		if($pst5 ne "") {$t_pst5  = " border=\"$pst5\"";}
		if($pst5 eq "") {$t_pst5  = " border=\"0\"";}
		if($pst6 ne "") {$t_pst6  = " bordercolor=\"$pst6\"";}
		if($pst8 ne "") {$t_pst8  = " cellspacing=\"$pst8\"";}
		if($pst8 eq "") {$t_pst8  = " cellspacing=\"0\"";}
		if($pst9 ne "") {$t_pst9  = " cellpadding=\"$pst9\"";}
		if($pst9 eq "") {$t_pst9  = " cellpadding=\"0\"";}
		if($pst1 ne "") {$t_pst1  = " width=\"$pst1\"";}
		if($pst2 ne "") {$t_pst2  = " height=\"$pst2\"";}

		#[td]を形成。
		if($pst13 ne ""){$t_pst13 = " background=\"$page_imgdir/$pst13\"";}
		if($pst12 ne ""){$t_pst12 = " bgcolor=\"$pst12\"";}
		if($pst7 ne "") {$t_pst7  = " bordercolor=\"$pst7\"";}
		if($pst3 ne "") {$t_pst3  = " align=\"$pst3\"";}
		if($pst4 ne "") {$t_pst4  = " valign=\"$pst4\"";}
		if($pst4 eq "") {$t_pst4  = " valign=\"top\"";}

		if($cds20 eq "on"){

##########
				if($in{'cart'} eq "order1" && $in{'submit'} eq "注文者入力画面に進む"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM

				}elsif($in{'cart'} eq "order1" && $in{'submit_data'} eq "注文者入力画面に進む"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "入力画面に戻る"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
##########
####################
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "same"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_02.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sb2_02.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文者入力画面に戻る" && $in{'address'} eq "same"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_02.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sb2_02.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文情報確認画面に進む" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM

####################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "変更する" && $in{'address'} eq "same"){
#					&user_edit;
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "更新する" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "user_edit"){
#					&user_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "変更する" && $in{'address'} eq "same"){
#					&payment_edit;
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "更新する" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "変更する" && $in{'address'} eq "same"){
#					&delivery_day_edit;
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "更新する" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "delivery_day_edit"){
#					&delivery_day_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "変更する" && $in{'address'} eq "same"){
#					&message_edit;
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "更新する" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "message_edit"){
#					&message_edit;
##############################
####################
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "商品配送確認画面に戻る" && $in{'address'} eq "same"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sb1_02.gif" border="0" id="step1" style="display:none;">
<img src="$imgdir\/sb2_02.gif" border="0" id="step2" style="display:block;">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_02.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sb2_02.gif" border="0" id="step2" style="display:none;">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "上記内容で送信する" && $in{'address'} eq "same"){
#					&cart_mail;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sb2_04.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_04.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
####################
####################
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "配送先入力画面に進む" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "注文者入力画面に戻る" && $in{'address'} eq "other"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "商品配送設定画面に進む" && $in{'address'} eq "other"){
#					&cart_order3;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_03.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "配送先を登録する" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "注文者を配送先に追加する" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "del" && $in{'submit'} eq "削除" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "配送先入力画面に戻る" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
#					&cart_order3;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_03.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "other"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "" && $in{'address'} eq "other"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:none;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:block;">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:none;">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "商品配送設定画面に戻る" && $in{'address'} eq "other"){
#					&cart_order3;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_03.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文情報確認画面に進む" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
####################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "商品配送情報を変更する" && $in{'address'} eq "other"){
#					&order_edit;
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "更新する" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
#					&order_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "変更する" && $in{'address'} eq "other"){
#					&user_edit;
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "更新する" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "user_edit"){
#					&user_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "変更する" && $in{'address'} eq "other"){
#					&payment_edit;
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "更新する" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "変更する" && $in{'address'} eq "other"){
#					&delivery_day_edit;
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "更新する" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "delivery_day_edit"){
#					&delivery_day_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "変更する" && $in{'address'} eq "other"){
#					&message_edit;
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "更新する" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "message_edit"){
#					&message_edit;
##############################
####################
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "商品配送確認画面に戻る" && $in{'address'} eq "other"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:none;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:block;">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:none;">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "上記内容で送信する" && $in{'address'} eq "other"){
#					&cart_mail;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){
print<<"EOM";
<img src="$imgdir\/sa2_06.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_06.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}
####################

			#区切りを形成。
			if($pct15 ne ""){$t_pct15 = " size=\"$pct15\"";}
			if($pct14 ne ""){$t_pct14 = " width=\"$pct14\"";}
			if($pct16 ne ""){$t_pct16 = " color=\"$pct16\"";}
			if($pct13 ne ""){$t_pct13 = " height=\"$pct13\"";}

			#区切りを表示。
			if($pct12 eq "区切り線"){
				print"   <hr$t_pct15$t_pct14$t_pct16>\n";
			}elsif($pct12 eq "改行"){
				print"   <br>\n";
			}elsif($pct12 eq "数値" && $pct13 ne "0"){
				print"   <img src=\"$imgdir/spacer.gif\"$t_pct13><br>\n";
			}else{
				print"";
			}

		}

		#記事を表示。

print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1$t_pst2>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM

		my $loginFlg = 0;

		#クッキーで得た名前が存在している場合にログインを表示。
		if($c_id ne "" && $c_pass ne ""){

			if($in{'category'} ne "0" || $in{'page'} ne "0"){

				#ユーザー認証アカウント情報ファイル読み込み。
				open(IN,"$rootdir/option/access/page/acs.dat");
				flock(IN,1);		#ファイルを読み出しロック。
				@access_check = <IN>;
				flock(IN,8);		# ロック解除。
				close(IN);

				#ユーザー認証アカウント情報精査。
				foreach $x(@access_check){

					#ユーザー認証アカウント情報からID,PASSを取得する。
					($dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$id,$pass) = split(/,/,$x);

					#取得したID,PASSとPOST(GET)したID,PASSをマッチング。
					if($id eq $c_id && $pass eq $c_pass){

						#同じの場合にループを抜ける。
						$loginFlg = 1;
						last;
					}

				}

			}

		}

		if($loginFlg == 1){

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1" align="right">
       <tr>
        <td align="right">
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="mode" value="access_check">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="user" value="out">
        <input type="hidden" name="user_id" value="$c_id">
        <input type="hidden" name="user_pass" value="$c_pass">
        <font size="-1"><strong>$c_id</strong>でログインされています。</font>
        <input type="submit" value="ログアウト">
        </form>
        </td>
       </tr>
      </table>
      <br>
      <br>
EOM

		}

		#アクセス認証エラー。
		if($in{'access'} eq "error")                                                        {&errorAccess;}
		#ページ毎でのアクセスチェック。
		elsif($in{'category'} eq "1" && $in{'page'} eq "0" && $acs1 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "1" && $acs2 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "2" && $acs3 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "3" && $acs4 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "4" && $acs5 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "5" && $acs6 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "0" && $acs7 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "1" && $acs8 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "2" && $acs9 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "3" && $acs10 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "4" && $acs11 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "5" && $acs12 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "0" && $acs13 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "1" && $acs14 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "2" && $acs15 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "3" && $acs16 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "4" && $acs17 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "5" && $acs18 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "0" && $acs19 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "1" && $acs20 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "2" && $acs21 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "3" && $acs22 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "4" && $acs23 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "5" && $acs24 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "0" && $acs25 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "1" && $acs26 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "2" && $acs27 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "3" && $acs28 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "4" && $acs29 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "5" && $acs30 eq "on" && $loginFlg == 0){&access;}
		#アクセスチェック不要の場合、各ページレイアウト生成。
		else{
			if($in{'view'} eq "payment_nicos"){
				&payment_nicos;
			}else{

			if($kind eq "トップページ"){
				&top;
			}elsif($kind eq "汎用1"){
				if($in{'search'} eq "on"){
					&use1_search;
				}else{
					&use1;
				}
			}elsif($kind eq "汎用2"){
				if($in{'search'} eq "on"){
					&use2_search;
				}else{
					&use2;
				}
			}elsif($kind eq "リスト1"){
				if($in{'search'} eq "on"){
					&list1_search;
				}else{
					&list1;
				}
			}elsif($kind eq "リスト2"){
				if($in{'search'} eq "on"){
					&list2_search;
				}else{
					&list2;
				}
			}elsif($kind eq "商品案内1"){
				if($in{'detail'} eq "on"){
					&item1_detail;
				}elsif($in{'search'} eq "on"){
					&item1_search;
				}elsif($in{'ask'} eq "on"){
					&item1_ask;
				}elsif($in{'ask'} eq "check" && $in{'submit'} eq "一覧に戻る"){
					&item1;
				}elsif($in{'ask'} eq "check" && $in{'submit'} eq "入力内容の確認"){
					&ask_check;
				}elsif($in{'ask'} eq "mail"){
					&ask_mail;
				}else{
					&item1;
				}
			}elsif($kind eq "商品案内2"){
				if($in{'detail'} eq "on"){
					&item2_detail;
				}elsif($in{'search'} eq "on"){
					&item2_search;
				}elsif($in{'ask'} eq "check" && $in{'submit'} eq "一覧に戻る"){
					&item2;
				}elsif($in{'ask'} eq "check" && $in{'submit'} eq "入力内容の確認"){
					&ask_check;
				}elsif($in{'ask'} eq "mail"){
					&ask_mail;
				}else{
					&item2;
				}
			}elsif($kind eq "ショップ1" || $kind eq "ショップ2"){
##########
				if($in{'cart'} eq "" && $kind eq "ショップ1"){
					&shop1;
				}elsif($in{'cart'} eq "detail" && $kind eq "ショップ1"){
					&shop1_detail;
				}elsif($in{'cart'} eq "search" && $kind eq "ショップ1"){
					&shop1_search;
##########
##########
				}elsif($in{'cart'} eq "" && $kind eq "ショップ2"){
					&shop2;
				}elsif($in{'cart'} eq "detail" && $kind eq "ショップ2"){
					&shop2_detail;
				}elsif($in{'cart'} eq "search" && $kind eq "ショップ2"){
					&shop2_search;
##########
##########
				}elsif($in{'cart'} eq "payment"){
					&cart_order0;
				}elsif($in{'cart'} eq "view"){
					&cart_order0;
##########
##########
				}elsif($in{'cart'} eq "select" && $kind eq "ショップ1"){
					if($in{'submit'} eq "入力画面に戻る"){
						&shop1;
					}else{
						&cart_order0;
					}
				}elsif($in{'cart'} eq "select" && $kind eq "ショップ2"){
					if($in{'submit'} eq "商品一覧に戻る"){
						&shop2;
					}elsif($in{'submit'} eq "入力画面に戻る"){
						&shop2;
					}else{
						&cart_order0;
					}
##########
##########
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "変更"){
					&cart_order0;
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq ""){
					&cart_order0;
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "削除"){
					&cart_order0;
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "一括削除"){
					&cart_order0;
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq ""){
					&cart_order0;
				}elsif($in{'cart'} eq "order1" && $in{'submit'} eq "注文者入力画面に進む"){
					&cart_order1;
				}elsif($in{'cart'} eq "order1" && $in{'submit_data'} eq "注文者入力画面に進む"){
					&cart_order1;
				}elsif($in{'cart'} eq "order2" && $in{'back'} eq "選択商品一覧画面に戻る"){
					&cart_order0;
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "入力画面に戻る"){
					&cart_order1;
##########
####################
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "same"){
					&cart_order4;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文者入力画面に戻る" && $in{'address'} eq "same"){
					&cart_order1;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same"){
					&cart_order4;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文情報確認画面に進む" && $in{'address'} eq "same"){
					&cart_order5;
####################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "変更する" && $in{'address'} eq "same"){
					&user_edit;
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "更新する" && $in{'address'} eq "same"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "user_edit"){
					&user_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "変更する" && $in{'address'} eq "same"){
					&payment_edit;
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "更新する" && $in{'address'} eq "same"){
					&cart_order5;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "変更する" && $in{'address'} eq "same"){
					&delivery_day_edit;
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "更新する" && $in{'address'} eq "same"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "delivery_day_edit"){
					&delivery_day_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "変更する" && $in{'address'} eq "same"){
					&message_edit;
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "更新する" && $in{'address'} eq "same"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "message_edit"){
					&message_edit;
##############################
####################
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "商品配送確認画面に戻る" && $in{'address'} eq "same"){
					&cart_order4;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "上記内容で送信する" && $in{'address'} eq "same"){
					&cart_mail;
####################
####################
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "配送先入力画面に進む" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "注文者入力画面に戻る" && $in{'address'} eq "other"){
					&cart_order1;
				}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "商品配送設定画面に進む" && $in{'address'} eq "other"){
					&cart_order3;
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "配送先を登録する" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "注文者を配送先に追加する" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "del" && $in{'submit'} eq "削除" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "配送先入力画面に戻る" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
					&cart_order3;
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "other"){
					&cart_order4;
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "" && $in{'address'} eq "other"){
					&cart_order4;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "商品配送設定画面に戻る" && $in{'address'} eq "other"){
					&cart_order3;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
					&cart_order4;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文情報確認画面に進む" && $in{'address'} eq "other"){
					&cart_order5;
####################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "商品配送情報を変更する" && $in{'address'} eq "other"){
					&order_edit;
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "更新する" && $in{'address'} eq "other"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
					&order_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "変更する" && $in{'address'} eq "other"){
					&user_edit;
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "更新する" && $in{'address'} eq "other"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "user_edit"){
					&user_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "変更する" && $in{'address'} eq "other"){
					&payment_edit;
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "更新する" && $in{'address'} eq "other"){
					&cart_order5;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "変更する" && $in{'address'} eq "other"){
					&delivery_day_edit;
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "更新する" && $in{'address'} eq "other"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "delivery_day_edit"){
					&delivery_day_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "変更する" && $in{'address'} eq "other"){
					&message_edit;
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "更新する" && $in{'address'} eq "other"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "message_edit"){
					&message_edit;
##############################
####################
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "商品配送確認画面に戻る" && $in{'address'} eq "other"){
					&cart_order4;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "上記内容で送信する" && $in{'address'} eq "other"){
					&cart_mail;
				}
####################
			}elsif($kind eq "会社概要1"){
				&profile1;
			}elsif($kind eq "フォーム1"){
				if($in{'form'} eq "check"){
					&form_check;
				}elsif($in{'form'} eq "mail"){
					&form_mail;
				}else{
					&form1;
				}
			}

			}

print<<"EOM";
     </td>
    </tr>
   </table>
EOM

		}

print<<"EOM";
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td>
EOM

		#著作権を表示。
		if($ppt17 ne ""){

print<<"EOM";
      <font size="-1">$ppt17</font>
EOM

		}

		if($location eq "up"){

			my $new_cgi_address = "";

			if($rls15 eq "on" && $rls16 ne "" && $kind eq "フォーム1"){
				$new_cgi_address = "$rls16\/$cgi_host";
			}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "商品案内1" && (($in{'ask'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "一覧に戻る") || ($in{'ask'} eq "check" && $in{'submit'} eq "入力内容の確認") || ($in{'ask'} eq "mail"))){
				$new_cgi_address = "$ask7\/$cgi_host";
			}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "商品案内2" && (($in{'detail'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "入力内容の確認") || ($in{'ask'} eq "mail"))){
				$new_cgi_address = "$ask7\/$cgi_host";
			}elsif($crt42 eq "on" && $crt43 ne "" && ($in{'cart'} eq "order1" || $in{'cart'} eq "order2" || $in{'cart'} eq "order3" || $in{'cart'} eq "order4" || $in{'cart'} eq "order5" || $in{'cart'} eq "order6" || $in{'cart'} eq "add" || $in{'cart'} eq "del")){
				$new_cgi_address = "$crt43\/$cgi_host";
			}else{
				$new_cgi_address = $cgi_address;
			}

			#ログ出力の判別。（CGI動作後はログを出力しない）
			if($in{'detail'} eq "" 
			&& $in{'search'} eq "" 
			&& $in{'return'} eq "" 
			&& $in{'view'} eq "" 
			&& $in{'ask'} eq "" 
			&& $in{'form'} eq "" 
			&& $in{'cart'} eq ""){

			my $sf_data = $site_folder;

			$sf_data =~ s/'/&#39;/g;

print<<"EOM";
<script type="text/javascript" language="JavaScript">
<!--
document.write("<img src='$new_cgi_address/$sf_data/log_note.cgi?page_name=$in{'category'}$in{'page'}&");
document.write(navigator.platform);
document.write("&amp;&amp;",document.referrer);
document.write("' width=0 height=0>");
// -->
</script>
EOM

			}
		}

print<<"EOM";
     </td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}

	exit;
}
##################################################
# access
# アクセス認証画面の表示を行う。
##################################################
sub access{

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="access_check">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <table border="0" cellpadding="1" cellspacing="1" width="300" align="center">
       <tr>
        <td><br></td>
       </tr>
      </table>
      <table bgcolor="#CCCCCC" border="1" cellpadding="2" cellspacing="2" width="300" align="center" bordercolor="#999999">
       <tr bordercolor="#CCCCCC" bgcolor="#000066">
        <td colspan="2" align="center" height="30"><font color="#FFFFFF" size="-1">ユーザーIDとパスワードを入力してください。</font></td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td width="100" align="right"><font color="#000000" size="-1">ユーザーID</font></td>
        <td width="200"> 
        <input type="text" name="user_id" size="20" maxlength="20" value="$c_id">
        </td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td width="100" align="right"><font color="#000000" size="-1">パスワード</font></td>
        <td width="200"> 
        <input type="password" name="user_pass" size="8" maxlength="8" value="$c_pass">
        </td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td colspan="2"><font color="#000000" size="-1"><input type="checkbox" name="save" value="save" $save_check>IDとパスワードを保存する</font></td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td colspan="2" align="center">
        <input type="submit" value="認証">
        </td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1" width="300" align="center">
       <tr>
        <td><br></td>
       </tr>
      </table>
      </form>
     </td>
    </tr>
   </table>
EOM

}

1;

