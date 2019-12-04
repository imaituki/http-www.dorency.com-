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
# list1
# リスト1の記事表示。
##################################################
sub list1{

	#1ページに表示する記事数を代入。(未設定の場合は500を指定)
	if($rls23 ne ""){
		$p_view = $rls23;
	}else{
		$p_view = "500";
	}

	#検索フォーム表示。
	if($rls32 ne ""){

		#キーワード検索フォームを表示。
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

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

			if($rls27 ne ""){

				@serch1 = split(/<br>/,$rls27);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls26</option>
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

			if($rls29 ne ""){

				@serch2 = split(/<br>/,$rls29);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls28</option>
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

			if($rls31 ne ""){

				@serch3 = split(/<br>/,$rls31);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls30</option>
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

	#[font]を形成。
	if($rls17 ne "")                {$t_rls17  = " size=\"$rls17\"";}
	if($rls16 ne "")                {$t_rls16  = " color=\"$rls16\"";}
	if($rls17 ne "" || $rls16 ne ""){$t1_font1 = "<font$t_rls17$t_rls16>";}
	if($rls17 ne "" || $rls16 ne ""){$t1_font2 = "</font>";}

	#表示項目を形成。
	if($rls18 ne "" && $rls19 ne ""){

		$rls9 = "$t1_font1<strong><i>$rls9</i></strong>$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1<strong><i>$rls11</i></strong>$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1<strong><i>$rls11</i></strong>$t1_font2";}
	}

	if($rls18 ne "" && $rls19 eq ""){

		$rls9 = "$t1_font1<strong>$rls9</strong>$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1<strong>$rls11</strong>$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1<strong>$rls13</strong>$t1_font2";}
	}

	if($rls18 eq "" && $rls19 ne ""){

		$rls9 = "$t1_font1<i>$rls9</i>$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1<i>$rls11</i>$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1<i>$rls13</i>$t1_font2";}
	}

	if($rls18 eq "" && $rls19 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
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

	#[td]を形成。
	if($rls21 ne ""){$t_rls21 = " bgcolor=\"$rls21\"";}
	if($rls20 ne ""){$t_rls20 = " bordercolor=\"$rls20\"";}
	if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
	if($rls15 ne ""){$t_rls15 = " height=\"$rls15\"";}

	if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}
	if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}

	#リストを表示。

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls22"$t_rls21$t_rls20$t_rls10$t_rls15 align="center" valign="middle">$rls9</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls22\"$t_rls21$t_rls20$t_rls12$t_rls15 align=\"center\" valign=\"middle\">$rls11</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls22\"$t_rls21$t_rls20$t_rls14$t_rls15 align=\"center\" valign=\"middle\">$rls13</td>\n";}

print<<"EOM";
       </tr>
EOM

	#記事内容情報数の初期化。
	$i = 0;

	#ページングの初期化。
	$j = 0;

	#記事内容情報の精査。
	foreach (@storycomment){

		local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_cmt3,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
		local($t_dsn8,$t_dsn7,$t_cmt5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20);

		#記事内容情報の分割。
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#記事表示の一時停止要否。
		if($cmt6 eq "on"){
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
		&list1_view;

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

			if($rls24 ne ""){
				$backName = $rls24;
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

			if($rls25 ne ""){
				$nextName = $rls25;
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
# list1_search
# リスト1の検索処理。
##################################################
sub list1_search{

	#検索ワード未入力エラー。
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#エラー画面表示。
	if($error ne ""){
		&errorSearch;
	}else{

		#キーワード検索フォームを表示。
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

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

		#[font]を形成。
		if($rls17 ne "")                {$t_rls17  = " size=\"$rls17\"";}
		if($rls16 ne "")                {$t_rls16  = " color=\"$rls16\"";}
		if($rls17 ne "" || $rls16 ne ""){$t1_font1 = "<font$t_rls17$t_rls16>";}
		if($rls17 ne "" || $rls16 ne ""){$t1_font2 = "</font>";}

		#表示項目を形成。
		if($rls18 ne "" && $rls19 ne ""){

			$rls9 = "$t1_font1<strong><i>$rls9</i></strong>$t1_font2";
			if($rls11 ne ""){$rls11 = "$t1_font1<strong><i>$rls11</i></strong>$t1_font2";}
			if($rls13 ne ""){$rls13 = "$t1_font1<strong><i>$rls11</i></strong>$t1_font2";}
		}

		if($rls18 ne "" && $rls19 eq ""){

			$rls9 = "$t1_font1<strong>$rls9</strong>$t1_font2";
			if($rls11 ne ""){$rls11 = "$t1_font1<strong>$rls11</strong>$t1_font2";}
			if($rls13 ne ""){$rls13 = "$t1_font1<strong>$rls13</strong>$t1_font2";}
		}

		if($rls18 eq "" && $rls19 ne ""){

			$rls9 = "$t1_font1<i>$rls9</i>$t1_font2";
			if($rls11 ne ""){$rls11 = "$t1_font1<i>$rls11</i>$t1_font2";}
			if($rls13 ne ""){$rls13 = "$t1_font1<i>$rls13</i>$t1_font2";}
		}

		if($rls18 eq "" && $rls19 eq ""){

			$rls9 = "$t1_font1$rls9$t1_font2";
			if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
			if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
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

		#[td]を形成。
		if($rls21 ne ""){$t_rls21 = " bgcolor=\"$rls21\"";}
		if($rls20 ne ""){$t_rls20 = " bordercolor=\"$rls20\"";}
		if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
		if($rls15 ne ""){$t_rls15 = " height=\"$rls15\"";}

		if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}
		if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}

		#リストを表示。

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls22"$t_rls21$t_rls20$t_rls10$t_rls15 align="center" valign="middle">$rls9</td>
EOM

		if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls22\"$t_rls21$t_rls20$t_rls12$t_rls15 align=\"center\" valign=\"middle\">$rls11</td>\n";}
		if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls22\"$t_rls21$t_rls20$t_rls14$t_rls15 align=\"center\" valign=\"middle\">$rls13</td>\n";}

print<<"EOM";
       </tr>
EOM

		#記事内容情報数の初期化。
		$i = 0;

		#記事内容情報の精査。
		foreach (@storycomment){

			local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_cmt3,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
			local($t_dsn8,$t_dsn7,$t_cmt5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20);

			#記事内容情報の分割。
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

			#記事表示の一時停止要否。
			if($cmt6 eq "on"){
				next;
			}

			if($word eq ""){

				$flag = 0;

				if($word1 ne "" && $word2 eq "" && $word3 eq ""){if($cmt7 eq "$word1")                                            {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 eq ""){if($cmt7 eq "$word1" && $cmt8 eq "$word2")                      {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 ne ""){if($cmt7 eq "$word1" && $cmt8 eq "$word2" && $cmt9 eq "$word3"){$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 eq ""){if($cmt8 eq "$word2")                                            {$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 ne ""){if($cmt8 eq "$word2" && $cmt9 eq "$word3")                      {$flag = 1;}}
				if($word1 eq "" && $word2 eq "" && $word3 ne ""){if($cmt9 eq "$word3")                                            {$flag = 1;}}
				if($word1 ne "" && $word2 eq "" && $word3 ne ""){if($cmt7 eq "$word1" && $cmt9 eq "$word3")                      {$flag = 1;}}

			}else{

				$flag = 0;

				$line_tmp = "$title,$msg,$cmt4";

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
				&list1_view;

			}
		}

print<<"EOM";
      </table>
EOM

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
# list1_view
# 内容表示。
##################################################
sub list1_view{

	local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_cmt3,$t_dsn13,$t_dsn12);
	local($t3_font1,$t3_font2,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
	local($t_dsn8,$t_dsn7,$t_cmt5,$t_dsn1,$t_dsn2,$t_dsn2);
	local($t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn11);
	local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn20);

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

		if($cmt10 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
			$msg =~ s/&#44;/,/g;
		}

		#補足説明文を形成。
		if($dsn14 ne "" && $dsn15 ne ""){$msg = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}
		if($dsn14 ne "" && $dsn15 eq ""){$msg = "$t3_font1<strong>$msg</strong>$t3_font2";}
		if($dsn14 eq "" && $dsn15 ne ""){$msg = "$t3_font1<i>$msg</i>$t3_font2";}
		if($dsn14 eq "" && $dsn15 eq ""){$msg = "$t3_font1$msg$t3_font2";}
	}

	#フリー項目文章を形成。
	if($cmt4 ne ""){

		#[font]を形成。
		if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
		if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

		if($cmt11 eq "on"){
			$cmt4 =~ s/&lt;br&gt;/\n/g;
			$cmt4 =~ s/&#44;/,/g;
		}

		#フリー項目文章を形成。
		if($dsn23 ne "" && $dsn24 ne ""){$cmt4 = "$t4_font1<strong><i>$cmt4</i></strong>$t4_font2";}
		if($dsn23 ne "" && $dsn24 eq ""){$cmt4 = "$t4_font1<strong>$cmt4</strong>$t4_font2";}
		if($dsn23 eq "" && $dsn24 ne ""){$cmt4 = "$t4_font1<i>$cmt4</i>$t4_font2";}
		if($dsn23 eq "" && $dsn24 eq ""){$cmt4 = "$t4_font1$cmt4$t4_font2";}
	}

	if($cmt10 eq ""){
		#補足説明文の自動リンク。
		&auto_link;
	}

	if($cmt11 eq ""){
		#補足説明文の自動リンク。
		&auto_cmt4;
	}

	#[td]を形成。
	if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
	if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
	if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}
	if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
	if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
	if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}

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

	#リスト情報を表示。

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_rls10$t_cmt5$t_dsn1$t_dsn2>$title</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_rls12$t_cmt5$t_dsn10$t_dsn11>$msg</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$dsn27\"$t_dsn26$t_dsn25$t_rls14$t_cmt5$t_dsn19$t_dsn20>$cmt4</td>\n";}

print<<"EOM";
       </tr>
EOM

}

1;
