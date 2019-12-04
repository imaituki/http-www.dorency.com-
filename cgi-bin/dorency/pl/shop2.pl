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
# shop2
# ショップ2の記事表示。
##################################################
sub shop2{

	#パラメータ情報を取得。
	&shop_hidden_set;

	#1ページに表示する記事数を代入。(未設定の場合は500を指定)
	if($rls1 ne ""){
		$p_view = $rls1;
	}else{
		$p_view = "500";
	}

	#[font]を形成。
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	#表示項目を形成。
	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		$rls11 = "$t1_font1$rls11$t1_font2";
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
		if($rls15 ne ""){$rls15 = "$t1_font1$rls15$t1_font2";}

	}

	#検索フォーム表示。
	if($rls33 ne ""){

		#キーワード検索フォームを表示。
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="search">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

			if($rls27 ne ""){

				@serch1 = split(/<br>/,$rls27);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls26</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch1){
					print"        <option value=\"$x\">$x</option>\n";
					$k++;
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls29 ne ""){

				@serch2 = split(/<br>/,$rls29);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls28</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch2){
					print"        <option value=\"$x\">$x</option>\n";
					$k++;
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls31 ne ""){

				@serch3 = split(/<br>/,$rls31);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls30</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch3){
					print"        <option value=\"$x\">$x</option>\n";
					$k++;
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

print<<"EOM";
        <td><input type="submit" value="検索"></td>
       </tr>
      </table>
      </form>
EOM

		#検索フォームを表示。
		}else{

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="search">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <input type="text" name="word" size="25">
        <select name="cond">
        <option value="and">AND</option>
        <option value="or">OR</option>
        </select>
        <input type="submit" value="検索">
        </td>
       </tr>
      </table>
      </form>
EOM

		}
	}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="hidden" name="cart" value="view">
$hidden
        <input type="submit" name="submit" value="選択内容の表\示">
EOM

	if($low50 eq "on"){

		my $new_width = $cds1 + 40;
print<<"EOM";
<input type="button" value="特定商取引の表\示" onclick="MM_openBrSpecificWindow('specific.cgi','specific','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$new_width,height=530',$new_width,530);return(false);">
EOM
	}

print<<"EOM";
        </form>
        </td>
       </tr>
      </table>
EOM

	#[table]を形成。
	if($rls7 ne ""){$t_rls7 = " bgcolor=\"$rls7\"";}
	if($rls3 ne ""){$t_rls3 = " border=\"$rls3\"";}
	if($rls3 eq ""){$t_rls3 = " border=\"0\"";}
	if($rls6 ne ""){$t_rls6 = " bordercolor=\"$rls6\"";}
	if($rls4 ne ""){$t_rls4 = " cellspacing=\"$rls4\"";}
	if($rls4 eq ""){$t_rls4 = " cellspacing=\"0\"";}
	if($rls5 ne ""){$t_rls5 = " cellpadding=\"$rls5\"";}
	if($rls5 eq ""){$t_rls5 = " cellpadding=\"0\"";}
	if($rls2 ne ""){$t_rls2 = " width=\"$rls2\"";}

	#[td]を形成。
	if($rls24 ne ""){$t_rls24 = " bgcolor=\"$rls24\"";}
	if($rls23 ne ""){$t_rls23 = " bordercolor=\"$rls23\"";}

	if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
	if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}

	if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}
	if($rls16 ne ""){$t_rls16 = " width=\"$rls16\"";}

	#表示項目を表示。

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls12>$rls11</td>
EOM

	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
	if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
EOM

	#記事内容情報数の初期化。
	$i = 0;

	#ページングの初期化。
	$j = 0;

	#記事内容情報の精査。
	foreach (@storycomment){

		local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn8,$t_dsn7,$t_dsn1,$t_dsn2,$t_cmt5);
		local($t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
		local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
		local($t_dsn35,$t_dsn34,$t_dsn28,$t_dsn29,$t_dsn31,$t_dsn30,$t5_font1,$t5_font2);

		#記事内容情報の分割。
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#記事表示の一時停止要否。
		if($cmt9 eq "on"){
			next;
		}

		$i++;

		if($view eq ""){

			#ページングでない場合。
			if($i > $p_view){
				last;
			}
		}elsif($view ne ""){

			#ページングである場合。
			if($i < $view){
				next;
			}else{

				$j++;

				if($j > $p_view){
					last;
				}
			}
		}

		#商品表示。
		&shop2_parts;

	}

print<<"EOM";
      </table>
EOM

	#改頁処理。
	if($view eq ""){
		$view = 1;
	}
	$next_line = $view + $p_view;
	$back_line = $view - $p_view;

	if($back_line > 0 || $next_line <= $i){

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

		#前頁処理。
		if($back_line > 0){

			if($rls17 ne ""){
				$backName = $rls17;
			}else{
				$backName = "前の$p_view件";
			}

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$back_line">
        <input type="submit" value="$backName">
        </form>
        </td>
EOM

		}

		#次頁処理。
		if($next_line <= $i){

			if($rls18 ne ""){
				$nextName = $rls18;
			}else{
				$nextName = "次の$p_view件";
			}

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$next_line">
        <input type="submit" value="$nextName">
        </form>
        </td>
EOM

		}

print<<"EOM";
       </tr>
      </table>
EOM

	}
}
##################################################
# shop2_detail
# ショップ2の詳細画面表示。
##################################################
sub shop2_detail{


	if($low50 eq "on"){

		my $new_width = $cds1 + 40;
print<<"EOM";
<input type="button" value="特定商取引の表\示" onclick="MM_openBrSpecificWindow('specific.cgi','specific','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$new_width,height=530',$new_width,530);return(false);"><br><br>
EOM
	}


	#パラメータ情報を取得。
	&shop_hidden_set;

	#[font]を形成。
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	#表示項目を形成。
	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		$rls11 = "$t1_font1$rls11$t1_font2";
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
		if($rls15 ne ""){$rls15 = "$t1_font1$rls15$t1_font2";}

	}

	#記事内容情報の精査。
	foreach (@storycomment){

		#記事内容情報の分割。
		($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#記事表示の一時停止要否。
		if($no eq "$in{'no'}"){
			last;
		}
	}

	#[img]を形成。
	if($wimg1 ne ""){$t_wimg1 = " width=\"$wimg1\"";}
	if($himg1 ne ""){$t_himg1 = " height=\"$himg1\"";}

	#商品画像1を形成。
	if($img1 ne ""){

		#記事の幅、高さの設定。
		local($width,$height) = split(/×/,$simg1);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#画像の説明文設定。
		if($cmt11 ne ""){
			$t_cmt11 = " alt=\"$cmt11\"";
		}

		if($img1 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$img1 = "<a href=\"$page_imgdir/$img1\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($pimg1 eq ""){				#拡大表示「off（空欄）」を形成。
				$img1 = "<img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt11>";
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){

					#記事の幅、高さが未設定を形成。
					$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt11 border=\"0\"></a>";
				}else{

					#記事の幅、高さが設定済みを形成。
					$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt11 border=\"0\"></a>";
				}
			}
		}
	}

	#[img]を形成。
	if($wimg2 ne ""){$t_wimg2 = " width=\"$wimg2\"";}
	if($himg2 ne ""){$t_himg2 = " height=\"$himg2\"";}

	#商品画像2を形成。
	if($img2 ne ""){

		#記事の幅、高さの設定。
		local($width,$height) = split(/×/,$simg2);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#画像の説明文設定。
		if($cmt12 ne ""){
			$t_cmt12 = " alt=\"$cmt12\"";
		}

		if($img2 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$img2 = "<a href=\"$page_imgdir/$img2\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($pimg2 eq ""){				#拡大表示「off（空欄）」を形成。
				$img2 = "<img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt12>";
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){

					#記事の幅、高さが未設定を形成。
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt12 border=\"0\"></a>";
				}else{

					#記事の幅、高さが設定済みを形成。
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt12 border=\"0\"></a>";
				}
			}
		}
	}

	#[img]を形成。
	if($wimg3 ne ""){$t_wimg3 = " width=\"$wimg3\"";}
	if($himg3 ne ""){$t_himg3 = " height=\"$himg3\"";}

	#商品画像3を形成。
	if($img3 ne ""){

		#記事の幅、高さの設定。
		local($width,$height) = split(/×/,$simg3);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#画像の説明文設定。
		if($cmt13 ne ""){
			$t_cmt13 = " alt=\"$cmt13\"";
		}

		if($img3 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$img3 = "<a href=\"$page_imgdir/$img3\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($pimg3 eq ""){				#拡大表示「off（空欄）」を形成。
				$img3 = "<img src=\"$page_imgdir/$img3\" $t_wimg3$t_himg3$t_cmt13>";
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){

					#記事の幅、高さが未設定を形成。
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt13 border=\"0\"></a>";
				}else{

					#記事の幅、高さが設定済みを形成。
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt13 border=\"0\"></a>";
				}
			}
		}
	}

	#[font]を形成。
	if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
	if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font1 = "<font$t_dsn4$t_dsn3>";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font2 = "</font>";}

	#商品名を形成。
	if($cmt1 ne "")               {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
	if($dsn5 ne "" && $dsn6 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
	if($dsn5 ne "" && $dsn6 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
	if($dsn5 eq "" && $dsn6 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
	if($dsn5 eq "" && $dsn6 eq ""){$sub  = "$t2_font1$title$t2_font2";}

	if($cmt14 eq ""){
		#補足説明文の自動リンク。
		&auto_link;
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
	if($rls2 ne ""){$t_rls2 = " width=\"$rls2\"";}

	#[td]を形成。
	if($rls24 ne ""){$t_rls24 = " bgcolor=\"$rls24\"";}
	if($rls23 ne ""){$t_rls23 = " bordercolor=\"$rls23\"";}

	if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
	if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}

	if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}
	if($rls16 ne ""){$t_rls16 = " width=\"$rls16\"";}

	if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
	if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
	if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
	if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
	if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}

	if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}

	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	#[font]を形成。
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

	#最後の[CR/LF]除去。
	chomp($id);

	#現在日付取得。
	$times = time;

	$id = sprintf("%010d",$no);

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0" name="item_1">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="select">
      <input type="hidden" name="code" value="$times">
      <input type="hidden" name="id" value="$id">
      <input type="hidden" name="unit" value="1">
      <input type="hidden" name="pageType" value="shop2">
$hidden
EOM

	#商品詳細情報1を表示。
	if($rls13 eq ""){
		print"      <input type=\"hidden\" name=\"other1\" value=\"0\">\n";
	}

	#商品詳細情報2を表示。
	if($rls15 eq ""){
		print"      <input type=\"hidden\" name=\"other2\" value=\"0\">\n";
	}

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls12>$rls11</td>
EOM

	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
	if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>
EOM

	#金額の置換。（クロスサイトスクリプティング対応）
	$cmt2 =~ s/：/:/g;
	$cmt2 =~ s/\&\#44\;//g;
	$cmt2 =~ s/、//g;
	$cmt2 =~ s/，//g;

	#金額の分割。
	my @PRICE_TEMP = split(/<br>/,$cmt2);
	my @PRICE      = ();

	#空要素の削除。
	foreach my $PRICE_TEMP(@PRICE_TEMP){

		if($PRICE_TEMP ne ""){
			push(@PRICE,$PRICE_TEMP);
		}

	}

	#金額の表示。
	if($#PRICE > 0){
		print"        <select name=\"unit_price\" onChange=\"selectData('item\_1','shop2')\">\n";
	}

	#商品価格のIDを初期化。
	$o0 = 1;

	foreach $x(@PRICE){

		local($unit_price,$type) = split(/:/,$x);
		$unit_price              =~ s/０/0/g;
		$unit_price              =~ s/１/1/g;
		$unit_price              =~ s/２/2/g;
		$unit_price              =~ s/３/3/g;
		$unit_price              =~ s/４/4/g;
		$unit_price              =~ s/５/5/g;
		$unit_price              =~ s/６/6/g;
		$unit_price              =~ s/７/7/g;
		$unit_price              =~ s/８/8/g;
		$unit_price              =~ s/９/9/g;
		$unit_price2             = $unit_price;
		$unit_price2             =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		if($#PRICE > 0){
			if($unit_price2 ne "" || $type ne "" ){
				print"        <option value=\"$o0\">$unit_price2円 $type</option>\n";
			}
		}else{

			print"        <input type=\"hidden\" name=\"unit_price\" value=\"$o0\">";
			print"        <input type=\"hidden\" name=\"unit_price_data\" value=\"$unit_price2円 $type\">";
			if($dsn14 ne "" && $dsn15 ne ""){print"        $t3_font1<strong><i>$unit_price2円 $type</i></strong>$t3_font2";}
			if($dsn14 ne "" && $dsn15 eq ""){print"        $t3_font1<strong>$unit_price2円 $type</strong>$t3_font2";}
			if($dsn14 eq "" && $dsn15 ne ""){print"        $t3_font1<i>$unit_price2円 $type</i>$t3_font2";}
			if($dsn14 eq "" && $dsn15 eq ""){print"        $t3_font1$unit_price2円 $type$t3_font2";}

		}

		#商品価格のIDをカウントアップ。
		$o0++;

	}

	if($#PRICE > 0){
		print"        </select>\n";
	}

print<<"EOM";
        </td>
EOM

	#商品詳細情報を表示。
	if($rls13 ne ""){

		#[td]を形成。
		if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
		if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
		if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
		if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
		if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

		#[font]を形成。
		if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
		if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

print<<"EOM";
        <td background="$page_imgdir/$dsn27"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>
EOM

		#商品詳細情報の分割。
		@OTHER1 = split(/<br>/,$cmt3);

		if($#OTHER1 == -1){
			print"              <input type=\"hidden\" name=\"other1\" value=\"0\">\n";
		}else{

			#商品詳細情報を表示。
			if($#OTHER1 > 0){
				print"        <select name=\"other1\" onChange=\"selectData('item\_1','shop2')\">\n";
			}

			#項目1のIDを初期化。
			$o1 = 1;

			foreach $x(@OTHER1){
				if($x ne ""){
					if($#OTHER1 > 0){
						print"        <option value=\"$o1\">$x</option>\n";
					}else{
						print"        <input type=\"hidden\" name=\"other1\" value=\"$o1\">";
						print"        <input type=\"hidden\" name=\"other1_data\" value=\"$x\">";
						if($dsn23 ne "" && $dsn24 ne ""){print"        $t4_font1<strong><i>$x</i></strong>$t4_font2";}
						if($dsn23 ne "" && $dsn24 eq ""){print"        $t4_font1<strong>$x</strong>$t4_font2";}
						if($dsn23 eq "" && $dsn24 ne ""){print"        $t4_font1<i>$x</i>$t4_font2";}
						if($dsn23 eq "" && $dsn24 eq ""){print"        $t4_font1$x$t4_font2";}
					}
				}

				#項目1のIDをカウントアップ。
				$o1++;

			}

			if($#OTHER1 > 0){
				print"        </select>\n";
			}

		}

print<<"EOM";
        </td>
EOM

	}

	#商品詳細情報を表示。
	if($rls15 ne ""){

		#[td]を形成。
		if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
		if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
		if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
		if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
		if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

		#[font]を形成。
		if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
		if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

print<<"EOM";
        <td background="$page_imgdir/$dsn36"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>
EOM

		#商品詳細情報の分割。
		@OTHER2 = split(/<br>/,$cmt4);

		if($#OTHER2 == -1){
			print"              <input type=\"hidden\" name=\"other2\" value=\"0\">\n";
		}else{

			#商品詳細情報を表示。
			if($#OTHER2 > 0){
				print"        <select name=\"other2\" onChange=\"selectData('item\_1','shop2')\">\n";
			}

			#項目2のIDを初期化。
			$o2 = 1;

			foreach $x(@OTHER2){
				if($x ne ""){
					if($#OTHER2 > 0){
						print"        <option value=\"$o2\">$x</option>\n";
					}else{
						print"        <input type=\"hidden\" name=\"other2\" value=\"$o2\">";
						print"        <input type=\"hidden\" name=\"other2_data\" value=\"$x\">";
						if($dsn32 ne "" && $dsn33 ne ""){print"        $t5_font1<strong><i>$x</i></strong>$t5_font2";}
						if($dsn32 ne "" && $dsn33 eq ""){print"        $t5_font1<strong>$x</strong>$t5_font2";}
						if($dsn32 eq "" && $dsn33 ne ""){print"        $t5_font1<i>$x</i>$t5_font2";}
						if($dsn32 eq "" && $dsn33 eq ""){print"        $t5_font1$x$t5_font2";}
					}
				}

				#項目2のIDをカウントアップ。
				$o2++;

			}

			if($#OTHER2 > 0){
				print"        </select>\n";
			}

		}

print<<"EOM";
        </td>
EOM

	}

print<<"EOM";
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
EOM

	if($cds18 eq ""){$cds18 = "選択する";}
	if($cds19 eq ""){$cds19 = "在庫切れ";}

	#在庫状況を表示。
	if($cmt10 eq "on"){

print<<"EOM";
       <tr>
        <td>
         <input type="submit" name="submit" value="商品一覧に戻る" style="width:150px">
        </td>
        <td>
         <input type=\"hidden\" name=\"submit_data\" value=\"$cds18\"><input type=\"hidden\" name=\"zaiko_data\" value=\"$cds19\"><input type="button" value="$cds19" style="width:150px" disabled>
        </td>
       </tr>
EOM

	}else{

print<<"EOM";
       <tr>
        <td>
         <input type="submit" name="submit" value="商品一覧に戻る" style="width:150px">
        </td>
        <td>
         <input type=\"hidden\" name=\"submit_data\" value=\"$cds18\"><input type=\"hidden\" name=\"zaiko_data\" value=\"$cds19\"><input type="submit" name="submit" id="data_submit" value="$cds18" style="width:150px" disabled>
        </td>
       </tr>
EOM

	}

print<<"EOM";
      </table>
EOM

	#サイトサーバー設定情報の読み込み。
	if(-e "./itemStock.dat"){

		open(IN,"./itemStock.dat");
		flock(IN,1);		#ファイルを読み出しロック。
		my @itemStock = <IN>;
		flock(IN,8);		# ロック解除。
		close(IN);

		if($#itemStock != -1){

			foreach my $itemStock(@itemStock){

				my(@is_data) = split(/\,/,$itemStock);

				if($is_data[7] eq $no && $is_data[8] eq "$in{'category'}$in{'page'}"){

					print"         <input type=\"hidden\" name=\"$is_data[4],$is_data[1],$is_data[2],$is_data[3]\" value=\"$is_data[6]\">\n";

				}

			}

		}

		undef(@itemStock);

	}

print<<"EOM";
      </form>
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
EOM

	#商品画像を表示。
	if($img1 ne "" || $img2 ne "" || $img3 ne ""){

print<<"EOM";
       <tr>
        <td$t_dsn7 align="center" valign="middle">
         <table border="0" cellpadding="1" cellspacing="1">
          <tr>
EOM

		if($img1 ne ""){print"           <td>$img1</td>\n";}
		if($img2 ne ""){print"           <td>$img2</td>\n";}
		if($img3 ne ""){print"           <td>$img3</td>\n";}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

	}

	#コメントを表示。
	if($msg ne ""){

		if($cmt14 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
			$msg =~ s/&#44;/,/g;
		}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1$msg$t2_font2</td>
       </tr>
EOM

	}

print<<"EOM";
      </table>
EOM

}
##################################################
# shop2_search
# 検索処理。
##################################################
sub shop2_search{

	#パラメータ情報を取得。
	&shop_hidden_set;

	#[font]を形成。
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	#表示項目を形成。
	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		$rls11 = "$t1_font1$rls11$t1_font2";
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
		if($rls15 ne ""){$rls15 = "$t1_font1$rls15$t1_font2";}

	}

	#検索ワード入力エラー。
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#エラー画面を表示。
	if($error ne ""){
		&shop2_search_error;
	}else{

		#キーワード検索フォームを表示。
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

			#入力内容を整理。
			$word1 = $in{'word1'};
			$word2 = $in{'word2'};
			$word3 = $in{'word3'};
			$word1 =~ s/,/&#44;/g;
			$word2 =~ s/,/&#44;/g;
			$word3 =~ s/,/&#44;/g;

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="search">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

			if($rls27 ne ""){

				@serch1 = split(/<br>/,$rls27);

				if($word1 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word1">
        <option value="" $select1>$rls26</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch1){

					if($word1 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

					$k++;

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls29 ne ""){

				@serch2 = split(/<br>/,$rls29);

				if($word2 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word2">
        <option value="" $select1>$rls28</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch2){

					if($word2 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

					$k++;

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls31 ne ""){

				@serch3 = split(/<br>/,$rls31);

				if($word3 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word3">
        <option value="" $select1>$rls30</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch3){

					if($word3 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

					$k++;

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

print<<"EOM";
        <td><input type="submit" value="再検索"></td>
       </tr>
      </table>
      </form>
EOM

		#検索フォームを表示。
		}else{

			#入力内容を整理。
			$cond  = $in{'cond'};
			$word  = $in{'word'};
			$word  =~ s/　/ /g;
			$word  =~ s/\t/ /g;
			@pairs = split(/ /,$word);

			if($in{'cond'} eq "and"){
				$cond_select1 = "selected";
			}elsif($in{'cond'} eq "or"){
				$cond_select2 = "selected";
			}

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="search">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <input type="text" name="word" size="25" value="$in{'word'}">
        <select name="cond">
        <option value="and" $cond_select1>AND</option>
        <option value="or" $cond_select2>OR</option>
        </select>
        <input type="submit" value="再検索">
        </td>
       </tr>
      </table>
      </form>
EOM

		}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="view">
$hidden
         <input type="submit" name="submit" value="選択内容の表\示">
EOM

	if($low50 eq "on"){

		my $new_width = $cds1 + 40;
print<<"EOM";
<input type="button" value="特定商取引の表\示" onclick="MM_openBrSpecificWindow('specific.cgi','specific','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$new_width,height=530',$new_width,530);return(false);">
EOM
	}

print<<"EOM";
         </form>
        </td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td colspan="2"><font size="-1"><strong>－ 検索結果 －</strong></font></td>
       </tr>
      </table>
EOM

		#[table]を形成。
		if($rls7 ne ""){$t_rls7 = " bgcolor=\"$rls7\"";}
		if($rls3 ne ""){$t_rls3 = " border=\"$rls3\"";}
		if($rls3 eq ""){$t_rls3 = " border=\"0\"";}
		if($rls6 ne ""){$t_rls6 = " bordercolor=\"$rls6\"";}
		if($rls4 ne ""){$t_rls4 = " cellspacing=\"$rls4\"";}
		if($rls4 eq ""){$t_rls4 = " cellspacing=\"0\"";}
		if($rls5 ne ""){$t_rls5 = " cellpadding=\"$rls5\"";}
		if($rls5 eq ""){$t_rls5 = " cellpadding=\"0\"";}
		if($rls2 ne ""){$t_rls2 = " width=\"$rls2\"";}

		#[td]を形成。
		if($rls24 ne ""){$t_rls24 = " bgcolor=\"$rls24\"";}
		if($rls23 ne ""){$t_rls23 = " bordercolor=\"$rls23\"";}

		if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
		if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}

		if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}
		if($rls16 ne ""){$t_rls16 = " width=\"$rls16\"";}

		#[table][td]を表示。

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls12>$rls11</td>
EOM

		if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
		if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
EOM

		#検索処理。
		$i = 0;

		#記事内容情報の精査。
		foreach $line(@storycomment) {

			local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn8,$t_dsn7,$t_dsn1,$t_dsn2,$t_cmt5);
			local($t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
			local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
			local($t_dsn35,$t_dsn34,$t_dsn28,$t_dsn29,$t_dsn31,$t_dsn30,$t5_font1,$t5_font2);

			#記事内容情報の分割。
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line);

			#記事表示の一時停止要否。
			if($cmt9 eq "on"){
				next;
			}

			if($in{'word'} eq ""){

				$flag = 0;

				if($word1 ne "" && $word2 eq "" && $word3 eq ""){if($cmt6 eq "$word1")                                          {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 eq ""){if($cmt6 eq "$word1" && $cmt7 eq "$word2")                     {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 ne ""){if($cmt6 eq "$word1" && $cmt7 eq "$word2" && $cmt8 eq "$word3"){$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 eq ""){if($cmt7 eq "$word2")                                          {$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 ne ""){if($cmt7 eq "$word2" && $cmt8 eq "$word3")                     {$flag = 1;}}
				if($word1 eq "" && $word2 eq "" && $word3 ne ""){if($cmt8 eq "$word3")                                          {$flag = 1;}}
				if($word1 ne "" && $word2 eq "" && $word3 ne ""){if($cmt6 eq "$word1" && $cmt8 eq "$word3")                     {$flag = 1;}}

			}else{

				$flag = 0;

				$t_cmt2 = $cmt2;
				$t_cmt3 = $cmt3;
				$t_cmt4 = $cmt4;

				$t_cmt2 =~ s/<br>/,/g;
				$t_cmt3 =~ s/<br>/,/g;
				$t_cmt4 =~ s/<br>/,/g;

				$line_tmp = "$title,$msg,$t_cmt2,$t_cmt3,$t_cmt4";

				foreach $pair(@pairs) {

					$pair =~ s/,/&#44;/g;

					if(index($line_tmp,$pair) >= 0){

						$flag = 1;
						if($cond eq "or"){
							last;
						}
					}else{

						if($cond eq "and"){
							$flag = 0;
							last;
						}
					}
				}
			}

			if($flag == 1){

				$i++;

				#商品表示。
				&shop2_parts;

			}
		}

print<<"EOM";
      </table>
EOM

		if($i > 0){

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><font size="-1"><strong>以上$i件が該当しました。</strong></font></td>
       </tr>
      </table>
EOM

		}else{

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><font size="-1"><strong>該当するものは見つかりませんでした。</strong></font></td>
       </tr>
      </table>
EOM

		}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="submit" value="一覧に戻る">
        </form>
        </td>
       </tr>
      </table>
EOM

	}
}
##################################################
# shop2_parts
# 商品表示。
##################################################
sub shop2_parts{

	#[font]を形成。
	if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
	if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font1 = "<font$t_dsn4$t_dsn3>";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font2 = "</font>";}

	#商品名を形成。
	if($cmt1 ne "")               {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
	if($dsn5 ne "" && $dsn6 ne ""){$sub  = "<a href=\"$script?category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no\">$t2_font1<strong><i>$title</i></strong>$t2_font2</a>";}
	if($dsn5 ne "" && $dsn6 eq ""){$sub  = "<a href=\"$script?category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no\">$t2_font1<strong>$title</strong>$t2_font2</a>";}
	if($dsn5 eq "" && $dsn6 ne ""){$sub  = "<a href=\"$script?category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no\">$t2_font1<i>$title</i>$t2_font2</a>";}
	if($dsn5 eq "" && $dsn6 eq ""){$sub  = "<a href=\"$script?category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no\">$t2_font1$title$t2_font2</a>";}

	#[td]を形成。
	if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
	if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
	if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
	if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
	if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}

	if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}

	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	#[font]を形成。
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

	#商品名を表示。

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>
EOM

	#金額の置換。（クロスサイトスクリプティング対応）
	$cmt2 =~ s/：/:/g;
	$cmt2 =~ s/\&\#44\;//g;
	$cmt2 =~ s/、//g;
	$cmt2 =~ s/，//g;

	#金額の分割。
	@PRICE = split(/<br>/,$cmt2);

	#金額の表示。
	foreach $x(@PRICE){

		local($unit_price,$type) = split(/:/,$x);
		$unit_price              =~ s/０/0/g;
		$unit_price              =~ s/１/1/g;
		$unit_price              =~ s/２/2/g;
		$unit_price              =~ s/３/3/g;
		$unit_price              =~ s/４/4/g;
		$unit_price              =~ s/５/5/g;
		$unit_price              =~ s/６/6/g;
		$unit_price              =~ s/７/7/g;
		$unit_price              =~ s/８/8/g;
		$unit_price              =~ s/９/9/g;
		$unit_price2             = $unit_price;
		$unit_price2             =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		if($dsn14 ne "" && $dsn15 ne ""){print"        $t3_font1<strong><i>$unit_price2円 $type</i></strong>$t3_font2<br>\n";}
		if($dsn14 ne "" && $dsn15 eq ""){print"        $t3_font1<strong>$unit_price2円 $type</strong>$t3_font2<br>\n";}
		if($dsn14 eq "" && $dsn15 ne ""){print"        $t3_font1<i>$unit_price2円 $type</i>$t3_font2<br>\n";}
		if($dsn14 eq "" && $dsn15 eq ""){print"        $t3_font1$unit_price2円 $type$t3_font2<br>\n";}

	}

print<<"EOM";
        </td>
EOM

	#商品詳細情報を表示。
	if($rls13 ne ""){

		#[td]を形成。
		if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
		if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
		if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
		if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
		if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

		#[font]を形成。
		if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
		if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

print<<"EOM";
        <td background="$page_imgdir/$dsn27"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>
EOM

		#商品詳細情報の分割。
		@OTHER1 = split(/<br>/,$cmt3);

		#商品詳細情報を表示。
		foreach $x(@OTHER1){

			if($dsn23 ne "" && $dsn24 ne ""){print"        $t4_font1<strong><i>$x</i></strong>$t4_font2<br>";}
			if($dsn23 ne "" && $dsn24 eq ""){print"        $t4_font1<strong>$x</strong>$t4_font2<br>";}
			if($dsn23 eq "" && $dsn24 ne ""){print"        $t4_font1<i>$x</i>$t4_font2<br>";}
			if($dsn23 eq "" && $dsn24 eq ""){print"        $t4_font1$x$t4_font2<br>";}

		}

print<<"EOM";
        </td>
EOM

	}

	#商品詳細情報を表示。
	if($rls15 ne ""){

		#[td]を形成。
		if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
		if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
		if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
		if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
		if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

		#[font]を形成。
		if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
		if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

print<<"EOM";
        <td background="$page_imgdir/$dsn36"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>
EOM

		#商品詳細情報の分割。
		@OTHER2 = split(/<br>/,$cmt4);

		#商品詳細情報を表示。
		foreach $x(@OTHER2){

			if($dsn32 ne "" && $dsn33 ne ""){print"        $t5_font1<strong><i>$x</i></strong>$t5_font2<br>";}
			if($dsn32 ne "" && $dsn33 eq ""){print"        $t5_font1<strong>$x</strong>$t5_font2<br>";}
			if($dsn32 eq "" && $dsn33 ne ""){print"        $t5_font1<i>$x</i>$t5_font2<br>";}
			if($dsn32 eq "" && $dsn33 eq ""){print"        $t5_font1$x$t5_font2<br>";}

		}

print<<"EOM";
        </td>
EOM

	}

print<<"EOM";
       </tr>
EOM

}
##################################################
# shop2_search_error
# エラー処理。
##################################################
sub shop2_search_error{

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center">-----------------<strong>エラーメッセージ</strong>-----------------</td>
       </tr>
       <tr>
        <td align="center">
        <font color="#FF0000" size="-1"><strong>検索キーワードを設定してください。</strong></font>
        </td>
       </tr>
       <tr>
        <td align="center">
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="submit" value="検索画面に戻る">
        </td>
       </tr>
      </table>
      </div>
EOM

}

1;
