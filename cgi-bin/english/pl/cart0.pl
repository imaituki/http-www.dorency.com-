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
# cart_order0
# 選択商品一覧画面。
##################################################
sub cart_order0{

	#パラメータ情報を取得。
	&shop_hidden_set;

	#支払い方法はクレジットカードの場合には決済ページを表示。
	if($in{'cart'} eq "payment"){
		&payment;

	}elsif($in{'cart'} eq "payment_nicos"){
		&payment_nicos;

	}else{

		#数量が0の場合は「選択されている商品はありません」を表示。
		if($#shop == -1){

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td align="center" height="30"><font color="#FF0000"><strong>--- 選択されている商品はありません ---</strong></font></td>
       </tr>
       <tr>
        <td align="center">
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

		#数量が0以上の場合は選択商品を表示。
		}else{

			if($#errorMsg != -1){
				&cart_error;
			}else{

				#[table]を形成。
				if($cds6 ne ""){$t_cds6 = " bgcolor=\"$cds6\"";}
				if($cds2 ne ""){$t_cds2 = " border=\"$cds2\"";}
				if($cds2 eq ""){$t_cds2 = " border=\"0\"";}
				if($cds5 ne ""){$t_cds5 = " bordercolor=\"$cds5\"";}
				if($cds3 ne ""){$t_cds3 = " cellspacing=\"$cds3\"";}
				if($cds3 eq ""){$t_cds3 = " cellspacing=\"0\"";}
				if($cds4 ne ""){$t_cds4 = " cellpadding=\"$cds4\"";}
				if($cds4 eq ""){$t_cds4 = " cellpadding=\"0\"";}
				if($cds1 ne ""){$t_cds1 = " width=\"$cds1\"";}

				#[td]を形成。
				if($cds11 ne ""){$t_cds11 = " bgcolor=\"$cds11\"";}
				if($cds10 ne ""){$t_cds10 = " bordercolor=\"$cds10\"";}

				if($cds16 ne ""){$t_cds16 = " bgcolor=\"$cds16\"";}
				if($cds15 ne ""){$t_cds15 = " bordercolor=\"$cds15\"";}

				#[font]を形成。
				if($cds9 ne "")               {$t_cds9   = " size=\"$cds9\"";}
				if($cds8 ne "")               {$t_cds8   = " color=\"$cds8\"";}
				if($cds9 ne "" || $cds8 ne ""){$t1_font1 = "<font$t_cds9$t_cds8>";}
				if($cds9 ne "" || $cds8 ne ""){$t1_font2 = "</font>";}

				if($cds14 ne "")                {$t_cds14  = " size=\"$cds14\"";}
				if($cds13 ne "")                {$t_cds13  = " color=\"$cds13\"";}
				if($cds14 ne "" || $cds13 ne ""){$t2_font1 = "<font$t_cds14$t_cds13>";}
				if($cds14 ne "" || $cds13 ne ""){$t2_font2 = "</font>";}

				#表示項目を表示。

print<<"EOM";
      <div align="center">
EOM

	if($low50 eq "on"){

		my $new_width = $cds1 + 40;
print<<"EOM";
<input type="button" value="特定商取引の表\示" onclick="MM_openBrSpecificWindow('specific.cgi','specific','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$new_width,height=530',$new_width,530);return(false);"><br><br>
EOM
	}

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1選択されている商品は以下の通りです。$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1ブラウザの戻る機能\は使わないでください。$t2_font2</td>
       </tr>
      </table>
      <br>
      <form action="$script" method="post" style="margin-bottom:0" name="form">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1商品名$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1備考$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1単価（税込み）$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1数量$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1金額（税込み）$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1削除$t1_font2</td>
       </tr>
EOM

				#総合計金額初期化。
				$subtotal = "0";

				#クッキーを精査。
				foreach $shop(@shop){

					#商品情報を分割。
					local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

					if(-e "$rootdir/page_design/story/comment/$t_category$t_page.dat"){
						open(IN,"$rootdir/page_design/story/comment/$t_category$t_page.dat");
						flock(IN,1);		#ファイルを読み出しロック。
						@shop_storycomment = <IN>;
						flock(IN,8);		# ロック解除。
						close(IN);
					}

					#記事内容情報の精査。
					foreach (@shop_storycomment){

						#記事内容情報の分割。
						local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

						$id = sprintf("%010d",$no);

						if($id eq $t_id){

							#表示変数の初期化。
							local($edit_code,$item,$unit_price,$type,$other1,$other2);

							#IDを代入。
							$edit_code = $t_code;

							#商品名を代入。
							$item = $title;

							#金額の置換。（クロスサイトスクリプティング対応）
							$cmt2 =~ s/：/:/g;
							$cmt2 =~ s/\&\#44\;//g;
							$cmt2 =~ s/、//g;
							$cmt2 =~ s/，//g;

							#金額の分割。
							@PRICE = split(/<br>/,$cmt2);

							#商品価格のIDを初期化。
							$o0 = 1;

							foreach $x(@PRICE){

								if($o0 == $t_unit_price){

									($unit_price,$type) = split(/:/,$x);
									$unit_price         =~ s/０/0/g;
									$unit_price         =~ s/１/1/g;
									$unit_price         =~ s/２/2/g;
									$unit_price         =~ s/３/3/g;
									$unit_price         =~ s/４/4/g;
									$unit_price         =~ s/５/5/g;
									$unit_price         =~ s/６/6/g;
									$unit_price         =~ s/７/7/g;
									$unit_price         =~ s/８/8/g;
									$unit_price         =~ s/９/9/g;

								}

								#商品価格のIDをカウントアップ。
								$o0++;

							}

							#商品詳細情報の分割。
							@OTHER1 = split(/<br>/,$cmt3);

							#項目1のIDを初期化。
							$o1 = 1;

							foreach $x(@OTHER1){

								if($o1 == $t_other1){
									$other1 = $x;
								}

								#項目1のIDをカウントアップ。
								$o1++;

							}

							#商品詳細情報の分割。
							@OTHER2 = split(/<br>/,$cmt4);

							#項目2のIDを初期化。
							$o2 = 1;

							foreach $x(@OTHER2){

								if($o2 == $t_other2){
									$other2 = $x;
								}

								#項目2のIDをカウントアップ。
								$o2++;

							}

							#商品価格を置換。
							$unit_price =~ s/,//g;

							#商品数×商品単価＝金額。
							$price = $t_unit * $unit_price;

							#商品単価２を設定。
							$unit_price2 = $unit_price;

							#商品単価２をカンマ付け。
							$unit_price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

							#金額２を設定。
							$price2 = $price;

							#金額２をカンマ付け。
							$price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

							#[削除ボタン][商品名]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$item$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="left" valign="middle">$t2_font1
EOM

							#[備考]を表示。
							if($type ne "")  {print"        $type<br>\n";}
							if($other1 ne ""){print"        $other1<br>\n";}
							if($other2 ne ""){print"        $other2<br>\n";}
							if($type eq "" && $other1 eq "" && $other2 eq ""){
								print"        &nbsp;\n";
							}

print<<"EOM";
        $t2_font2</td>
EOM

							#[数変更][金額（税込み）]を表示。

print<<"EOM";
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" nowrap>$t2_font1$unit_price2円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" nowrap>
EOM

							my $data = $t_unit;
							my $temp = $in{"$unit_price\,$type\,$other1\,$other2"};

							if($temp != ""){

								if($temp < $t_unit){

									$data = $temp;

								}

							}

print<<"EOM";
        <input type="text" name="edit$edit_code" size="2" maxlength="10" style="ime-mode:disabled" value="$data">
        </td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" nowrap>$t2_font1$price2円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" nowrap>
        <input type="checkbox" name="clear" value="edit$edit_code">
        </td>
       </tr>
EOM

							#総合計金額を計算。
							$subtotal = $subtotal + $price;

						}
					}
				}

				#総合計金額２を設定。
				$subtotal2 = $subtotal;

				#総合計金額２をカンマ付け。
				$subtotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#[合計金額（税込み）]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">&nbsp;</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">&nbsp;</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="right" valign="middle">&nbsp;</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle"><input type="submit" name="submit" value="変更"></td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="right" valign="middle">&nbsp;</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle"><input type="submit" name="submit" value="削除"></td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="right" valign="middle" colspan="6"><input type="button" name="checkButton" value="すべて選択" onclick="check();"></td>
       </tr>
      </table>
<script type="text/javascript">
<!--

var checkflg = 0;

function check() {

	for (var i = 0; i < document.form.elements.length; i++ ) {

		if (document.form.elements[i].type == "checkbox") {

			if(checkflg == 0){

				document.form.elements[i].checked = true;

			}else if(checkflg == 1){

				document.form.elements[i].checked = false;

			}

		}

	}

	if(checkflg == 0){

		checkflg = 1;
		document.form.checkButton.value = "すべて解除";

	}else if(checkflg == 1){

		checkflg = 0;
		document.form.checkButton.value = "すべて選択";

	}
}
//-->
</script>
      </form>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1合計金額（税込み）$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$subtotal2円$t2_font2</td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="submit" value="商品一覧に戻る" style="width:150px">
         </form>
        </td>
EOM

				if($low1 ne "" ||  $low2 ne "" || $low3 ne ""
					|| $low4 ne "" || $low5 ne "" || $low6 ne "" || $crt24 eq "on" 
					|| $low7 ne "" || $low8 ne "" || $low9 ne "" || $low10 ne "" 
					|| $low11 ne "" || $low12 ne "" || $low13 ne "" || $low14 ne "" || $low15 ne ""){

					if($location eq "up" && $crt42 eq "on" && $crt43 ne ""){

print<<"EOM";
        <td>
         <form action="$crt43\/$cgi_host\/$site_folder\/siteup.cgi" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="order1">
         <input type="hidden" name="total" value="$subtotal">
$hidden
         <input type="submit" name="submit" value="注文者入力画面に進む" style="width:150px">
         </form>
        </td>

EOM

					}else{

print<<"EOM";
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="order1">
         <input type="hidden" name="total" value="$subtotal">
$hidden
         <input type="submit" name="submit" value="注文者入力画面に進む" style="width:150px">
         </form>
        </td>
EOM

					}

				}

print<<"EOM";
       </tr>
      </table>
EOM


#SSL決済の告知（サイン無し？）
				if($location eq "up" && $crt42 eq "on" && $crt43 ne ""){

print<<"EOM";
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="left" valign="middle">
        $t1_font1
        <span style="font-size:10pt;font-weight:bold;">
・当サイトは、お客様にご安心してショッピングをして頂くため、デジタルIDを用いた<br>
&nbsp;&nbsp;SSL暗号化によってインターネット上での安全な通信手段を確保しております。<br>
・(お願い)お買い物途中で回線を切断したりブラウザを閉じたりいないでください。<br>
&nbsp;&nbsp;お買い物内容がリセットされる場合がございます。
        </span>
        $t1_font2
        </td>
       </tr>
      </table>
EOM

				}

print<<"EOM";
      <br>
EOM

				#通信販売法を表示。
				&sales;

				#送料を表示。
				&carriage;

				#連絡事項を表示。
				&reports;

print<<"EOM";
      </div>
EOM

			}
		}
	}
}
##################################################
# payment
# 決済ページ。
##################################################
sub payment{

	#注文日から決済手続き完了までの有効日数×24時間。
	$beforday = $crt31 * 24;

	#タイムゾーンを日本時間へ。
	$ENV{'TZ'} = "JST-9";

	#有効日をセット。
	$times = time - $beforday * 3600;

	#秒、分、時、日、月、年、曜日、ダミー、ダミー
	($sec,$min,$hour,$mday,$mon,$year,$wday,$dummy,$dummy) = localtime($times);

	#曜日配列の作成。
	@week = ('日','月','火','水','木','金','土');

	#日時のフォーマット。
	$date = sprintf("%04d\%02d\%02d",$year + 1900,$mon + 1,$mday);

	#有効日が範囲内。
	if($date < $in{'date'} ){

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" align="center" valign="middle"><strong>ご注文ありがとうございました。</strong></td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><font size="-1">下記の「ZEUSクレジット決済ページへ」をクリックして,<br>ZEUSクレジット決済システムにて決済手続きを行ってください。</font></td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
         <form action="./zeus.cgi" method="post" style="margin-bottom:0" name="settlement">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="cart" value="payment">
         <input type="hidden" name="money" value="$in{'money'}">
         <input type="hidden" name="usrmail" value="$in{'usrmail'}">
         <input type="submit" name="go" value="ZEUSクレジット決済ページへ" style="display:none">
         </form>
         <noscript><strong>[決済を行うためにはJavaScriptを利用\可\能\にしてください。]</strong></noscript>
        </td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><a href="http://www.cardservice.co.jp" target="_blank"><img src="$imgdir/zeus.gif" border="0" alt="ZEUSクレジット決済システム"></a></td>
EOM

		#クレジット利用可能なカード種類の判別。
		#visa
		if($crt26 eq "on"){print"        <td><img src=\"$imgdir/visa.gif\" border=\"0\"></td>\n";}
		#master
		if($crt27 eq "on"){print"        <td><img src=\"$imgdir/master.gif\" border=\"0\"></td>\n";}
		#amex
		if($crt28 eq "on"){print"        <td><img src=\"$imgdir/amex.gif\" border=\"0\"></td>\n";}
		#jcb
		if($crt29 eq "on"){print"        <td><img src=\"$imgdir/jcb.gif\" border=\"0\"></td>\n";}
		#diners
		if($crt30 eq "on"){print"        <td><img src=\"$imgdir/diners.gif\" border=\"0\"></td>\n";}

print<<"EOM";
       </tr>
      </table>
      <br>
      </div>
EOM

	#有効日が範囲外。
	}else{

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><strong>決済手続きが行えません。</strong></td>
       </tr>
       <tr>
        <td><font size="-1">決済手続き完了までの有効日を過ぎているために無効になっております。</font></td>
       </tr>
      </table>
      </div>
EOM

	}
}

##################################################
# payment
# 決済ページ。
##################################################
sub payment_nicos{

print<<"EOM";
      <div align="center">
      <form name="page_end">
      <input type="hidden" name="address_go" value="same">
      <input type="hidden" name="address_save_go" value="">
      </form>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" align="center" valign="middle"><strong>ご注文ありがとうございました。</strong></td>
       </tr>
      </table>
      <br>
      </div>
EOM


}

1;
