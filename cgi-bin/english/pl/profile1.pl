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
# profile1
# 会社概要1の記事表示。
##################################################
sub profile1{

	#コメントを形成。
	if($rls28 ne ""){

		#[font]を形成。
		if($rls30 ne "")                {$t_rls30  = " size=\"$rls30\"";}
		if($rls29 ne "")                {$t_rls29  = " color=\"$rls29\"";}
		if($rls30 ne "" || $rls29 ne ""){$t1_font1 = "<font$t_rls30$t_rls29>";}
		if($rls30 ne "" || $rls29 ne ""){$t1_font2 = "</font>";}

		#コメントを形成。
		if($rls31 ne "" && $rls32 ne ""){$rls28 = "$t1_font1<strong><i>$rls28</i></strong>$t1_font2";}
		if($rls31 ne "" && $rls32 eq ""){$rls28 = "$t1_font1<strong>$rls28</strong>$t1_font2";}
		if($rls31 eq "" && $rls32 ne ""){$rls28 = "$t1_font1<i>$rls28</i>$t1_font2";}
		if($rls31 eq "" && $rls32 eq ""){$rls28 = "$t1_font1$rls28$t1_font2";}
	}

	#表示幅を形成。
	if($rls21 ne ""){$t_rls21 = " width=\"$rls21\"";}
	if($rls22 ne ""){$t_rls22 = " height=\"$rls22\"";}

	#画像を形成。
	if($rls20 ne ""){

		#記事の幅、高さの設定。
		local($width,$height) = split(/×/,$rls24);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#会社地図の説明文設定。
		if($rls40 ne ""){
			$t_rls40 = " alt=\"$rls40\"";
		}

		if($rls20 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$rls20 = "<a href=\"$page_imgdir/$rls20\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($rls23 eq ""){				#拡大表示「off（空欄）」を形成。
				$rls20 = "<img src=\"$page_imgdir/$rls20\"$t_rls21$t_rls22$t_rls40>";
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){

					#地図画像の幅、高さが未設定を形成。
					$rls20 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$rls20','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$rls20\"$t_rls21$t_rls22$t_rls40 border=\"0\"></a>";
				}else{

					#地図画像の幅、高さが設定済みを形成。
					$rls20 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$rls20','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$rls20\"$t_rls21$t_rls22$t_rls40 border=\"0\"></a>";
				}
			}
		}
	}

	#幅を形成。
	$comment_width = $rls11 - $rls21;

	if($comment_width ne ""){
		if($comment_width >= 0){
			$t_comment_width = " width=\"$comment_width\"";
		}
	}

	#[table]を形成。
	if($rls7 ne ""){$t_rls7 = " bgcolor=\"$rls7\"";}
	if($rls3 ne ""){$t_rls3 = " border=\"$rls3\"";}
	if($rls3 eq ""){$t_rls3 = " border=\"0\"";}
	if($rls6 ne ""){$t_rls6 = " bordercolor=\"$rls6\"";}
	if($rls4 ne ""){$t_rls4 = " cellspacing=\"$rls4\"";}
	if($rls4 eq ""){$t_rls4 = " cellspacing=\"0\"";}
	if($rls5 ne ""){$t_rls5 = " cellpadding=\"$rls5\"";}
	if($rls5 eq ""){$t_rls5 = " cellpadding=\"0\"";}
	if($rls1 ne ""){$t_rls1 = " width=\"$rls1\"";}
	if($rls2 ne ""){$t_rls2 = " height=\"$rls2\"";}

	#[table]を表示。

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
EOM

	#記事内容情報の精査。
	foreach (@storycomment){

		local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_cmt3,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
		local($t_dsn8,$t_dsn7,$t_rls9,$t_cmt5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_rls10,$t_cmt5,$t_dsn10,$t_dsn11);
		local($t_rls17,$t_rls13,$t_rls16,$t_rls14,$t_rls15,$t_rls11,$t_rls12);
		local($t_rls26,$t_rls25,$t_rls38,$t_rls39,$t_rls36,$t_rls35,$t_rls33,$t_rls34);

		#記事内容情報の分割。
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#記事表示の一時停止要否。
		if($cmt6 eq "on"){
			next;
		}

		#画像を形成。
		if($cmt1 ne ""){$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}

		#[font]を形成。
		if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
		if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
		if($dsn4 ne "" || $dsn3 ne ""){$t2_font1 = "<font$t_dsn4$t_dsn3>";}
		if($dsn4 ne "" || $dsn3 ne ""){$t2_font2 = "</font>";}

		#強調文字を形成。
		if($dsn5 ne "" && $dsn6 ne ""){$title = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
		if($dsn5 ne "" && $dsn6 eq ""){$title = "$t2_font1<strong>$title</strong>$t2_font2";}
		if($dsn5 eq "" && $dsn6 ne ""){$title = "$t2_font1<i>$title</i>$t2_font2";}
		if($dsn5 eq "" && $dsn6 eq ""){$title = "$t2_font1$title$t2_font2";}

		#タイトルリンク先を形成。
		if($cmt2 ne ""){
			if($cmt3 ne ""){$t_cmt3 = " target=\"_blank\"";}
			$title = "$cmt1<a href=\"$cmt2\"$t_cmt3>$title</a>";
		}elsif($cmt2 eq ""){
			$title = "$cmt1$title";
		}

		#補足説明文を形成。
		if($msg ne ""){

			#[font]を形成。
			if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
			if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
			if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
			if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

			if($cmt7 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
				$msg =~ s/&#44;/,/g;
			}

			#補足説明文を形成。
			if($dsn14 ne "" && $dsn15 ne ""){$msg = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}
			if($dsn14 ne "" && $dsn15 eq ""){$msg = "$t3_font1<strong>$msg</strong>$t3_font2";}
			if($dsn14 eq "" && $dsn15 ne ""){$msg = "$t3_font1<i>$msg</i>$t3_font2";}
			if($dsn14 eq "" && $dsn15 eq ""){$msg = "$t3_font1$msg$t3_font2";}
		}

		if($cmt7 eq ""){
			#補足説明文の自動リンク。
			&auto_link;
		}

		#[td]を形成。
		if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
		if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
		if($rls9 ne ""){$t_rls9 = " width=\"$rls9\"";}
		if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}
		if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
		if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
		if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}

		if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
		if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
		if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
		if($cmt5 ne "") {$t_cmt5  = " height=\"$cmt5\"";}
		if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
		if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
		if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

		#プロフィール情報を表示。

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_rls9$t_cmt5$t_dsn1$t_dsn2>$title</td>
EOM

		if($msg ne "" || $dsn18 ne ""){

print<<"EOM";
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_rls10$t_cmt5$t_dsn10$t_dsn11>$msg</td>
EOM

		}

print<<"EOM";
       </tr>
EOM

	}

print<<"EOM";
      </table>
EOM

	#画像もしくはコメントがある場合。
	if($rls20 ne "" || $rls28 ne ""){

		#[table]を形成。
		if($rls17 ne ""){$t_rls17 = " bgcolor=\"$rls17\"";}
		if($rls13 ne ""){$t_rls13 = " border=\"$rls13\"";}
		if($rls13 eq ""){$t_rls13 = " border=\"0\"";}
		if($rls16 ne ""){$t_rls16 = " bordercolor=\"$rls16\"";}
		if($rls14 ne ""){$t_rls14 = " cellspacing=\"$rls14\"";}
		if($rls14 eq ""){$t_rls14 = " cellspacing=\"0\"";}
		if($rls15 ne ""){$t_rls15 = " cellpadding=\"$rls15\"";}
		if($rls15 eq ""){$t_rls15 = " cellpadding=\"0\"";}
		if($rls11 ne ""){$t_rls11 = " width=\"$rls11\"";}
		if($rls12 ne ""){$t_rls12 = " height=\"$rls12\"";}

		#[td]を形成。
		if($rls26 ne ""){$t_rls26 = " bgcolor=\"$rls26\"";}
		if($rls25 ne ""){$t_rls25 = " bordercolor=\"$rls25\"";}
		if($rls38 ne ""){$t_rls38 = " align=\"$rls38\"";}
		if($rls39 ne ""){$t_rls39 = " valign=\"$rls39\"";}
		if($rls39 eq ""){$t_rls39 = " valign=\"top\"";}

		if($rls36 ne ""){$t_rls36 = " bgcolor=\"$rls36\"";}
		if($rls35 ne ""){$t_rls35 = " bordercolor=\"$rls35\"";}
		if($rls33 ne ""){$t_rls33 = " align=\"$rls33\"";}
		if($rls34 ne ""){$t_rls34 = " valign=\"$rls34\"";}
		if($rls34 eq ""){$t_rls34 = " valign=\"top\"";}

print<<"EOM";
      <br>
      <table background="$page_imgdir/$rls18"$t_rls17$t_rls13$t_rls16$t_rls14$t_rls15$t_rls11$t_rls12>
       <tr>
EOM

		if($rls20 eq "" && $rls28 ne ""){

			print"        <td background=\"$page_imgdir/$rls37\"$t_rls36$t_rls35$t_rls33$t_rls34>$rls28</td>\n";

		}elsif($rls20 ne "" && $rls28 eq ""){

			print"        <td background=\"$page_imgdir/$rls27\"$t_rls26$t_rls25$t_rls22$t_rls38$t_rls39>$rls20</td>\n";

		}else{

			if($rls19 eq "left"){

				#画像を配置(左)。
				if($rls20 ne ""){print"        <td background=\"$page_imgdir/$rls27\"$t_rls26$t_rls25$t_rls21$t_rls22$t_rls38$t_rls39>$rls20</td>\n";}
				if($rls28 ne ""){print"        <td background=\"$page_imgdir/$rls37\"$t_rls36$t_rls35$t_comment_width$t_rls33$t_rls34>$rls28</td>\n";}

			}elsif($rls19 eq "right"){

				#画像を配置(右)。
				if($rls28 ne ""){print"        <td background=\"$page_imgdir/$rls37\"$t_rls36$t_rls35$t_comment_width$t_rls33$t_rls34>$rls28</td>\n";}
				if($rls20 ne ""){print"        <td background=\"$page_imgdir/$rls27\"$t_rls26$t_rls25$t_rls21$t_rls22$t_rls38$t_rls39>$rls20</td>\n";}
			}

		}

print<<"EOM";
       </tr>
      </table>
EOM

	}
}

1;
