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
# item1
# 商品案内1の記事表示。
##################################################
sub item1{

	#1ページに表示する記事数を代入。(未設定の場合は500を指定)
	if($rls1 ne ""){
		$p_view = $rls1;
	}else{
		$p_view = "500";
	}

	#[font]を形成。
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#表示項目を形成。
	if($rls9 ne "" && $rls10 ne ""){

		$detail = "<strong><i>$t1_font1詳細$t1_font2</i></strong>";
		if($rls4 ne ""){$rls4 = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";}
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$detail = "<strong>$t1_font1詳細$t1_font2</strong>";
		if($rls4 ne ""){$rls4 = "<strong>$t1_font1$rls4$t1_font2</strong>";}
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$detail = "<i>$t1_font1詳細$t1_font2</i>";
		if($rls4 ne ""){$rls4 = "<i>$t1_font1$rls4$t1_font2</i>";}
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$detail = "$t1_font1詳細$t1_font2";
		if($rls4 ne ""){$rls4 = "$t1_font1$rls4$t1_font2";}
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

	}

	#検索フォーム表示。
	if($rls24 ne ""){

		#キーワード検索フォームを表示。
		if($rls16 ne "" || $rls18 ne "" || $rls20 ne ""){

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="search" value="on">
      <input type="hidden" name="cond" value="on">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

			if($rls16 ne ""){

				@serch1 = split(/<br>/,$rls16);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls15</option>
        <option></option>
EOM

				foreach $x(@serch1){
					print"        <option value=\"$x\">$x</option>\n";
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls18 ne ""){

				@serch2 = split(/<br>/,$rls18);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls17</option>
        <option></option>
EOM

				foreach $x(@serch2){
					print"        <option value=\"$x\">$x</option>\n";
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls20 ne ""){

				@serch3 = split(/<br>/,$rls20);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls19</option>
        <option></option>
EOM

				foreach $x(@serch3){
					print"        <option value=\"$x\">$x</option>\n";
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
	if($rls3 ne ""){$t_rls3 = " cellspacing=\"$rls3\"";}
	if($rls3 eq ""){$t_rls3 = " cellspacing=\"0\"";}

	#[table]を表示。

print<<"EOM";
      <table border="0" cellpadding="0"$t_rls3>
       <tr>
EOM

	#記事内容情報数の初期化。
	$i = 0;

	#ページングの初期化。
	$j = 0;

	#記事内容情報の精査。
	foreach (@storycomment){

		local($t_wimg1,$t_himg1,$t_cmt12,$t_comment_width,$t_dsn13,$t_dsn12,$t2_font1,$t2_font2,$t_dsn23,$t_dsn22,$t3_font1,$t3_font2);
		local($t_dsn7,$t_dsn3,$t_dsn6,$t_dsn4,$t_dsn5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn9,$t_dsn10,$t_dsn11);
		local($t_dsn27,$t_dsn26,$t_dsn19,$t_dsn20,$t_dsn21,$t_dsn32,$t_dsn31,$t_dsn29,$t_dsn30,$t_rls11);

		#記事内容情報の分割。
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#記事表示の一時停止要否。
		if($cmt8 eq "on"){
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

		#[img][td]を形成。
		if($wimg1 ne ""){$t_wimg1 = " width=\"$wimg1\"";}
		if($himg1 ne ""){$t_himg1 = " height=\"$himg1\"";}

		#画像を形成。
		if($img1 ne ""){

			#記事の幅、高さの設定。
			local($width,$height) = split(/×/,$simg1);
			$br_width             = $width + 40;
			$br_height            = $height + 50;

			#画像の説明文設定。
			if($cmt12 ne ""){
				$t_cmt12 = " alt=\"$cmt12\"";
			}

			if($img1 =~ /pdf$/i){

				#pdfファイルの場合は添付ファイルとして形成。
				$img1 = "<a href=\"$page_imgdir/$img1\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
			}else{

				if($pimg1 eq ""){				#拡大表示「off（空欄）」を形成。

					$img1 = "<img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12>";
				}else{						#拡大表示「on」を形成。

					if($br_width eq "40" && $br_height eq "50"){

						#記事の幅、高さが未設定を形成。
						$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12 border=\"0\"></a>";
					}else{

						#記事の幅、高さが設定済みを形成。
						$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12 border=\"0\"></a>";
					}
				}
			}
		}

		#幅を形成。
		$comment_width = $dsn1 - $wimg1;

		if($comment_width ne ""){
			if($comment_width >= 0){
				$t_comment_width = " width=\"$comment_width\"";
			}
		}

		#[font]を形成。
		if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
		if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
		if($dsn13 ne "" || $dsn12 ne ""){$t2_font1 = "<font$t_dsn13$t_dsn12>";}
		if($dsn13 ne "" || $dsn12 ne ""){$t2_font2 = "</font>";}

		#商品名を形成。
		if($cmt1 ne "")                 {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
		if($dsn14 ne "" && $dsn15 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
		if($dsn14 ne "" && $dsn15 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
		if($dsn14 eq "" && $dsn15 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
		if($dsn14 eq "" && $dsn15 eq ""){$sub  = "$t2_font1$title$t2_font2";}

		#[font]を形成。
		if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
		if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
		if($dsn23 ne "" || $dsn22 ne ""){$t3_font1 = "<font$t_dsn23$t_dsn22>";}
		if($dsn23 ne "" || $dsn22 ne ""){$t3_font2 = "</font>";}

		#詳細画面へのリンク名。
		if($rls23 ne ""){
			$detailName = $rls23;
		}else{
			$detailName = "詳細画面あり";
		}

		#商品詳細情報を形成。
		if($dsn24 ne "" && $dsn25 ne ""){

			if($cmt15 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
			}

			$detail2 = "$t3_font1<strong><i>$detailName</i></strong>$t3_font2";
			if($cmt2 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
			if($cmt3 ne ""){$cmt3 = "$t3_font1<strong><i>$cmt3</i></strong>$t3_font2";}
			if($cmt4 ne ""){$cmt4 = "$t3_font1<strong><i>$cmt4</i></strong>$t3_font2";}
			if($msg ne "") {$msg  = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}

		}

		if($dsn24 ne "" && $dsn25 eq ""){

			if($cmt15 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
			}

			$detail2 = "$t3_font1<strong>$detailName</strong>$t3_font2";
			if($cmt2 ne ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
			if($cmt3 ne ""){$cmt3 = "$t3_font1<strong>$cmt3</strong>$t3_font2";}
			if($cmt4 ne ""){$cmt4 = "$t3_font1<strong>$cmt4</strong>$t3_font2";}
			if($msg ne "") {$msg  = "$t3_font1<strong>$msg</strong>$t3_font2";}

		}

		if($dsn24 eq "" && $dsn25 ne ""){

			if($cmt15 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
			}

			$detail2 = "$t3_font1<i>$detailName</i>$t3_font2";
			if($cmt2 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
			if($cmt3 ne ""){$cmt3 = "$t3_font1<i>$cmt3</i>$t3_font2";}
			if($cmt4 ne ""){$cmt4 = "$t3_font1<i>$cmt4</i>$t3_font2";}
			if($msg ne "") {$msg  = "$t3_font1<i>$msg</i>$t3_font2";}

		}

		if($dsn24 eq "" && $dsn25 eq ""){

			if($cmt15 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
			}

			$detail2 = "$t3_font1$detailName$t3_font2";
			if($cmt2 ne ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}
			if($cmt3 ne ""){$cmt3 = "$t3_font1$cmt3$t3_font2";}
			if($cmt4 ne ""){$cmt4 = "$t3_font1$cmt4$t3_font2";}
			if($msg ne "") {$msg  = "$t3_font1$msg$t3_font2";}

		}

		if($k >= $rls2){
			print"       </tr>\n";
			print"       <tr>\n";
			$k = 0;
		}

		$k++;

		if($cmt15 eq ""){
			#補足説明文の自動リンク。
			&auto_link;
		}

		#[table]を形成。
		if($dsn7 ne ""){$t_dsn7 = " bgcolor=\"$dsn7\"";}
		if($dsn3 ne ""){$t_dsn3 = " border=\"$dsn3\"";}
		if($dsn3 eq ""){$t_dsn3 = " border=\"0\"";}
		if($dsn6 ne ""){$t_dsn6 = " bordercolor=\"$dsn6\"";}
		if($dsn4 ne ""){$t_dsn4 = " cellspacing=\"$dsn4\"";}
		if($dsn4 eq ""){$t_dsn4 = " cellspacing=\"0\"";}
		if($dsn5 ne ""){$t_dsn5 = " cellpadding=\"$dsn5\"";}
		if($dsn5 eq ""){$t_dsn5 = " cellpadding=\"0\"";}
		if($dsn1 ne ""){$t_dsn1 = " width=\"$dsn1\"";}
		if($dsn2 ne ""){$t_dsn2 = " height=\"$dsn2\"";}

		#[table]を表示。

		if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){

print<<"EOM";
        <td valign="top">
         <form action="$ask7\/$cgi_host\/$site_folder\/siteup.cgi" method="post" style="margin-bottom:0">
         <input type="hidden" name="ask" value="on">
         <input type="hidden" name="item" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="no" value="$no">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

		}else{

print<<"EOM";
        <td valign="top">
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="ask" value="on">
         <input type="hidden" name="item" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="no" value="$no">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

		}

		#[td]を形成。
		if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
		if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
		if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
		if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
		if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
		if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

		if($cmt10 ne ""){

			if($cmt11 ne ""){$t_cmt11 = " target=\"_blank\"";}

			#商品名を表示。
			if($img1 eq ""){
				print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1<a href=\"$cmt10\"$t_cmt11>$sub</a></td>\n";
			}else{
				print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 colspan=\"2\">$cmt1<a href=\"$cmt10\"$t_cmt11>$sub</a></td>\n";
			}

		}else{

			#商品名を表示。
			if($img1 eq ""){
				print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1$sub</td>\n";
			}else{
				print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 colspan=\"2\">$cmt1$sub</td>\n";
			}

		}

print<<"EOM";
          </tr>
EOM

	if($rls4 ne "" || $rls5 ne "" || $rls6 ne "" || $msg ne "" || $img1 ne "" ||  $img2 ne "" || $img3 ne "" || $rls13 eq "on"){

print<<"EOM";
          <tr>
EOM

			#[td]を形成。
			if($dsn27 ne ""){$t_dsn27 = " bgcolor=\"$dsn27\"";}
			if($dsn26 ne ""){$t_dsn26 = " bordercolor=\"$dsn26\"";}
			if($dsn19 ne ""){$t_dsn19 = " height=\"$dsn19\"";}
			if($dsn20 ne ""){$t_dsn20 = " align=\"$dsn20\"";}
			if($dsn21 ne ""){$t_dsn21 = " valign=\"$dsn21\"";}
			if($dsn21 eq ""){$t_dsn21 = " valign=\"top\"";}

			if($dsn32 ne ""){$t_dsn32 = " bgcolor=\"$dsn32\"";}
			if($dsn31 ne ""){$t_dsn31 = " bordercolor=\"$dsn31\"";}
			if($dsn29 ne ""){$t_dsn29 = " align=\"$dsn29\"";}
			if($dsn30 ne ""){$t_dsn30 = " valign=\"$dsn30\"";}
			if($dsn30 eq ""){$t_dsn30 = " valign=\"top\"";}

			#商品画像を表示。
			if($img1 eq ""){
				print"           <td background=\"$page_imgdir/$dsn28\"$t_dsn27$t_dsn26$t_dsn19$t_dsn20$t_dsn21>\n";
			}else{
				print"           <td background=\"$page_imgdir/$dsn33\"$t_dsn32$t_dsn31$t_wimg1$t_himg1$t_dsn29$t_dsn30>\n";
				print"           $img1\n";
				print"           </td>\n";
				print"           <td background=\"$page_imgdir/$dsn28\"$t_dsn27$t_dsn26$t_comment_width$t_dsn19$t_dsn20$t_dsn21>\n";
			}

			#商品詳細情報を表示。
			if($rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

				if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

print<<"EOM";
            <table border="0" cellpadding="1" cellspacing="1">
EOM

				if($rls4 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11>$rls4</td>
              <td>$cmt2</td>
             </tr>
EOM

				}

				if($rls5 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
              <td>$cmt3</td>
             </tr>
EOM

				}

				if($rls6 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
              <td>$cmt4</td>
             </tr>
EOM

				}

				#商品詳細リンクを表示。
				if($msg ne "" || $img2 ne "" || $img3 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
              <td><a href="$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no">$detail2</a></td>
             </tr>
EOM

				}

print<<"EOM";
            </table>
EOM

			}else{

print<<"EOM";
            <table border="0" cellspacing="1">
EOM

				#商品説明詳細をそのまま表示。
				if($msg ne ""){

print<<"EOM";
             <tr>
              <td>$msg</td>
             </tr>
EOM

				}

				#商品説明詳細を表示。
				if($img2 ne "" || $img3 ne ""){

print<<"EOM";
             <tr>
              <td><a href="$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no">$detail2</a></td>
             </tr>
EOM

				}

print<<"EOM";
            </table>
EOM

			}

			#問い合わせボタンを表示。
			if($rls13 eq "on"){
				print"            <div align=\"center\"><input type=\"submit\" value=\"$rls14\"></div>\n";
			}

print<<"EOM";
           </td>
          </tr>
EOM

		}

print<<"EOM";
         </table>
         </form>
        </td>
EOM

	}

print<<"EOM";
       </tr>
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

			if($rls21 ne ""){
				$backName = $rls21;
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

		#次頁処理。
		if($next_line <= $i){

			if($rls22 ne ""){
				$nextName = $rls22;
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
# item1_detail
# 商品案内1の詳細画面表示。
##################################################
sub item1_detail{

	#[font]を形成。
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#商品項目を形成。
	if($rls9 ne "" && $rls10 ne ""){

		$detail = "<strong><i>$t1_font1詳細説明$t1_font2</i></strong>";
		if($rls4 ne ""){$rls4 = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";}
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$detail = "<strong>$t1_font1詳細説明$t1_font2</strong>";
		if($rls4 ne ""){$rls4 = "<strong>$t1_font1$rls4$t1_font2</strong>";}
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$detail = "<i>$t1_font1詳細説明$t1_font2</i>";
		if($rls4 ne ""){$rls4 = "<i>$t1_font1$rls4$t1_font2</i>";}
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$detail = "$t1_font1詳細説明$t1_font2";
		if($rls4 ne ""){$rls4 = "$t1_font1$rls4$t1_font2";}
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

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
	if($wimg2 ne ""){$t_wimg2 = " width=\"$wimg2\"";}
	if($himg2 ne ""){$t_himg2 = " height=\"$himg2\"";}

	#商品画像2を形成。
	if($img2 ne ""){

		#記事の幅、高さの設定。
		local($width,$height) = split(/×/,$simg2);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#画像の説明文設定。
		if($cmt13 ne ""){
			$t_cmt13 = " alt=\"$cmt13\"";
		}

		if($img2 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$img2 = "<a href=\"$page_imgdir/$img2\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($pimg2 eq ""){				#拡大表示「off（空欄）」を形成。

				$img2 = "<img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13>";
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){

					#記事の幅、高さが未設定を形成。
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13 border=\"0\"></a>";
				}else{

					#記事の幅、高さが設定済みを形成。
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13 border=\"0\"></a>";
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
		if($cmt14 ne ""){
			$t_cmt14 = " alt=\"$cmt14\"";
		}

		if($img3 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$img3 = "<a href=\"$page_imgdir/$img3\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($pimg3 eq ""){				#拡大表示「off（空欄）」を形成。

				$img3 = "<img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14>";
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){

					#記事の幅、高さが未設定を形成。
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14 border=\"0\"></a>";
				}else{

					#記事の幅、高さが設定済みを形成。
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14 border=\"0\"></a>";
				}
			}
		}
	}

	#[font]を形成。
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t2_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t2_font2 = "</font>";}

	#商品名を形成。
	if($cmt1 ne "")                 {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
	if($dsn14 ne "" && $dsn15 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
	if($dsn14 ne "" && $dsn15 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
	if($dsn14 eq "" && $dsn15 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
	if($dsn14 eq "" && $dsn15 eq ""){$sub  = "$t2_font1$title$t2_font2";}

	#[font]を形成。
	if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
	if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font1 = "<font$t_dsn23$t_dsn22>";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font2 = "</font>";}

	#商品詳細情報を形成。
	if($dsn24 ne "" && $dsn25 ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<strong><i>$cmt3</i></strong>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<strong><i>$cmt4</i></strong>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}

	}

	if($dsn24 ne "" && $dsn25 eq ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<strong>$cmt3</strong>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<strong>$cmt4</strong>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<strong>$msg</strong>$t3_font2";}

	}

	if($dsn24 eq "" && $dsn25 ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<i>$cmt3</i>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<i>$cmt4</i>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<i>$msg</i>$t3_font2";}

	}

	if($dsn24 eq "" && $dsn25 eq ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1$cmt3$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1$cmt4$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1$msg$t3_font2";}

	}

	if($cmt15 eq ""){
		#補足説明文の自動リンク。
		&auto_link;
	}

	#[table]を形成。
	if($dsn7 ne "")       {$t_dsn7        = " bgcolor=\"$dsn7\"";}
	if($dsn3 ne "")       {$t_dsn3        = " border=\"$dsn3\"";}
	if($dsn3 eq "")       {$t_dsn3        = " border=\"0\"";}
	if($dsn6 ne "")       {$t_dsn6        = " bordercolor=\"$dsn6\"";}
	if($dsn4 ne "")       {$t_dsn4        = " cellspacing=\"$dsn4\"";}
	if($dsn4 eq "")       {$t_dsn4        = " cellspacing=\"0\"";}
	if($dsn5 ne "")       {$t_dsn5        = " cellpadding=\"$dsn5\"";}
	if($dsn5 eq "")       {$t_dsn5        = " cellpadding=\"0\"";}

	#[td]を形成。
	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	#商品名を表示。

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5 width="100%">
       <tr>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1$sub</td>
       </tr>
EOM

	#商品画像を表示。
	if($img2 ne "" || $img3 ne ""){

		if($dsn32 ne ""){$t_dsn32 = " bgcolor=\"$dsn32\"";}
		if($dsn31 ne ""){$t_dsn31 = " bordercolor=\"$dsn31\"";}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn33"$t_dsn32$t_dsn31 align="center" valign="middle">
         <table border="0" cellpadding="0">
          <tr>
EOM

		if($img2 ne ""){print"           <td>$img2</td>\n";}
		if($img3 ne ""){print"           <td>$img3</td>\n";}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

	}

	#[td]を形成。
	if($dsn27 ne ""){$t_dsn27 = " bgcolor=\"$dsn27\"";}
	if($dsn26 ne ""){$t_dsn26 = " bordercolor=\"$dsn26\"";}

	#商品詳細情報を表示。
	if($msg ne "" || $rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26 align="left" valign="middle">
EOM

		if($rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

print<<"EOM";
         <table border="0" cellspacing="1">
EOM

			if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

			if($msg ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
           <td>$msg</td>
          </tr>
EOM

			}

			if($rls4 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls4</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt2</td>
          </tr>
EOM

			}

			if($rls5 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt3</td>
          </tr>
EOM

			}

			if($rls6 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt4</td>
          </tr>
EOM

			}

print<<"EOM";
         </table>
EOM

		#商品説明詳細をそのまま表示。
		}else{
			print"         $msg\n";
		}
	}

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
        </td>
       </tr>
      </table>
EOM

}
##################################################
# item1_ask
# 商品案内1の問い合わせ画面表示。
##################################################
sub item1_ask{

	#[font]を形成。
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#表示項目を形成。
	if($rls9 ne "" && $rls10 ne ""){

		$detail = "<strong><i>$t1_font1詳細説明$t1_font2</i></strong>";
		if($rls4 ne ""){$rls4 = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";}
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$detail = "<strong>$t1_font1詳細説明$t1_font2</strong>";
		if($rls4 ne ""){$rls4 = "<strong>$t1_font1$rls4$t1_font2</strong>";}
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$detail = "<i>$t1_font1詳細説明$t1_font2</i>";
		if($rls4 ne ""){$rls4 = "<i>$t1_font1$rls4$t1_font2</i>";}
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$detail = "$t1_font1詳細説明$t1_font2";
		if($rls4 ne ""){$rls4 = "$t1_font1$rls4$t1_font2";}
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

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
	if($wimg2 ne ""){$t_wimg2 = " width=\"$wimg2\"";}
	if($himg2 ne ""){$t_himg2 = " height=\"$himg2\"";}

	#商品画像2を形成。
	if($img2 ne ""){

		#記事の幅、高さの設定。
		local($width,$height) = split(/×/,$simg2);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#画像の説明文設定。
		if($cmt13 ne ""){
			$t_cmt13 = " alt=\"$cmt13\"";
		}

		if($img2 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$img2 = "<a href=\"$page_imgdir/$img2\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($pimg2 eq ""){				#拡大表示「off（空欄）」を形成。

				$img2 = "<img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13>";
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){

					#記事の幅、高さが未設定を形成。
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13 border=\"0\"></a>";
				}else{

					#記事の幅、高さが設定済みを形成。
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13 border=\"0\"></a>";
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
		if($cmt14 ne ""){
			$t_cmt14 = " alt=\"$cmt14\"";
		}

		if($img3 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$img3 = "<a href=\"$page_imgdir/$img3\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($pimg3 eq ""){				#拡大表示「off（空欄）」を形成。

				$img3 = "<img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14>";
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){

					#記事の幅、高さが未設定を形成。
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14 border=\"0\"></a>";
				}else{

					#記事の幅、高さが設定済みを形成。
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14 border=\"0\"></a>";
				}
			}
		}
	}

	#[font]を形成。
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t2_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t2_font2 = "</font>";}

	#商品名を形成。
	if($cmt1 ne "")                 {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
	if($dsn14 ne "" && $dsn15 ne ""){$sub  = "$t2_font1<strong><i>$titleに関して以下のフォームより問い合わせください。</i></strong>$t2_font2";}
	if($dsn14 ne "" && $dsn15 eq ""){$sub  = "$t2_font1<strong>$titleに関して以下のフォームより問い合わせください。</strong>$t2_font2";}
	if($dsn14 eq "" && $dsn15 ne ""){$sub  = "$t2_font1<i>$titleに関して以下のフォームより問い合わせください。</i>$t2_font2";}
	if($dsn14 eq "" && $dsn15 eq ""){$sub  = "$t2_font1$titleに関して以下のフォームより問い合わせください。$t2_font2";}

	#[font]を形成。
	if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
	if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font1 = "<font$t_dsn23$t_dsn22>";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font2 = "</font>";}

	#商品詳細情報を形成。
	if($dsn24 ne "" && $dsn25 ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<strong><i>$cmt3</i></strong>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<strong><i>$cmt4</i></strong>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}

	}

	if($dsn24 ne "" && $dsn25 eq ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<strong>$cmt3</strong>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<strong>$cmt4</strong>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<strong>$msg</strong>$t3_font2";}

	}

	if($dsn24 eq "" && $dsn25 ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<i>$cmt3</i>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<i>$cmt4</i>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<i>$msg</i>$t3_font2";}

	}

	if($dsn24 eq "" && $dsn25 eq ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1$cmt3$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1$cmt4$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1$msg$t3_font2";}

	}

	if($cmt15 eq ""){
		#補足説明文の自動リンク。
		&auto_link;
	}

	#[table]を形成。
	if($dsn7 ne "")       {$t_dsn7        = " bgcolor=\"$dsn7\"";}
	if($dsn3 ne "")       {$t_dsn3        = " border=\"$dsn3\"";}
	if($dsn3 eq "")       {$t_dsn3        = " border=\"0\"";}
	if($dsn6 ne "")       {$t_dsn6        = " bordercolor=\"$dsn6\"";}
	if($dsn4 ne "")       {$t_dsn4        = " cellspacing=\"$dsn4\"";}
	if($dsn4 eq "")       {$t_dsn4        = " cellspacing=\"0\"";}
	if($dsn5 ne "")       {$t_dsn5        = " cellpadding=\"$dsn5\"";}
	if($dsn5 eq "")       {$t_dsn5        = " cellpadding=\"0\"";}

	#[td]を形成。
	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	#商品名を表示。

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5 width="100%">
       <tr>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1$sub</td>
       </tr>
EOM

	#商品画像を表示。
	if($img2 ne "" || $img3 ne ""){

		if($dsn32 ne ""){$t_dsn32 = " bgcolor=\"$dsn32\"";}
		if($dsn31 ne ""){$t_dsn31 = " bordercolor=\"$dsn31\"";}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn33"$t_dsn32$t_dsn31 align="center" valign="middle">
         <table border="0" cellpadding="0">
          <tr>
EOM

		if($img2 ne ""){print"           <td>$img2</td>\n";}
		if($img3 ne ""){print"           <td>$img3</td>\n";}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

	}

	#[td]を形成。
	if($dsn27 ne ""){$t_dsn27 = " bgcolor=\"$dsn27\"";}
	if($dsn26 ne ""){$t_dsn26 = " bordercolor=\"$dsn26\"";}
	if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

	#商品詳細情報を表示。
	if($msg ne "" || $rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>
EOM

		if($rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

print<<"EOM";
         <table border="0" cellspacing="1">
EOM

			if($msg ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
           <td>$msg</td>
          </tr>
EOM

			}

			if($rls4 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls4</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt2</td>
          </tr>
EOM

			}

			if($rls5 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt3</td>
          </tr>
EOM

			}

			if($rls6 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt4</td>
          </tr>
EOM

			}

print<<"EOM";
         </table>
EOM

		#商品説明詳細をそのまま表示。
		}else{
			print"         $msg\n";
		}
	}

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

	#問い合わせフォームを表示。

print<<"EOM";
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="title" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="no" value="$in{'no'}">
         <input type="hidden" name="kind" value="$kind">
         <input type="hidden" name="ask" value="check">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4 cellpadding="2" width="100%">
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1お名前(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1姓<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[0]"> 名<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[1]"><br>(例)山田 太郎$t3_font2</td>
          </tr>
EOM

	##################################################
	if($ain1 eq "1"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1フリガナ(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1姓<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[2]"> 名<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[3]"><br>(例)ヤマダ タロウ$t3_font2</td>
          </tr>
EOM

	}elsif($ain1 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1フリガナ$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1姓<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[2]"> 名<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[3]"><br>(例)ヤマダ タロウ$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1郵便番号(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="3" style="ime-mode:disabled" maxlength="3" value="@user_data[4]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[5]">$t3_font2</td>
          </tr>
EOM

	}elsif($ain2 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1郵便番号$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="3" style="ime-mode:disabled" maxlength="3" value="@user_data[4]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[5]">$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1都道府県(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
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
           $t3_font2</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1郡市区町村(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="50" maxlength="200" value="@user_data[7]">$t3_font2</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1それ以降の住所(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <input type="text" name="user_data" size="50" maxlength="200" value="@user_data[8]"><br>
           (例）渋谷1-1-1<br>
           (例）渋谷1-1-1 **ビル29F 株式会社**** **部<br>
           $t3_font2</td>
          </tr>
EOM

	}elsif($ain3 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1都道府県$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
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
           $t3_font2</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1郡市区町村$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="50" maxlength="200" value="@user_data[7]">$t3_font2</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1それ以降の住所$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <input type="text" name="user_data" size="50" maxlength="200" value="@user_data[8]"><br>
           (例）渋谷1-1-1<br>
           (例）渋谷1-1-1 **ビル29F 株式会社**** **部<br>
           $t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1電話番号(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[9]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[10]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[11]">$t3_font2</td>
          </tr>
EOM

	}elsif($ain4 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1電話番号$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[9]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[10]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[11]">$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1ＦＡＸ番号(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[12]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[13]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[14]">$t3_font2</td>
          </tr>
EOM

	}elsif($ain5 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1ＦＡＸ番号$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[12]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[13]"> － <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[14]">$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1メールアドレス(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <input type="text" name="user_data" size="40" style="ime-mode:disabled" maxlength="200" value="@user_data[15]"><br>
           <br>
           ※確認のためにもう一度メールアドレスを入力してください。<br>
           <input type="text" name="user_data" size="40" style="ime-mode:disabled" maxlength="200" value="@user_data[16]">
           $t3_font2</td>
          </tr>
EOM

	}elsif($ain6 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1メールアドレス$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <input type="text" name="user_data" size="40" style="ime-mode:disabled" maxlength="200" value="@user_data[15]"><br>
           <br>
           ※確認のためにもう一度メールアドレスを入力してください。<br>
           <input type="text" name="user_data" size="40" style="ime-mode:disabled" maxlength="200" value="@user_data[16]">
           $t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1性別(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <select name="user_data">
           <option value=""$t48_select></option>
           <option value="M"$t49_select>男</option>
           <option value="F"$t50_select>女</option>
           </select>
           $t3_font2</td>
          </tr>
EOM

	}elsif($ain7 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1性別$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <select name="user_data">
           <option value=""$t48_select></option>
           <option value="M"$t49_select>男</option>
           <option value="F"$t50_select>女</option>
           </select>
           $t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1生年月日(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1西暦<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[18]">年 <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[19]">月 <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[20]">日$t3_font2</td>
          </tr>
EOM

	}elsif($ain8 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1生年月日$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1西暦<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[18]">年 <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[19]">月 <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[20]">日$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1ご希望の返答方法(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <select name="user_data">
           <option value=""$t53_select></option>
           <option value="メールにて返答"$t51_select>メール</option>
           <option value="電話にて返答"$t52_select>電話連絡</option>
           </select>
           $t3_font2</td>
          </tr>
EOM

	}elsif($ain9 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1ご希望の返答方法 $t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <select name="user_data">
           <option value=""$t53_select></option>
           <option value="メールにて返答"$t51_select>メール</option>
           <option value="電話にて返答"$t52_select>電話連絡</option>
           </select>
           $t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1お問い合わせ内容(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<textarea name="user_data" cols="40" rows="5">@user_data[22]</textarea>$t3_font2</td>
          </tr>
EOM

	}elsif($ain10 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1お問い合わせ内容$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<textarea name="user_data" cols="40" rows="5">@user_data[22]</textarea>$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11>$t1_font1$ain12(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="$ain13" value="@user_data[23]">$t3_font2</td>
          </tr>
EOM

		}else{

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11>$t1_font1$ain12(必須)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<textarea name="user_data" cols="$ain13" rows="$ain14">@user_data[23]</textarea>$t3_font2</td>
          </tr>
EOM

		}

	}elsif($ain11 eq "2"){

		if($ain14 eq "1"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11>$t1_font1$ain12$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="$ain13" value="@user_data[23]">$t3_font2</td>
          </tr>
EOM

		}else{

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11>$t1_font1$ain12$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<textarea name="user_data" cols="$ain13" rows="$ain14">@user_data[23]</textarea>$t3_font2</td>
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
        </td>
       </tr>
      </table>
EOM

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
     <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5 width="100%">
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
# item1_search
# 検索処理。
##################################################
sub item1_search{

	#[font]を形成。
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#表示項目を形成。
	if($rls9 ne "" && $rls10 ne ""){

		$detail = "<strong><i>$t1_font1詳細$t1_font2</i></strong>";
		if($rls4 ne ""){$rls4 = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";}
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$detail = "<strong>$t1_font1詳細$t1_font2</strong>";
		if($rls4 ne ""){$rls4 = "<strong>$t1_font1$rls4$t1_font2</strong>";}
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$detail = "<i>$t1_font1詳細$t1_font2</i>";
		if($rls4 ne ""){$rls4 = "<i>$t1_font1$rls4$t1_font2</i>";}
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$detail = "$t1_font1詳細$t1_font2";
		if($rls4 ne ""){$rls4 = "$t1_font1$rls4$t1_font2";}
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

	}

	#検索ワード入力エラー。
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#エラー画面を表示。
	if($error ne ""){
		&item1_search_error;
	}else{

		#キーワード検索フォームを表示。
		if($rls16 ne "" || $rls18 ne "" || $rls20 ne ""){

			#入力内容を整理。
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

			if($rls16 ne ""){

				@serch1 = split(/<br>/,$rls16);

				if($word1 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word1">
        <option value="" $select1>$rls15</option>
        <option></option>
EOM

				foreach $x(@serch1){

					if($word1 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls18 ne ""){

				@serch2 = split(/<br>/,$rls18);

				if($word2 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word2">
        <option value="" $select1>$rls17</option>
        <option></option>
EOM

				foreach $x(@serch2){

					if($word2 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls20 ne ""){

				@serch3 = split(/<br>/,$rls20);

				if($word3 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word3">
        <option value="" $select1>$rls19</option>
        <option></option>
EOM

				foreach $x(@serch3){

					if($word3 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

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
        <option value="and" $cond_select1>AND</option>
        <option value="or" $cond_select2>OR</option>
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
		if($rls3 ne ""){$t_rls3 = " cellspacing=\"$rls3\"";}
		if($rls3 eq ""){$t_rls3 = " cellspacing=\"0\"";}

		#[table]を表示。

print<<"EOM";
      <table border="0" cellpadding="0"$t_rls3>
       <tr>
EOM

		#検索件数初期化。
		$i = 0;

		#記事内容情報の精査。
		foreach $line(@storycomment){

			local($t_wimg1,$t_himg1,$t_cmt12,$t_comment_width,$t_dsn13,$t_dsn12,$t2_font1,$t2_font2,$t_dsn23,$t_dsn22,$t3_font1,$t3_font2);
			local($t_dsn7,$t_dsn3,$t_dsn6,$t_dsn4,$t_dsn5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn9,$t_dsn10,$t_dsn11);
			local($t_dsn27,$t_dsn26,$t_dsn19,$t_dsn20,$t_dsn21,$t_dsn32,$t_dsn31,$t_dsn29,$t_dsn30,$t_rls11);

			#記事内容情報の分割。
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line);

			#記事表示の一時停止要否。
			if($cmt8 eq "on"){
				next;
			}

			if($word eq ""){

				$flag = 0;

				if($word1 ne "" && $word2 eq "" && $word3 eq ""){if($cmt5 eq "$word1")                                          {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 eq ""){if($cmt5 eq "$word1" && $cmt6 eq "$word2")                     {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 ne ""){if($cmt5 eq "$word1" && $cmt6 eq "$word2" && $cmt7 eq "$word3"){$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 eq ""){if($cmt6 eq "$word2")                                          {$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 ne ""){if($cmt6 eq "$word2" && $cmt7 eq "$word3")                     {$flag = 1;}}
				if($word1 eq "" && $word2 eq "" && $word3 ne ""){if($cmt7 eq "$word3")                                          {$flag = 1;}}
				if($word1 ne "" && $word2 eq "" && $word3 ne ""){if($cmt5 eq "$word1" && $cmt7 eq "$word3")                     {$flag = 1;}}

			}else{

				$flag = 0;

				$line_tmp = "$title,$msg,$cmt2,$cmt3,$cmt4";

				foreach $pair(@pairs){

					$pair =~ s/,/&#44;/g;

					if(index($line_tmp,$pair) >=0){

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

				#[img][td]を形成。
				if($wimg1 ne ""){$t_wimg1 = " width=\"$wimg1\"";}
				if($himg1 ne ""){$t_himg1 = " height=\"$himg1\"";}

				#商品画像を形成。
				if($img1 ne ""){

					#記事の幅、高さの設定。
					local($width,$height) = split(/×/,$simg1);
					$br_width             = $width + 40;
					$br_height            = $height + 50;

					#画像の説明文設定。
					if($cmt12 ne ""){
						$t_cmt12 = " alt=\"$cmt12\"";
					}

					if($img1 =~ /pdf$/i){

						#pdfファイルの場合は添付ファイルとして形成。
						$img1 = "<a href=\"$page_imgdir/$img1\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
					}else{

						if($pimg1 eq ""){				#拡大表示「off（空欄）」を形成。

							$img1 = "<img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12>";
						}else{						#拡大表示「on」を形成。

							if($br_width eq "40" && $br_height eq "50"){

								#記事の幅、高さが未設定を形成。
								$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12 border=\"0\"></a>";
							}else{

								#記事の幅、高さが設定済みを形成。
								$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12 border=\"0\"></a>";
							}
						}
					}
				}

				#幅を形成。
				$comment_width = $dsn1 - $wimg1;

				if($comment_width ne ""){
					if($comment_width >= 0){
						$t_comment_width = " width=\"$comment_width\"";
					}
				}

				#[font]を形成。
				if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
				if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
				if($dsn13 ne "" || $dsn12 ne ""){$t2_font1 = "<font$t_dsn13$t_dsn12>";}
				if($dsn13 ne "" || $dsn12 ne ""){$t2_font2 = "</font>";}

				#商品名を形成。
				if($cmt1 ne "")                 {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
				if($dsn14 ne "" && $dsn15 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
				if($dsn14 ne "" && $dsn15 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
				if($dsn14 eq "" && $dsn15 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
				if($dsn14 eq "" && $dsn15 eq ""){$sub  = "$t2_font1$title$t2_font2";}

				#[font]を形成。
				if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
				if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
				if($dsn23 ne "" || $dsn22 ne ""){$t3_font1 = "<font$t_dsn23$t_dsn22>";}
				if($dsn23 ne "" || $dsn22 ne ""){$t3_font2 = "</font>";}

				#詳細画面へのリンク名。
				if($rls23 ne ""){
					$detailName = $rls23;
				}else{
					$detailName = "詳細画面あり";
				}

				#商品詳細情報を形成。
				if($dsn24 ne "" && $dsn25 ne ""){

					if($cmt15 eq "on"){
						$msg =~ s/&lt;br&gt;/\n/g;
					}

					$detail2 = "$t3_font1<strong><i>$detailName</i></strong>$t3_font2";
					if($cmt2 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
					if($cmt3 ne ""){$cmt3 = "$t3_font1<strong><i>$cmt3</i></strong>$t3_font2";}
					if($cmt4 ne ""){$cmt4 = "$t3_font1<strong><i>$cmt4</i></strong>$t3_font2";}
					if($msg ne "") {$msg  = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}

				}

				if($dsn24 ne "" && $dsn25 eq ""){

					if($cmt15 eq "on"){
						$msg =~ s/&lt;br&gt;/\n/g;
					}

					$detail2 = "$t3_font1<strong>$detailName</strong>$t3_font2";
					if($cmt2 ne ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
					if($cmt3 ne ""){$cmt3 = "$t3_font1<strong>$cmt3</strong>$t3_font2";}
					if($cmt4 ne ""){$cmt4 = "$t3_font1<strong>$cmt4</strong>$t3_font2";}
					if($msg ne "") {$msg  = "$t3_font1<strong>$msg</strong>$t3_font2";}

				}

				if($dsn24 eq "" && $dsn25 ne ""){

					if($cmt15 eq "on"){
						$msg =~ s/&lt;br&gt;/\n/g;
					}

					$detail2 = "$t3_font1<i>$detailName</i>$t3_font2";
					if($cmt2 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
					if($cmt3 ne ""){$cmt3 = "$t3_font1<i>$cmt3</i>$t3_font2";}
					if($cmt4 ne ""){$cmt4 = "$t3_font1<i>$cmt4</i>$t3_font2";}
					if($msg ne "") {$msg  = "$t3_font1<i>$msg</i>$t3_font2";}

				}

				if($dsn24 eq "" && $dsn25 eq ""){

					if($cmt15 eq "on"){
						$msg =~ s/&lt;br&gt;/\n/g;
					}

					$detail2 = "$t3_font1$detailName$t3_font2";
					if($cmt2 ne ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}
					if($cmt3 ne ""){$cmt3 = "$t3_font1$cmt3$t3_font2";}
					if($cmt4 ne ""){$cmt4 = "$t3_font1$cmt4$t3_font2";}
					if($msg ne "") {$msg  = "$t3_font1$msg$t3_font2";}

				}

				if($k >= $rls2){
					print"       </tr>\n";
					print"       <tr>\n";
					$k = 0;
				}

				$k++;

				if($cmt15 eq ""){
					#補足説明文の自動リンク。
					&auto_link;
				}

				#[table]を形成。
				if($dsn7 ne ""){$t_dsn7 = " bgcolor=\"$dsn7\"";}
				if($dsn3 ne ""){$t_dsn3 = " border=\"$dsn3\"";}
				if($dsn3 eq ""){$t_dsn3 = " border=\"0\"";}
				if($dsn6 ne ""){$t_dsn6 = " bordercolor=\"$dsn6\"";}
				if($dsn4 ne ""){$t_dsn4 = " cellspacing=\"$dsn4\"";}
				if($dsn4 eq ""){$t_dsn4 = " cellspacing=\"0\"";}
				if($dsn5 ne ""){$t_dsn5 = " cellpadding=\"$dsn5\"";}
				if($dsn5 eq ""){$t_dsn5 = " cellpadding=\"0\"";}
				if($dsn1 ne ""){$t_dsn1 = " width=\"$dsn1\"";}
				if($dsn2 ne ""){$t_dsn2 = " height=\"$dsn2\"";}

				#[table]を表示。

				if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){

print<<"EOM";
        <td valign="top">
         <form action="$ask7\/$cgi_host\/$site_folder\/siteup.cgi" method="post" style="margin-bottom:0">
         <input type="hidden" name="ask" value="on">
         <input type="hidden" name="item" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="no" value="$no">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

				}else{

print<<"EOM";
        <td valign="top">
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="ask" value="on">
         <input type="hidden" name="item" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="no" value="$no">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

				}

				#[td]を形成。
				if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
				if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
				if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
				if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
				if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
				if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

				#商品名を表示。
				if($img1 eq ""){
					print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1$sub</td>\n";
				}else{
					print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 colspan=\"2\">$cmt1$sub</td>\n";
				}

print<<"EOM";
          </tr>
EOM

				if($rls4 ne "" || $rls5 ne "" || $rls6 ne "" || $msg ne "" || $img1 ne "" ||  $img2 ne "" || $img3 ne "" || $rls13 eq "on"){

print<<"EOM";
          <tr>
EOM

					#[td]を形成。
					if($dsn27 ne ""){$t_dsn27 = " bgcolor=\"$dsn27\"";}
					if($dsn26 ne ""){$t_dsn26 = " bordercolor=\"$dsn26\"";}
					if($dsn19 ne ""){$t_dsn19 = " height=\"$dsn19\"";}
					if($dsn20 ne ""){$t_dsn20 = " align=\"$dsn20\"";}
					if($dsn21 ne ""){$t_dsn21 = " valign=\"$dsn21\"";}
					if($dsn21 eq ""){$t_dsn21 = " valign=\"top\"";}

					if($dsn32 ne ""){$t_dsn32 = " bgcolor=\"$dsn32\"";}
					if($dsn31 ne ""){$t_dsn31 = " bordercolor=\"$dsn31\"";}
					if($dsn29 ne ""){$t_dsn29 = " align=\"$dsn29\"";}
					if($dsn30 ne ""){$t_dsn30 = " valign=\"$dsn30\"";}
					if($dsn30 eq ""){$t_dsn30 = " valign=\"top\"";}

					#商品画像を表示。
					if($img1 eq ""){
						print"           <td background=\"$page_imgdir/$dsn28\"$t_dsn27$t_dsn26$t_dsn19$t_dsn20$t_dsn21>\n";
					}else{
						print"           <td background=\"$page_imgdir/$dsn33\"$t_dsn32$t_dsn31$t_wimg1$t_himg1$t_dsn29$t_dsn30>\n";
						print"           $img1\n";
						print"           </td>\n";
						print"           <td background=\"$page_imgdir/$dsn28\"$t_dsn27$t_dsn26$t_comment_width$t_dsn19$t_dsn20$t_dsn21>\n";
					}

					#商品詳細情報を表示。
					if($rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

						if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

print<<"EOM";
            <table border="0" cellspacing="1">
EOM

						if($rls4 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls4</td>
              <td>$cmt2</td>
             </tr>
EOM

						}

						if($rls5 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
              <td>$cmt3</td>
             </tr>
EOM

						}

						if($rls6 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
              <td>$cmt4</td>
             </tr>
EOM

						}

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
EOM

						#商品詳細リンクを表示。
						if($msg ne "" || $img2 ne "" || $img3 ne ""){
							print"              <td><a href=\"$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$detail2</a></td>\n";
						}else{
							print"              <td> </td>\n";
						}

print<<"EOM";
             </tr>
            </table>
EOM

					}else{

print<<"EOM";
            <table border="0" cellspacing="1">
EOM

						#商品説明詳細をそのまま表示。
						if($msg ne ""){

print<<"EOM";
             <tr>
              <td>$msg</td>
             </tr>
EOM

						}

						#商品説明詳細を表示。
						if($img2 ne "" || $img3 ne ""){

print<<"EOM";
             <tr>
              <td><a href="$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no">$detail2</a></td>
             </tr>
EOM

						}

print<<"EOM";
            </table>
EOM

					}

					#問い合わせボタンを表示。
					if($rls13 eq "on"){
						print"            <div align=\"center\"><input type=\"submit\" value=\"$rls14\"></div>\n";
					}

print<<"EOM";
           </td>
          </tr>
EOM

				}

print<<"EOM";
         </table>
         </form>
        </td>
EOM

			}
		}

print<<"EOM";
       </tr>
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
# item1_search_error
# エラー処理。
##################################################
sub item1_search_error{

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
