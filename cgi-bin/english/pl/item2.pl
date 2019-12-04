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
# item2
# 商品案内2の記事表示。
##################################################
sub item2{

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
		if($rls11 ne ""){$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";}
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		if($rls11 ne ""){$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";}
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		if($rls11 ne ""){$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";}
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
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
      <input type="hidden" name="search" value="on">
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

		}else{

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="hidden" name="search" value="on">
        <input type="text" name="word" size="25" value="$in{'word'}">
        <select name="cond">
        <option value="and">AND</option>
        <option value="or">OR</option>
        </select>
        <input type="submit" value="検索">
        </form>
        </td>
       </tr>
      </table>
EOM

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
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls12>$rls11</td>\n";}
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

		local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
		local($t_dsn22,$t_dsn21,$t4_font1,$t4_font2,$t_dsn31,$t_dsn30,$t5_font1,$t5_font2);
		local($t_dsn8,$t_dsn7,$t_dsn1,$t_dsn2,$t_dsn2,$t_cmt5,$t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11);
		local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn35,$t_dsn34,$t_dsn28,$t_dsn29);

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

		#[font]を形成。
		if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
		if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

		#コメント1を形成。
		if($dsn14 ne "" && $dsn15 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
		if($dsn14 ne "" && $dsn15 eq ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
		if($dsn14 eq "" && $dsn15 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
		if($dsn14 eq "" && $dsn15 eq ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}

		#[font]を形成。
		if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
		if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

		#コメント2を形成。
		if($dsn23 ne "" && $dsn24 ne ""){$cmt3 = "$t4_font1<strong><i>$cmt3</i></strong>$t4_font2";}
		if($dsn23 ne "" && $dsn24 eq ""){$cmt3 = "$t4_font1<strong>$cmt3</strong>$t4_font2";}
		if($dsn23 eq "" && $dsn24 ne ""){$cmt3 = "$t4_font1<i>$cmt3</i>$t4_font2";}
		if($dsn23 eq "" && $dsn24 eq ""){$cmt3 = "$t4_font1$cmt3$t4_font2";}

		#[font]を形成。
		if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
		if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

		#コメント3を形成。
		if($dsn32 ne "" && $dsn33 ne ""){$cmt4 = "$t5_font1<strong><i>$cmt4</i></strong>$t5_font2";}
		if($dsn32 ne "" && $dsn33 eq ""){$cmt4 = "$t5_font1<strong>$cmt4</strong>$t5_font2";}
		if($dsn32 eq "" && $dsn33 ne ""){$cmt4 = "$t5_font1<i>$cmt4</i>$t5_font2";}
		if($dsn32 eq "" && $dsn33 eq ""){$cmt4 = "$t5_font1$cmt4$t5_font2";}

		#商品詳細リンクを形成。
		if($img1 ne "" || $img2 ne "" || $img3 ne "" || $msg ne ""){
			if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){
				$sub = "<a href=\"$ask7\/$cgi_host\/$site_folder\/siteup.cgi?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$sub</a>";
			}else{
				$sub = "<a href=\"$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$sub</a>";
			}
		}

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

		if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
		if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
		if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
		if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
		if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

		if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
		if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
		if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
		if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
		if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

		#商品情報を表示。

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
EOM

		if($rls11 ne ""){print"        <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>$cmt2</td>\n";}
		if($rls13 ne ""){print"        <td background=\"$page_imgdir/$dsn27\"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>$cmt3</td>\n";}
		if($rls15 ne ""){print"        <td background=\"$page_imgdir/$dsn36\"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>$cmt4</td>\n";}

print<<"EOM";
       </tr>
EOM

	}

print<<"EOM";
      </table>
EOM

	#改頁処理
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

		#前頁処理
		if($back_line > 0){

			if($rls17 ne ""){
				$backName = $rls17;
			}else{
				$backName = "前の$p_view件";
			}

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="view" value="$back_line">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="submit" value="$backName">
        </form>
        </td>
EOM

		}

		#次頁処理
		if($next_line <= $i){

			if($rls18 ne ""){
				$nextName = $rls18;
			}else{
				$nextName = "次の$p_view件";
			}

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="view" value="$next_line">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
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
# item2_detail
# 商品案内2の詳細画面表示。
##################################################
sub item2_detail{

	#[font]を形成。
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		if($rls11 ne ""){$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";}
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		if($rls11 ne ""){$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";}
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		if($rls11 ne ""){$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";}
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
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
		$br_width             = $width + 20;
		$br_height            = $height + 30;

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

				$img3 = "<img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt13>";
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
	if($dsn5 ne "" && $dsn6 ne ""){$sub = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
	if($dsn5 ne "" && $dsn6 eq ""){$sub = "$t2_font1<strong>$title</strong>$t2_font2";}
	if($dsn5 eq "" && $dsn6 ne ""){$sub = "$t2_font1<i>$title</i>$t2_font2";}
	if($dsn5 eq "" && $dsn6 eq ""){$sub = "$t2_font1$title$t2_font2";}

	#[font]を形成。
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

	#コメント1を形成。
	if($dsn14 ne "" && $dsn15 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
	if($dsn14 ne "" && $dsn15 eq ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
	if($dsn14 eq "" && $dsn15 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
	if($dsn14 eq "" && $dsn15 eq ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}

	#[font]を形成。
	if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
	if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
	if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
	if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

	#コメント2を形成。
	if($dsn23 ne "" && $dsn24 ne ""){$cmt3 = "$t4_font1<strong><i>$cmt3</i></strong>$t4_font2";}
	if($dsn23 ne "" && $dsn24 eq ""){$cmt3 = "$t4_font1<strong>$cmt3</strong>$t4_font2";}
	if($dsn23 eq "" && $dsn24 ne ""){$cmt3 = "$t4_font1<i>$cmt3</i>$t4_font2";}
	if($dsn23 eq "" && $dsn24 eq ""){$cmt3 = "$t4_font1$cmt3$t4_font2";}

	#[font]を形成。
	if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
	if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
	if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
	if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

	#コメント3を形成。
	if($dsn32 ne "" && $dsn33 ne ""){$cmt4 = "$t5_font1<strong><i>$cmt4</i></strong>$t5_font2";}
	if($dsn32 ne "" && $dsn33 eq ""){$cmt4 = "$t5_font1<strong>$cmt4</strong>$t5_font2";}
	if($dsn32 eq "" && $dsn33 ne ""){$cmt4 = "$t5_font1<i>$cmt4</i>$t5_font2";}
	if($dsn32 eq "" && $dsn33 eq ""){$cmt4 = "$t5_font1$cmt4$t5_font2";}

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

	if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
	if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
	if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
	if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
	if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

	if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
	if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
	if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
	if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
	if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

	#コメントを表示。

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls12>$rls11</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
	if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>$cmt2</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$dsn27\"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>$cmt3</td>\n";}
	if($rls15 ne ""){print"        <td background=\"$page_imgdir/$dsn36\"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>$cmt4</td>\n";}

print<<"EOM";
       </tr>
      </table>
      <br>
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
EOM

	#画像を表示。
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

	#商品説明詳細を表示。
	if($msg ne ""){

		if($cmt14 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1$msg$t2_font2</td>
       </tr>
EOM

	}

print<<"EOM";
      </table>
      <br>
EOM

	#問い合わせフォームを表示。
	if($rls32 eq "on"){

		if(@user_data[6] eq "北海道")         {$t01_select = " selected";}
		if(@user_data[6] eq "青森県")         {$t02_select = " selected";}
		if(@user_data[6] eq "岩手県")         {$t03_select = " selected";}
		if(@user_data[6] eq "宮城県")         {$t04_select = " selected";}
		if(@user_data[6] eq "秋田県")         {$t05_select = " selected";}
		if(@user_data[6] eq "山形県")         {$t06_select = " selected";}
		if(@user_data[6] eq "福島県")         {$t07_select = " selected";}
		if(@user_data[6] eq "茨城県")         {$t08_select = " selected";}
		if(@user_data[6] eq "栃木県")         {$t09_select = " selected";}
		if(@user_data[6] eq "群馬県")         {$t10_select = " selected";}
		if(@user_data[6] eq "埼玉県")         {$t11_select = " selected";}
		if(@user_data[6] eq "千葉県")         {$t12_select = " selected";}
		if(@user_data[6] eq "東京都")         {$t13_select = " selected";}
		if(@user_data[6] eq "神奈川県")       {$t14_select = " selected";}
		if(@user_data[6] eq "山梨県")         {$t15_select = " selected";}
		if(@user_data[6] eq "静岡県")         {$t16_select = " selected";}
		if(@user_data[6] eq "長野県")         {$t17_select = " selected";}
		if(@user_data[6] eq "新潟県")         {$t18_select = " selected";}
		if(@user_data[6] eq "富山県")         {$t19_select = " selected";}
		if(@user_data[6] eq "石川県")         {$t20_select = " selected";}
		if(@user_data[6] eq "福井県")         {$t21_select = " selected";}
		if(@user_data[6] eq "岐阜県")         {$t22_select = " selected";}
		if(@user_data[6] eq "愛知県")         {$t23_select = " selected";}
		if(@user_data[6] eq "三重県")         {$t24_select = " selected";}
		if(@user_data[6] eq "滋賀県")         {$t25_select = " selected";}
		if(@user_data[6] eq "京都府")         {$t26_select = " selected";}
		if(@user_data[6] eq "大阪府")         {$t27_select = " selected";}
		if(@user_data[6] eq "兵庫県")         {$t28_select = " selected";}
		if(@user_data[6] eq "奈良県")         {$t29_select = " selected";}
		if(@user_data[6] eq "和歌山県")       {$t30_select = " selected";}
		if(@user_data[6] eq "鳥取県")         {$t31_select = " selected";}
		if(@user_data[6] eq "島根県")         {$t32_select = " selected";}
		if(@user_data[6] eq "岡山県")         {$t33_select = " selected";}
		if(@user_data[6] eq "広島県")         {$t34_select = " selected";}
		if(@user_data[6] eq "山口県")         {$t35_select = " selected";}
		if(@user_data[6] eq "徳島県")         {$t36_select = " selected";}
		if(@user_data[6] eq "香川県")         {$t37_select = " selected";}
		if(@user_data[6] eq "愛媛県")         {$t38_select = " selected";}
		if(@user_data[6] eq "高知県")         {$t39_select = " selected";}
		if(@user_data[6] eq "福岡県")         {$t40_select = " selected";}
		if(@user_data[6] eq "佐賀県")         {$t41_select = " selected";}
		if(@user_data[6] eq "長崎県")         {$t42_select = " selected";}
		if(@user_data[6] eq "熊本県")         {$t43_select = " selected";}
		if(@user_data[6] eq "大分県")         {$t44_select = " selected";}
		if(@user_data[6] eq "宮崎県")         {$t45_select = " selected";}
		if(@user_data[6] eq "鹿児島県")       {$t46_select = " selected";}
		if(@user_data[6] eq "沖縄県")         {$t47_select = " selected";}
		if(@user_data[17] eq "")              {$t48_select = " selected";}
		if(@user_data[17] eq "M")             {$t49_select = " selected";}
		if(@user_data[17] eq "F")             {$t50_select = " selected";}
		if(@user_data[21] eq "メールにて返答"){$t51_select = " selected";}
		if(@user_data[21] eq "電話にて返答")  {$t52_select = " selected";}
		if(@user_data[21] eq "")              {$t53_select = " selected";}
		@user_data[22] =~ s/&lt;br&gt;/\n/g;
		@user_data[23] =~ s/&lt;br&gt;/\n/g;

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls2 cellpadding="2">
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1$titleに関して以下のフォームより問い合わせください。$t1_font2</td>
       </tr>
      </table>
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="ask" value="check">
      <input type="hidden" name="title" value="$title">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="no" value="$no">
      <input type="hidden" name="kind" value="$kind">
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1お名前(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1姓<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[0]"> 名<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[1]"><br>(例)山田 太郎$t2_font2</td>
       </tr>
EOM

	##################################################
	if($ain1 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1フリガナ(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1姓<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[2]"> 名<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[3]"><br>(例)ヤマダ タロウ$t2_font2</td>
       </tr>
EOM

	}elsif($ain1 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1フリガナ$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1姓<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[2]"> 名<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[3]"><br>(例)ヤマダ タロウ$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[2]">
          <input type="hidden" name="user_data" value="@user_data[3]">
EOM

	}
	##################################################
	if($ain2 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1郵便番号(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="3" style="ime-mode:disabled" maxlength="3" value="@user_data[4]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[5]">$t2_font2</td>
       </tr>
EOM

	}elsif($ain2 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1郵便番号$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="3" style="ime-mode:disabled" maxlength="3" value="@user_data[4]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[5]">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[4]">
          <input type="hidden" name="user_data" value="@user_data[5]">
EOM

	}
	##################################################
	if($ain3 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1都道府県(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option></option>
        <option value="北海道"$t01_select>北海道</option>
        <option value="青森県"$t02_select>青森県</option>
        <option value="岩手県"$t03_select>岩手県</option>
        <option value="宮城県"$t04_select>宮城県</option>
        <option value="秋田県"$t05_select>秋田県</option>
        <option value="山形県"$t06_select>山形県</option>
        <option value="福島県"$t07_select>福島県</option>
        <option value="茨城県"$t08_select>茨城県</option>
        <option value="栃木県"$t09_select>栃木県</option>
        <option value="群馬県"$t10_select>群馬県</option>
        <option value="埼玉県"$t11_select>埼玉県</option>
        <option value="千葉県"$t12_select>千葉県</option>
        <option value="東京都"$t13_select>東京都</option>
        <option value="神奈川県"$t14_select>神奈川県</option>
        <option value="山梨県"$t15_select>山梨県</option>
        <option value="静岡県"$t16_select>静岡県</option>
        <option value="長野県"$t17_select>長野県</option>
        <option value="新潟県"$t18_select>新潟県</option>
        <option value="富山県"$t19_select>富山県</option>
        <option value="石川県"$t20_select>石川県</option>
        <option value="福井県"$t21_select>福井県</option>
        <option value="岐阜県"$t22_select>岐阜県</option>
        <option value="愛知県"$t23_select>愛知県</option>
        <option value="三重県"$t24_select>三重県</option>
        <option value="滋賀県"$t25_select>滋賀県</option>
        <option value="京都府"$t26_select>京都府</option>
        <option value="大阪府"$t27_select>大阪府</option>
        <option value="兵庫県"$t28_select>兵庫県</option>
        <option value="奈良県"$t29_select>奈良県</option>
        <option value="和歌山県"$t30_select>和歌山県</option>
        <option value="鳥取県"$t31_select>鳥取県</option>
        <option value="島根県"$t32_select>島根県</option>
        <option value="岡山県"$t33_select>岡山県</option>
        <option value="広島県"$t34_select>広島県</option>
        <option value="山口県"$t35_select>山口県</option>
        <option value="徳島県"$t36_select>徳島県</option>
        <option value="香川県"$t37_select>香川県</option>
        <option value="愛媛県"$t38_select>愛媛県</option>
        <option value="高知県"$t39_select>高知県</option>
        <option value="福岡県"$t40_select>福岡県</option>
        <option value="佐賀県"$t41_select>佐賀県</option>
        <option value="長崎県"$t42_select>長崎県</option>
        <option value="熊本県"$t43_select>熊本県</option>
        <option value="大分県"$t44_select>大分県</option>
        <option value="宮崎県"$t45_select>宮崎県</option>
        <option value="鹿児島県"$t46_select>鹿児島県</option>
        <option value="沖縄県"$t47_select>沖縄県</option>
        </select>
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1郡市区町村(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="50" maxlength="200" value="@user_data[7]">$t2_font2</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1それ以降の住所(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <input type="text" name="user_data" size="50" maxlength="200" value="@user_data[8]"><br>
        (例）渋谷1-1-1<br>
        (例）渋谷1-1-1 **ビル29F 株式会社**** **部<br>
        $t2_font2</td>
       </tr>
EOM

	}elsif($ain3 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1都道府県$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option></option>
        <option value="北海道"$t01_select>北海道</option>
        <option value="青森県"$t02_select>青森県</option>
        <option value="岩手県"$t03_select>岩手県</option>
        <option value="宮城県"$t04_select>宮城県</option>
        <option value="秋田県"$t05_select>秋田県</option>
        <option value="山形県"$t06_select>山形県</option>
        <option value="福島県"$t07_select>福島県</option>
        <option value="茨城県"$t08_select>茨城県</option>
        <option value="栃木県"$t09_select>栃木県</option>
        <option value="群馬県"$t10_select>群馬県</option>
        <option value="埼玉県"$t11_select>埼玉県</option>
        <option value="千葉県"$t12_select>千葉県</option>
        <option value="東京都"$t13_select>東京都</option>
        <option value="神奈川県"$t14_select>神奈川県</option>
        <option value="山梨県"$t15_select>山梨県</option>
        <option value="静岡県"$t16_select>静岡県</option>
        <option value="長野県"$t17_select>長野県</option>
        <option value="新潟県"$t18_select>新潟県</option>
        <option value="富山県"$t19_select>富山県</option>
        <option value="石川県"$t20_select>石川県</option>
        <option value="福井県"$t21_select>福井県</option>
        <option value="岐阜県"$t22_select>岐阜県</option>
        <option value="愛知県"$t23_select>愛知県</option>
        <option value="三重県"$t24_select>三重県</option>
        <option value="滋賀県"$t25_select>滋賀県</option>
        <option value="京都府"$t26_select>京都府</option>
        <option value="大阪府"$t27_select>大阪府</option>
        <option value="兵庫県"$t28_select>兵庫県</option>
        <option value="奈良県"$t29_select>奈良県</option>
        <option value="和歌山県"$t30_select>和歌山県</option>
        <option value="鳥取県"$t31_select>鳥取県</option>
        <option value="島根県"$t32_select>島根県</option>
        <option value="岡山県"$t33_select>岡山県</option>
        <option value="広島県"$t34_select>広島県</option>
        <option value="山口県"$t35_select>山口県</option>
        <option value="徳島県"$t36_select>徳島県</option>
        <option value="香川県"$t37_select>香川県</option>
        <option value="愛媛県"$t38_select>愛媛県</option>
        <option value="高知県"$t39_select>高知県</option>
        <option value="福岡県"$t40_select>福岡県</option>
        <option value="佐賀県"$t41_select>佐賀県</option>
        <option value="長崎県"$t42_select>長崎県</option>
        <option value="熊本県"$t43_select>熊本県</option>
        <option value="大分県"$t44_select>大分県</option>
        <option value="宮崎県"$t45_select>宮崎県</option>
        <option value="鹿児島県"$t46_select>鹿児島県</option>
        <option value="沖縄県"$t47_select>沖縄県</option>
        </select>
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1郡市区町村$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="50" maxlength="200" value="@user_data[7]">$t2_font2</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1それ以降の住所$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <input type="text" name="user_data" size="50" maxlength="200" value="@user_data[8]"><br>
        (例）渋谷1-1-1<br>
        (例）渋谷1-1-1 **ビル29F 株式会社**** **部<br>
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[6]">
          <input type="hidden" name="user_data" value="@user_data[7]">
          <input type="hidden" name="user_data" value="@user_data[8]">
EOM

	}
	##################################################
	if($ain4 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1電話番号(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[9]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[10]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[11]">$t2_font2</td>
       </tr>
EOM

	}elsif($ain4 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1電話番号$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[9]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[10]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[11]">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[9]">
          <input type="hidden" name="user_data" value="@user_data[10]">
          <input type="hidden" name="user_data" value="@user_data[11]">
EOM

	}
	##################################################
	if($ain5 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1ＦＡＸ番号(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" size="4" name="user_data" style="ime-mode:disabled" maxlength="10" value="@user_data[12]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[13]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[14]">$t2_font2</td>
       </tr>
EOM

	}elsif($ain5 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1ＦＡＸ番号$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" size="4" name="user_data" style="ime-mode:disabled" maxlength="10" value="@user_data[12]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[13]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[14]">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[12]">
          <input type="hidden" name="user_data" value="@user_data[13]">
          <input type="hidden" name="user_data" value="@user_data[14]">
EOM

	}
	##################################################
	if($ain6 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1メールアドレス(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <input type="text" size="40" name="user_data" style="ime-mode:disabled" maxlength="200" value="@user_data[15]"><br>
        <br>
        ※確認のためにもう一度メールアドレスを入力してください。<br>
        <input type="text" size="40" name="user_data" style="ime-mode:disabled" maxlength="200" value="@user_data[16]">
        $t2_font2</td>
       </tr>
EOM

	}elsif($ain6 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1メールアドレス$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <input type="text" size="40" name="user_data" style="ime-mode:disabled" maxlength="200" value="@user_data[15]"><br>
        <br>
        ※確認のためにもう一度メールアドレスを入力してください。<br>
        <input type="text" size="40" name="user_data" style="ime-mode:disabled" maxlength="200" value="@user_data[16]">
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[15]">
          <input type="hidden" name="user_data" value="@user_data[16]">
EOM

	}
	##################################################
	if($ain7 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1性別(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option value=""$t48_select></option>
        <option value="M"$t49_select>男</option>
        <option value="F"$t50_select>女</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}elsif($ain7 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1性別$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option value=""$t48_select></option>
        <option value="M"$t49_select>男</option>
        <option value="F"$t50_select>女</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[17]">
EOM

	}
	##################################################
	if($ain8 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1生年月日(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1西暦<input type="text" size="4" name="user_data" style="ime-mode:disabled" maxlength="4" value="@user_data[18]">年 <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[19]">月 <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[20]">日$t2_font2</td>
       </tr>
EOM

	}elsif($ain8 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1生年月日$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1西暦<input type="text" size="4" name="user_data" style="ime-mode:disabled" maxlength="4" value="@user_data[18]">年 <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[19]">月 <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[20]">日$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[18]">
          <input type="hidden" name="user_data" value="@user_data[19]">
          <input type="hidden" name="user_data" value="@user_data[20]">
EOM

	}

	##################################################
	if($ain9 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1ご希望の返答方法(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option value=""$t53_select></option>
        <option value="メールにて返答"$t51_select>メール</option>
        <option value="電話にて返答"$t52_select>電話連絡</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}elsif($ain9 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1ご希望の返答方法 $t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option value=""$t53_select></option>
        <option value="メールにて返答"$t51_select>メール</option>
        <option value="電話にて返答"$t52_select>電話連絡</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[21]">
EOM

	}

	##################################################
	if($ain10 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1お問い合わせ内容(必須)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<textarea name="user_data" cols="40" rows="5">@user_data[22]</textarea>$t2_font2</td>
       </tr>
EOM

	}elsif($ain10 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1お問い合わせ内容$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<textarea name="user_data" cols="40" rows="5">@user_data[22]</textarea>$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[22]">
EOM

	}
	##################################################
	if($ain11 eq "1"){

		if($ain14 eq "1"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls25"$t_rls24$t_rls23>$t1_font1$ain12(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t3_font1<input type="text" name="user_data" size="$ain13" value="@user_data[23]">$t3_font2</td>
          </tr>
EOM

		}else{

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls25"$t_rls24$t_rls23>$t1_font1$ain12(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t3_font1<textarea name="user_data" cols="$ain13" rows="$ain14">@user_data[23]</textarea>$t3_font2</td>
          </tr>
EOM

		}

	}elsif($ain11 eq "2"){

		if($ain14 eq "1"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls25"$t_rls24$t_rls23>$t1_font1$ain12$t1_font2</td>
           <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t3_font1<input type="text" name="user_data" size="$ain13" value="@user_data[23]">$t3_font2</td>
          </tr>
EOM

		}else{

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls25"$t_rls24$t_rls23>$t1_font1$ain12$t1_font2</td>
           <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t3_font1<textarea name="user_data" cols="$ain13" rows="$ain14">@user_data[23]</textarea>$t3_font2</td>
          </tr>
EOM

		}

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[23]">
EOM

	}
	##################################################

print<<"EOM";
      </table>
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="submit" value="一覧に戻る" style="width:150px"></td>
        <td><input type="submit" name="submit" value="入力内容の確認" style="width:150px"></td>
       </tr>
      </table>
      </div>
      </form>
EOM

	}else{

print<<"EOM";
      <div align="center">
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
      </div>
EOM

	}

	if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){

		if($ask8 ne ""){

			$ask8 =~ s/<br>/\n/g;
			$ask8 =~ s/&#44;/\,/g;
			$ask8 =~ s/&lt;/</g;
			$ask8 =~ s/&gt;/>/g;
			$ask8 =~ s/&quot;/"/g;

print<<"EOM";
     <br>
     <table border="0" cellpadding="1" cellspacing="1">
      <tr>
       <td>
$ask8
       </td>
      </tr>
     </table>
     <br>
EOM
		}

print<<"EOM";
     <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
      <tr bgcolor="#FFFFFF">
       <td>
       <span style="color:#000000;font-size:10pt;font-weight:bold;">
・当サイトは、お客様に入力して頂いた個人情報は、<br>
&nbsp;&nbsp;デジタルIDを用いたSSL暗号化通信によって、インターネット上での<br>
&nbsp;&nbsp;安全な通信手段を確保しておりますので、安心してご利用ください。<br>
       </span>
       </td>
      </tr>
     </table>
     <br>
EOM

	}

}
##################################################
# item2_search
# 検索処理。
##################################################
sub item2_search{

	#[font]を形成。
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	#表示項目を形成。
	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		if($rls11 ne ""){$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";}
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		if($rls11 ne ""){$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";}
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		if($rls11 ne ""){$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";}
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
		if($rls15 ne ""){$rls15 = "$t1_font1$rls15$t1_font2";}

	}

	#検索ワード入力エラー。
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#エラー画面を表示。
	if($error ne ""){
		&item2_search_error;
	}else{

		#キーワード検索フォームを表示。
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

			#入力内容を整理
			$cond  = $in{'cond'};
			$word1 = $in{'word1'};
			$word2 = $in{'word2'};
			$word3 = $in{'word3'};
			$word1 =~ s/,/&#44;/g;
			$word2 =~ s/,/&#44;/g;
			$word3 =~ s/,/&#44;/g;

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="page">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="search" value="on">
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
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td colspan="4"><font size="-1"><strong>－ 検索結果 －</strong></font></td>
       </tr>
      </table>
      </form>
EOM

		#検索フォームを表示。
		}else{

			#入力内容を整理
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
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="hidden" name="search" value="on">
        <input type="text" name="word" size="25" value="$in{'word'}">
        <select name="cond">
        <option value="and"$cond_select1>AND</option>
        <option value="or"$cond_select2>OR</option>
        </select>
        <input type="submit" value="再検索">
        </form>
        </td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><font size="-1"><strong>－ 検索結果 －</strong></font></td>
       </tr>
      </table>
EOM

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

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
EOM

		if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls12>$rls11</td>\n";}
		if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
		if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
EOM

		#検索件数初期化。
		$i = 0;

		#記事内容情報の精査。
		foreach $line(@storycomment) {

			local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
			local($t_dsn22,$t_dsn21,$t4_font1,$t4_font2,$t_dsn31,$t_dsn30,$t5_font1,$t5_font2);
			local($t_dsn8,$t_dsn7,$t_dsn1,$t_dsn2,$t_dsn2,$t_cmt5,$t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11);
			local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn35,$t_dsn34,$t_dsn28,$t_dsn29);

			#記事内容情報の分割。
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line);

			#記事表示の一時停止要否。
			if($cmt9 eq "on"){
				next;
			}

			if($word eq ""){

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

				#検索結果表示。

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

				#[font]を形成。
				if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
				if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
				if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
				if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

				#コメント1を形成。
				if($dsn14 ne "" && $dsn15 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
				if($dsn14 ne "" && $dsn15 eq ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
				if($dsn14 eq "" && $dsn15 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
				if($dsn14 eq "" && $dsn15 eq ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}

				#[font]を形成。
				if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
				if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
				if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
				if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

				#コメント2を形成。
				if($dsn23 ne "" && $dsn24 ne ""){$cmt3 = "$t4_font1<strong><i>$cmt3</i></strong>$t4_font2";}
				if($dsn23 ne "" && $dsn24 eq ""){$cmt3 = "$t4_font1<strong>$cmt3</strong>$t4_font2";}
				if($dsn23 eq "" && $dsn24 ne ""){$cmt3 = "$t4_font1<i>$cmt3</i>$t4_font2";}
				if($dsn23 eq "" && $dsn24 eq ""){$cmt3 = "$t4_font1$cmt3$t4_font2";}

				#[font]を形成。
				if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
				if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
				if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
				if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

				#コメント3を形成。
				if($dsn32 ne "" && $dsn33 ne ""){$cmt4 = "$t5_font1<strong><i>$cmt4</i></strong>$t5_font2";}
				if($dsn32 ne "" && $dsn33 eq ""){$cmt4 = "$t5_font1<strong>$cmt4</strong>$t5_font2";}
				if($dsn32 eq "" && $dsn33 ne ""){$cmt4 = "$t5_font1<i>$cmt4</i>$t5_font2";}
				if($dsn32 eq "" && $dsn33 eq ""){$cmt4 = "$t5_font1$cmt4$t5_font2";}

				#商品詳細リンクを形成。
				if($img1 ne "" || $img2 ne "" || $img3 ne "" || $msg ne ""){
					if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){
						$sub = "<a href=\"$ask7\/$cgi_host\/$site_folder\/siteup.cgi?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$sub</a>";
					}else{
						$sub = "<a href=\"$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$sub</a>";
					}
				}

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

				if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
				if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
				if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
				if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
				if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

				if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
				if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
				if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
				if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
				if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
EOM

				if($rls11 ne ""){print"        <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>$cmt2</td>\n";}
				if($rls13 ne ""){print"        <td background=\"$page_imgdir/$dsn27\"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>$cmt3</td>\n";}
				if($rls15 ne ""){print"        <td background=\"$page_imgdir/$dsn36\"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>$cmt4</td>\n";}

print<<"EOM";
       </tr>
EOM

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
# item2_search_error
# エラー処理。
##################################################
sub item2_search_error{

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
        </form>
        </td>
       </tr>
      </table>
      </div>
EOM

}

1;
