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
# form1
# フォーム1の記事の表示を行う。
##################################################
sub form1{

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
     <form action="$script" method="post" style="margin-bottom:0">
     <input type="hidden" name="form" value="check">
     <input type="hidden" name="category" value="$in{'category'}">
     <input type="hidden" name="page" value="$in{'page'}">
     <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
EOM

	#パラメータ番号セット。
	$n = 0;

	#記事内容情報の精査。
	foreach (@storycomment){

		if($n < 10){
			$i = "00" . $n;
		}elsif($n < 100){
			$i = "0" . $n;
		}else{
			$i = $n;
		}

		local($t_dsn4,$t_dsn3,$t1_font1,$t1_font2,$t_dsn13,$t_dsn12,$t2_font1,$t2_font2);
		local($t_dsn8,$t_dsn7,$t_rls9,$t_cmt7,$t_dsn1,$t_dsn2);
		local($t_dsn17,$t_dsn16,$t_rls10,$t_cmt7,$t_dsn10,$t_dsn11);
		local($t_dsn13,$t_dsn12,$t3_font1,$t3_font2);

		#記事内容情報を分割。
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#記事表示の一時停止要否。
		if($cmt8 eq "on"){
			next;
		}

		#必須設定。
		if($cmt6 ne ""){
			if($cmt2 eq "checkbox"){$need = "";}
			elsif($cmt2 eq "radio"){$need = "";}
			else                   {$need = "（必須）";}
		}else{
			$need = "";
		}

		#画像を形成。
		if($cmt1 ne ""){$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}

		#[font]を形成。
		if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
		if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
		if($dsn4 ne "" || $dsn3 ne ""){$t1_font1 = "<font$t_dsn4$t_dsn3>";}
		if($dsn4 ne "" || $dsn3 ne ""){$t1_font2 = "</font>";}

		#強調文字を形成。
		if($dsn5 ne "" && $dsn6 ne ""){$sub = "$t1_font1<strong><i>$title$need</i></strong>$t1_font2";}
		if($dsn5 ne "" && $dsn6 eq ""){$sub = "$t1_font1<strong>$title$need</strong>$t1_font2";}
		if($dsn5 eq "" && $dsn6 ne ""){$sub = "$t1_font1<i>$title$need</i>$t1_font2";}
		if($dsn5 eq "" && $dsn6 eq ""){$sub = "$t1_font1$title$need$t1_font2";}

		#補足説明文を形成。
		if($msg ne ""){

			#[font]を形成。
			if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
			if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
			if($dsn13 ne "" || $dsn12 ne ""){$t2_font1 = "<font$t_dsn13$t_dsn12>";}
			if($dsn13 ne "" || $dsn12 ne ""){$t2_font2 = "</font>";}

			#補足説明文を形成。
			if($dsn14 ne "" && $dsn15 ne ""){$msg = "$t2_font1<strong><i>$msg</i></strong>$t2_font2";}
			if($dsn14 ne "" && $dsn15 eq ""){$msg = "$t2_font1<strong>$msg</strong>$t2_font2";}
			if($dsn14 eq "" && $dsn15 ne ""){$msg = "$t2_font1<i>$msg</i>$t2_font2";}
			if($dsn14 eq "" && $dsn15 eq ""){$msg = "$t2_font1$msg$t2_font2";}
		}

		#補足説明文の自動リンク。
		&auto_link;

		#[td]を形成。
		if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
		if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
		if($rls9 ne ""){$t_rls9 = " width=\"$rls9\"";}
		if($cmt7 ne ""){$t_cmt7 = " height=\"$cmt7\"";}
		if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
		if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
		if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}

		if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
		if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
		if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
		if($cmt7 ne "") {$t_cmt7  = " height=\"$cmt7\"";}
		if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
		if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
		if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

		#[font]を形成。
		if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
		if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

print<<"EOM";
      <tr>
       <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_rls9$t_cmt7$t_dsn1$t_dsn2>$cmt1$sub</td>
       <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_rls10$t_cmt7$t_dsn10$t_dsn11>$t3_font1
EOM

		#入力欄種類[住所]を表示。
		if($cmt2 eq "address"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       郵便番号<br>
       <input type="text" name="$cmt6$i$title" size="3" style="ime-mode:disabled" maxlength="3" value="">
       <input type="hidden" name="$cmt6$i$title" value="-">-
       <input type="text" name="$cmt6$i$title" size="4" style="ime-mode:disabled" maxlength="4" value=""><br>
       <input type="hidden" name="$cmt6$i$title" value=" ">
       都道府県<br>
       <select name="$cmt6$i$title">
       <option></option>
       <option value="北海道">北海道</option>
       <option value="青森県">青森県</option>
       <option value="岩手県">岩手県</option>
       <option value="宮城県">宮城県</option>
       <option value="秋田県">秋田県</option>
       <option value="山形県">山形県</option>
       <option value="福島県">福島県</option>
       <option value="茨城県">茨城県</option>
       <option value="栃木県">栃木県</option>
       <option value="群馬県">群馬県</option>
       <option value="埼玉県">埼玉県</option>
       <option value="千葉県">千葉県</option>
       <option value="東京都">東京都</option>
       <option value="神奈川県">神奈川県</option>
       <option value="山梨県">山梨県</option>
       <option value="静岡県">静岡県</option>
       <option value="長野県">長野県</option>
       <option value="新潟県">新潟県</option>
       <option value="富山県">富山県</option>
       <option value="石川県">石川県</option>
       <option value="福井県">福井県</option>
       <option value="岐阜県">岐阜県</option>
       <option value="愛知県">愛知県</option>
       <option value="三重県">三重県</option>
       <option value="滋賀県">滋賀県</option>
       <option value="京都府">京都府</option>
       <option value="大阪府">大阪府</option>
       <option value="兵庫県">兵庫県</option>
       <option value="奈良県">奈良県</option>
       <option value="和歌山県">和歌山県</option>
       <option value="鳥取県">鳥取県</option>
       <option value="島根県">島根県</option>
       <option value="岡山県">岡山県</option>
       <option value="広島県">広島県</option>
       <option value="山口県">山口県</option>
       <option value="徳島県">徳島県</option>
       <option value="香川県">香川県</option>
       <option value="愛媛県">愛媛県</option>
       <option value="高知県">高知県</option>
       <option value="福岡県">福岡県</option>
       <option value="佐賀県">佐賀県</option>
       <option value="長崎県">長崎県</option>
       <option value="熊本県">熊本県</option>
       <option value="大分県">大分県</option>
       <option value="宮崎県">宮崎県</option>
       <option value="鹿児島県">鹿児島県</option>
       <option value="沖縄県">沖縄県</option>
       </select><br>
       <input type="hidden" name="$cmt6$i$title" value=" ">
       市町村以下<br>
       <input type="text" name="$cmt6$i$title" size="60" maxlength="200" value="">
EOM

		}

		#入力欄種類[年月日タイプ（年号）]を表示。
		if($cmt2 eq "day1"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       <select name="$cmt6$i$title">
       <option value="平成">平成</option>
       <option value="昭和">昭和</option>
       <option value="大正">大正</option>
       <option value="明治">明治</option>
       </select>
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">年
       <input type="hidden" name="$cmt6$i$title" value="年">
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">月
       <input type="hidden" name="$cmt6$i$title" value="月">
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">日
       <input type="hidden" name="$cmt6$i$title" value="日">
EOM

		}

		#入力欄種類[年月日タイプ（西暦）]を表示。
		if($cmt2 eq "day2"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       西暦<input type="hidden" name="$cmt6$i$title" value="西暦">
       <input type="text" size="4" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="4" value="">年
       <input type="hidden" name="$cmt6$i$title" value="年">
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">月
       <input type="hidden" name="$cmt6$i$title" value="月">
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">日
       <input type="hidden" name="$cmt6$i$title" value="日">
EOM

		}

		#入力欄種類[テキストタイプ（一行）]を表示。
		if($cmt2 eq "text"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       <input type="text" name="$cmt6$i$title" size="$cmt3" maxlength="300" value="">
EOM

		}

		#入力欄種類[メールアドレスタイプ]を表示。
		if($cmt2 eq "mail"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       <input type="text" name="$cmt6$i$title" size="40" style="ime-mode:disabled" maxlength="200" value="">
EOM

		}

		#入力欄種類[テキストタイプ（複数行）]を表示。
		if($cmt2 eq "textarea"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       <textarea name="$cmt6$i$title" cols="$cmt3" rows="$cmt4"></textarea>
EOM

		}

		#入力欄種類[選択タイプ（リスト）]を表示。
		if($cmt2 eq "list"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

			@select = split(/<br>/,$cmt5);

print<<"EOM";
       <select name="$cmt6$i$title">
       <option></option>
EOM

			foreach $x(@select){

print<<"EOM";
       <option value="$x">$x</option>
EOM

			}

print<<"EOM";
       </select>
EOM

		}

		#入力欄種類[選択タイプ（ラジオボタン）]を表示。
		if($cmt2 eq "radio"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

			@select = split(/<br>/,$cmt5);

			$count = 0;

			foreach $x(@select){

				if($count == 0){

print<<"EOM";
       <input type="radio" name="$cmt6$i$title" value="$x" checked>$x<br>
EOM

				}else{

print<<"EOM";
       <input type="radio" name="$cmt6$i$title" value="$x">$x<br>
EOM

				}

				#カウントアップ。
				$count++;

			}
		}

		#入力欄種類[選択タイプ（チェックボックス）]を表示。
		if($cmt2 eq "checkbox"){

			#補足説明文を表示。
			if($msg ne ""){
				print"       $msg<br>\n";
			}

			@select = split(/<br>/,$cmt5);

			foreach $x(@select){

print<<"EOM";
       <input type="checkbox" name="$c5$i$title" value="$x<br>">$x<br>
EOM

			}
		}

print<<"EOM";
       $t3_font2</td>
      </tr>
EOM

		$n++;

		#記事が1000に達した場合はループを抜ける。
		if($n == 1000){
			last;
		}
	}

	#送信ボタンの表示。

print<<"EOM";
     </table>
     <br>
     <table border="0" cellpadding="1" cellspacing="1">
      <tr>
       <td><input type="submit" value="入力内容の確認"></td>
      </tr>
     </table>
     </form>
     <br>
EOM

	if($location eq "up" && $rls15 eq "on" && $rls16 ne ""){

		if($rls17 ne ""){
#				（クロスサイトスクリプト対策） 2009/09/07 SSLサイン表示用に修正
			$rls17 =~ s/<br>/\n/g;
			$rls17 =~ s/&#44;/\,/g;
			$rls17 =~ s/&lt;/</g;
			$rls17 =~ s/&gt;/>/g;
			$rls17 =~ s/&lt;br&gt;/\n/g;
			$rls17 =~ s/&quot;/"/g;

print<<"EOM";
     <table border="0" cellpadding="1" cellspacing="1">
      <tr>
       <td>
$rls17
       </td>
      </tr>
     </table>
     <br>
EOM

		}

print<<"EOM";
     <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
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

1;

