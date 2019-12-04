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
# use1
# 汎用1の記事表示。
##################################################
sub use1{

	#1ページに表示する記事数を代入。(未設定の場合は500を指定)
	if($rls1 ne ""){
		$p_view = $rls1;
	}else{
		$p_view = "500";
	}

	#検索フォーム表示。
	if($rls2 ne ""){

		#キーワード検索フォームを表示。
		if($rls6 ne "" || $rls8 ne "" || $rls10 ne ""){

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

			if($rls6 ne ""){

				@serch1 = split(/<br>/,$rls6);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls5</option>
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

			if($rls8 ne ""){

				@serch2 = split(/<br>/,$rls8);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls7</option>
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

			if($rls10 ne ""){

				@serch3 = split(/<br>/,$rls10);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls9</option>
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

	#記事内容情報数の初期化。
	$i = 0;

	#ページングの初期化。
	$j = 0;

	#記事内容情報の精査。
	foreach (@storycomment){

		#最後の[CR/LF]除去。
		chomp($_);

		#記事内容情報の分割。
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times,$cmt16,$cmt17,$cmt18) = split(/,/,$_);

		#記事表示の一時停止要否。
		if($cmt13 eq "on"){
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

		#内容表示。
		&use1_view;
	}

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

			if($rls3 ne ""){
				$backName = $rls3;
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

			if($rls4 ne ""){
				$nextName = $rls4;
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
# use1_search
# 汎用1の検索処理。
##################################################
sub use1_search{

	#検索ワード未入力エラー。
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#エラー画面表示。
	if($error ne ""){
		&errorSearch;
	}else{

		#キーワード検索フォームを表示。
		if($rls6 ne "" || $rls8 ne "" || $rls10 ne ""){

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

			if($rls6 ne ""){

				@serch1 = split(/<br>/,$rls6);

				if($word1 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word1">
        <option value="" $select1>$rls5</option>
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

			if($rls8 ne ""){

				@serch2 = split(/<br>/,$rls8);

				if($word2 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word2">
        <option value="" $select1>$rls7</option>
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

			if($rls10 ne ""){

				@serch3 = split(/<br>/,$rls10);

				if($word3 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word3">
        <option value="" $select1>$rls9</option>
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

			#検索フォーム状態を保持。
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

		#記事内容情報数の初期化。
		$i = 0;

		#記事内容情報の精査。
		foreach $line(@storycomment){

			#最後の[CR/LF]除去。
			chomp($line);

			#記事内容情報の分割。
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times,$cmt16,$cmt17,$cmt18) = split(/,/,$line);

			#記事表示の一時停止要否。
			if($cmt13 eq "on"){
				next;
			}

			if($word eq ""){

				$flag = 0;

				if($word1 ne "" && $word2 eq "" && $word3 eq ""){if($cmt14 eq "$word1")                                            {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 eq ""){if($cmt14 eq "$word1" && $cmt15 eq "$word2")                      {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 ne ""){if($cmt14 eq "$word1" && $cmt15 eq "$word2" && $cmt16 eq "$word3"){$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 eq ""){if($cmt15 eq "$word2")                                            {$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 ne ""){if($cmt15 eq "$word2" && $cmt16 eq "$word3")                      {$flag = 1;}}
				if($word1 eq "" && $word2 eq "" && $word3 ne ""){if($cmt16 eq "$word3")                                            {$flag = 1;}}
				if($word1 ne "" && $word2 eq "" && $word3 ne ""){if($cmt14 eq "$word1" && $cmt16 eq "$word3")                      {$flag = 1;}}

			}else{

				$flag = 0;

				$line_tmp = "$title,$msg";

				#検索実行。
				foreach $pair(@pairs){

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

			#検索条件にマッチしていた場合。
			if($flag == 1){

				$i++;

				#内容表示。
				&use1_view;
			}
		}

		#検索結果のメッセージを表示。
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
# use1_view
# 内容表示。
##################################################
sub use1_view{

	local($t_wimg1,$t_himg1,$t_cmt18,$t_cmt4,$t_dsn13,$t_dsn12,$t1_font1,$t1_font2,$t_dsn23,$t_dsn22,$t2_font1,$t2_font2,$tc_width);
	local($t_dsn7,$t_dsn3,$t_dsn6,$t_dsn4,$t_dsn5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn9,$t_dsn10,$t_dsn11,$t_dsn27,$t_dsn26);
	local($t_dsn19,$t_dsn20,$t_dsn21,$t_dsn32,$t_dsn31,$t_dsn29,$t_dsn30);
	local($t_cmt9,$t_cmt8,$t_cmt10,$t_cmt7);

	if(($in{'category'} eq "0" && $in{'page'} eq "0") || ($in{'category'} eq "" && $in{'page'} eq "")){

		if($location eq "up"){

			#リンクを設定。
			if($cmt3 =~ /^http/ || $cmt3 =~ /^mailto/){

				#絶対アドレスの場合はそのままにする。
				$cmt3 = "$cmt3";

			}else{

				if($cmt3 ne ""){

					#相対アドレスの場合は置換処理を行う。
					$cmt3 =~ s/^.//;
					$cmt3 = "$cgi_address/$site_folder$cmt3";

				}
			}

			#リンクを設定。
			if($cmt11 =~ /^http/ || $cmt11 =~ /^mailto/){

				#絶対アドレスの場合はそのままにする。
				$cmt11 = "$cmt11";

			}else{

				if($cmt11 ne ""){

					#相対アドレスの場合は置換処理を行う。
					$cmt11 =~ s/^.//;
					$cmt11 = "$cgi_address/$site_folder$cmt11";

				}
			}
		}
	}

	#表示幅を形成。
	if($wimg1 ne ""){$t_wimg1 = " width=\"$wimg1\"";}
	if($himg1 ne ""){$t_himg1 = " height=\"$himg1\"";}

	#画像を形成。
	if($img1 ne ""){

		#記事の幅、高さの設定。
		local($width,$height) = split(/×/,$simg1);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#画像の説明文設定。
		if($cmt18 ne ""){
			$t_cmt18 = " alt=\"$cmt18\"";
		}

		if($img1 =~ /pdf$/i){

			#pdfファイルの場合は添付ファイルとして形成。
			$img1 = "<a href=\"$page_imgdir/$img1\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"添付資料\"></a>";
		}else{

			if($pimg1 eq ""){				#拡大表示「off（空欄）」を形成。

				#画像リンク先を形成。
				if($cmt11 ne ""){
					my $t_cmt12 = "";
					if($cmt12 ne ""){$t_cmt12 = " target=\"_blank\"";}
					$img1 = "<a href=\"$cmt11\"$t_cmt12><img src=\"$page_imgdir/$img1\" border=\"0\"$t_wimg1$t_himg1$t_cmt18></a>";
				}else{
					$img1 = "<img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt18>";
				}
			}else{						#拡大表示「on」を形成。

				if($br_width eq "40" && $br_height eq "50"){
					#記事の幅、高さが未設定を形成。
					$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img1\" border=\"0\"$t_wimg1$t_himg1$t_cmt18></a>";
				}else{

					#記事の幅、高さが設定済みを形成。
					$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img1\" border=\"0\"$t_wimg1$t_himg1$t_cmt18></a>";
				}
			}
		}
	}

	#タイトル画像を形成。
	if($cmt1 ne ""){

		#リンク先を形成。
		if($cmt3 ne ""){
			if($cmt4 ne ""){$t_cmt4 = " target=\"_blank\"";}
			$cmt1 = "<a href=\"$cmt3\"$t_cmt4><img src=\"$page_imgdir/$cmt1\" border=\"0\" alt=\"$title\"></a>";
		}elsif($cmt3 eq ""){
			$cmt1 = "<img src=\"$page_imgdir/$cmt1\" border=\"0\" alt=\"$title\">";
		}

		#タイトル情報を代入。
		$title = "$cmt1";
	}elsif($cmt1 eq ""){

		#アイコン画像を形成。
		if($cmt2 ne ""){$cmt2 = "<img src=\"$page_imgdir/$cmt2\" align=\"absmiddle\">";}

		#[font]を形成。
		if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
		if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
		if($dsn13 ne "" || $dsn12 ne ""){$t1_font1 = "<font$t_dsn13$t_dsn12>";}
		if($dsn13 ne "" || $dsn12 ne ""){$t1_font2 = "</font>";}

		#文章を形成。
		if($dsn14 ne "" && $dsn15 ne ""){$title = "$t1_font1<strong><i>$title</i></strong>$t1_font2";}
		if($dsn14 ne "" && $dsn15 eq ""){$title = "$t1_font1<strong>$title</strong>$t1_font2";}
		if($dsn14 eq "" && $dsn15 ne ""){$title = "$t1_font1<i>$title</i>$t1_font2";}
		if($dsn14 eq "" && $dsn15 eq ""){$title = "$t1_font1$title$t1_font2";}

		#リンク先を形成。
		if($cmt3 ne ""){
			if($cmt4 ne ""){$t_cmt4 = " target=\"_blank\"";}
			$title = "$cmt2<a href=\"$cmt3\"$t_cmt4>$title</a>";
		}elsif($cmt3 eq ""){
			$title = "$cmt2$title";
		}
	}

	#補足説明文を形成。
	if($msg ne ""){

		#[font]を形成。
		if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
		if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
		if($dsn23 ne "" || $dsn22 ne ""){$t2_font1 = "<font$t_dsn23$t_dsn22>";}
		if($dsn23 ne "" || $dsn22 ne ""){$t2_font2 = "</font>";}

		if($cmt17 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
			$msg =~ s/&#44;/,/g;
		}

		#補足説明文を形成。
		if($dsn24 ne "" && $dsn25 ne ""){$msg = "$t2_font1<strong><i>$msg</i></strong>$t2_font2";}
		if($dsn24 ne "" && $dsn25 eq ""){$msg = "$t2_font1<strong>$msg</strong>$t2_font2";}
		if($dsn24 eq "" && $dsn25 ne ""){$msg = "$t2_font1<i>$msg</i>$t2_font2";}
		if($dsn24 eq "" && $dsn25 eq ""){$msg = "$t2_font1$msg$t2_font2";}
	}

	#幅を形成。
	$c_width = $dsn1 - $wimg1;

	if($c_width ne ""){
		if($c_width >= 0){
			$tc_width = " width=\"$c_width\"";
		}
	}

	if($cmt17 eq ""){
		#補足説明文の自動リンク。
		&auto_link;
	}

	#[table]を形成。
	if($dsn7 ne ""){$t_dsn7 = " bgcolor=\"$dsn7\"";}
	if($dsn3 ne ""){$t_dsn3 = " border=\"$dsn3\"";}
	if($dsn3 eq ""){$t_dsn3 = " border=\"0\"";}
	if($dsn5 ne ""){$t_dsn5 = " cellpadding=\"$dsn5\"";}
	if($dsn5 eq ""){$t_dsn5 = " cellpadding=\"0\"";}
	if($dsn4 ne ""){$t_dsn4 = " cellspacing=\"$dsn4\"";}
	if($dsn4 eq ""){$t_dsn4 = " cellspacing=\"0\"";}
	if($dsn1 ne ""){$t_dsn1 = " width=\"$dsn1\"";}
	if($dsn2 ne ""){$t_dsn2 = " height=\"$dsn2\"";}
	if($dsn6 ne ""){$t_dsn6 = " bordercolor=\"$dsn6\"";}

	#[td]を形成。
	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}

	if($dsn27 ne ""){$t_dsn27 = " bgcolor=\"$dsn27\"";}
	if($dsn19 ne ""){$t_dsn19 = " height=\"$dsn19\"";}
	if($dsn20 ne ""){$t_dsn20 = " align=\"$dsn20\"";}
	if($dsn21 ne ""){$t_dsn21 = " valign=\"$dsn21\"";}
	if($dsn21 eq ""){$t_dsn21 = " valign=\"top\"";}
	if($dsn26 ne ""){$t_dsn26 = " bordercolor=\"$dsn26\"";}

	if($dsn32 ne ""){$t_dsn32 = " bgcolor=\"$dsn32\"";}
	if($dsn29 ne ""){$t_dsn29 = " align=\"$dsn29\"";}
	if($dsn30 ne ""){$t_dsn30 = " valign=\"$dsn30\"";}
	if($dsn30 eq ""){$t_dsn30 = " valign=\"top\"";}
	if($dsn31 ne ""){$t_dsn31 = " bordercolor=\"$dsn31\"";}

	#画像無しを表示。
	if($img1 eq ""){

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
       <tr>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$title</td>
       </tr>
EOM

		#文章を表示。
		if($msg ne ""){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26$t_dsn19$t_dsn20$t_dsn21>$msg</td>
       </tr>
EOM

		}

print<<"EOM";
      </table>
EOM

	}

	#画像有りを表示。
	if($img1 ne "" && $msg eq ""){

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
       <tr>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$title</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$dsn33"$t_dsn32$t_dsn31$t_dsn29$t_dsn30>$img1</td>
       </tr>
      </table>
EOM

	}

	#文章を表示。
	if($img1 ne "" && $msg ne ""){

		#画像を配置(左)。
		if($cmt5 eq "left"){

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
       <tr>
        <td colspan="2" background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$title</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$dsn33"$t_dsn32$t_dsn31$t_wimg1$t_himg1$t_dsn29$t_dsn30>$img1</td>
        <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26$tc_width$t_dsn19$t_dsn20$t_dsn21>$msg</td>
       </tr>
      </table>
EOM

		}

		#画像を配置(右)。
		if($cmt5 eq "right"){

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
       <tr>
        <td colspan="2" background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$title</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26$tc_width$t_dsn19$t_dsn20$t_dsn21>$msg</td>
        <td background="$page_imgdir/$dsn33"$t_dsn32$t_dsn31$t_wimg1$t_himg1$t_dsn29$t_dsn30>$img1</td>
       </tr>
      </table>
EOM

		}
	}

	#区切りを形成。
	if($cmt9 ne "") {$t_cmt9  = " size=\"$cmt9\"";}
	if($cmt8 ne "") {$t_cmt8  = " width=\"$cmt8\"";}
	if($cmt10 ne ""){$t_cmt10 = " color=\"$cmt10\"";}
	if($cmt7 ne "") {$t_cmt7  = " height=\"$cmt7\"";}

	#区切りを表示。
	if($cmt6 eq "区切り線"){
		print"      <hr$t_cmt9$t_cmt8$t_cmt10>\n";
	}elsif($cmt6 eq "改行"){
		print"      <br>\n";
	}elsif($cmt6 eq "数値" && $cmt7 ne "0"){
		print"      <img src=\"$imgdir/spacer.gif\"$t_cmt7><br>\n";
	}else{
		print"";
	}
}

1;
