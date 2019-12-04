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
# cart1
# 商品情報。
##################################################
sub cart1{

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
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1商品名$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1備考$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1単価（税込み）$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1数量$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1金額（税込み）$t1_font2</td>
       </tr>
EOM

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
				local($unit_price,$type,$other1,$other2);

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

				#商品単価を置換。
				$unit_price =~ s/,//g;

				#商品数×商品単価＝金額。
				$price = $t_unit * $unit_price;

				#商品単価２を設定。
				$unit_price2 = $unit_price;

				#商品単価２を置換。
				$unit_price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#金額２を設定。
				$price2 = $price;

				#金額２を置換。
				$price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#[商品名]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$title$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1
EOM

				#[備考]を表示。
				if($type ne "")  {print"        $type<br>\n";}
				if($other1 ne ""){print"        $other1<br>\n";}
				if($other2 ne ""){print"        $other2<br>\n";}
				if($type eq "" && $other1 eq "" && $other2 eq ""){
					print"        &nbsp;\n";
				}

				#[単価（税込み）][数量][金額（税込み）]を表示。

print<<"EOM";
        $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$unit_price2円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$t_unit$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$price2円$t2_font2</td>
       </tr>
EOM
			}
		}
	}

print<<"EOM";
      </table>
      <br>
EOM

}
##################################################
# order_edit
# 配送先情報編集画面。
##################################################
sub order_edit{

	#パラメータ情報を取得。
	&shop_hidden_set;
	&user_hidden_set;
	&delivery_hidden_set;

	#パラメータを取得。
	while(($x,$y) = each %in){

		#パラメータ名がitemの場合。
		if($x =~ /^item/){

			$item_hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

		}
	}

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

	my $count1 = 0;
	my $count2 = 0;
	my $data   = "";

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
      <form action="$script" name="user_data" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="message" value="$in{'message'}">
      <input type="hidden" name="type" value="order_edit">
$hidden
EOM

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

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1商品名$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1備考$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1単価（税込み）$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1数量$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1金額（税込み）$t1_font2</td>
       </tr>
EOM

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

				#[商品名]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$item$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1
EOM

				#[備考]を表示。
				if($type ne "")  {print"        $type<br>\n";}
				if($other1 ne ""){print"        $other1<br>\n";}
				if($other2 ne ""){print"        $other2<br>\n";}
				if($type eq "" && $other1 eq "" && $other2 eq ""){
					print"        &nbsp;\n";
				}
				if($cri1 eq "1" || $cri1 eq "2"){
					$kana = "($cart_user2 $cart_user3)";
				}

				#[単価（税込み）][数量][金額（税込み）]を表示。

				$data .= "data[$count1] = $t_unit\;\n";

print<<"EOM";
        $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$unit_price2円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$t_unit$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$price2円$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" colspan="5">
         <table border="0" align="left" width="100%">
          <tr>
           <td align="left" width="50%">$t2_font1残数：<span id="view$count1">$t_unit</span>$t2_font2</td>
EOM

				if($in{'submit'} eq "入力画面に戻る"){

print<<"EOM";
           <td align="right" width="50%"><input name="review" type="button" id="review" value="振り分け数の初期化" onClick="restart('$count1')"   style="width:150px;"></td>
EOM

				}else{

print<<"EOM";
           <td align="right" width="50%"><input name="review" type="button" id="review" value="振り分け数を戻す"   onClick="remake_back($count1)" style="width:150px;"><input name="review" type="button" id="review" value="振り分け数の初期化" onClick="restart('$count1')"   style="width:150px;"></td>
EOM

				}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

				my $d_count = 0;

				#配送先の精査。
				foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

					$d_count++;

				}

				$count2 = 0;

				#配送先の精査。
				foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

					#配送先情報を分割。（コード、姓、名、姓（ふりがな）、名（ふりがな）、郵便番号、郵便番号、都道府県、郡市区町村、それ以降の住所、電話番号、電話番号、電話番号）
					local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" colspan="5">
         <table border="0" align="left">
          <tr>

           <td align="left">$t2_font1数量$t2_font2
           <input type="hidden" name="back$edit_code\D$code" id="back$count1$count2" value="$in{"item$edit_code\D$code"}">
           <select name="item$edit_code\D$code" id="$count1$count2" onChange="remake('$count1',this.id)" style="width:50px;">
           </select>
           </td>

           <td align="left">$t2_font1
           [名前]$name1 $name2($kana1 $kana2)様<br>
           [住所]〒$address1 － $address2 $address3 $address4 $address5<br>
           [電話]$tel1 － $tel2 － $tel3<br>
EOM

					#送料計算対象外売り上げ最低金額が0でない場合。
					if($crt5 ne "0"){

						#送料の計算。
						&send;

						#送料２を設定。
						$send2 = $send;

						#送料２をカンマ付け。
						$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

print<<"EOM";
           [送料]$send2円
EOM

					}

print<<"EOM";
           $t2_font2</td>
          </tr>
         </table>
        </td>
       </tr>
EOM

					$count2++;

				}

				$count1++;

print<<"EOM";
      </table>
      <br>
EOM

			}
		}
	}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="order_edit" value="更新する" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
<script type="text/javascript">
<!--
//////////////////////////////////////////////////
// 初期設定
//////////////////////////////////////////////////
var count1 = $count1;														// 商品種類数
var count2 = $count2;														// 配送先数
var data   = new Array();													// 商品種類別購入数
$data
//////////////////////////////////////////////////
// idデータ生成
// 直前に選んだvalueデータ生成
//////////////////////////////////////////////////
var select_list = new Array(count1);
var dammy_list  = new Array(count1);
for (var i0 = 0 ; i0 < count1 ; i0++) {

	select_list[i0] = new Array(count2);
	dammy_list[i0]  = new Array(count2);

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		select_list[i0][i1] = i0 + '' + i1;
		dammy_list[i0][i1]  = '';

	}

}
//////////////////////////////////////////////////
// optionデータ生成
//////////////////////////////////////////////////
var value_list = new Array();
for (var i0 = 0 ; i0 < count1 ; i0++) {

	value_list[i0] = new Array(data[i0] + 1);

	for (var i1 = 0 ; i1 < data[i0] + 1 ; i1++) {

		if (i1 == 0) {

			value_list[i0][i1] = '';

		} else {

			value_list[i0][i1] = i1;

		}

	}

}
//////////////////////////////////////////////////
// 監視データ生成
// （プルダウンごとに2次元配列で作成）
//////////////////////////////////////////////////
var watch_list = new Array();
for (var i0 = 0 ; i0 < count1 ; i0++) {

	watch_list[i0] = new Array(count2);

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		watch_list[i0][i1] = new Array(data[i0] + 1);

		for (var i2 = 0 ; i2 < data[i0] + 1 ; i2 ++) {

			if (i2  == 0) {

				watch_list[i0][i1][i2]  = "";

			} else {

				watch_list[i0][i1][i2]  = i2;

			}

		}

	}

}
//////////////////////////////////////////////////
// 初期表示
// iniset()
//////////////////////////////////////////////////
function iniset() {
EOM

	if($in{'submit'} eq "商品配送設定画面に進む"){
print<<"EOM";

	for (var i0 = 0 ; i0 < count1 ; i0++) {

		for (var i1 = 0 ; i1 < count2 ; i1++) {

			set_main_select(document.getElementById(select_list[i0][i1]),i0,i1);

		}

	}

EOM

	}else{


print<<"EOM";

	for (var i0 = 0 ; i0 < count1 ; i0++) {

		for (var i1 = 0 ; i1 < count2 ; i1++) {

			set_main_select(document.getElementById(select_list[i0][i1]),i0,i1);

		}

	}

EOM
	}

print<<"EOM";

}
//////////////////////////////////////////////////
// プルダウン描画のメイン関数
// 監視配列周りはi0で照合し、生成はcntを使うことに注意！
// set_main(obj_pass,id1,id2)
//////////////////////////////////////////////////
function set_main_select(obj,id1,id2) {

	var cnt1 = 0;

	for (var i0 = 0 ; i0 < watch_list[id1][id2].length ; i0++) {

		if (watch_list[id1][id2][i0] != "" || i0 == 0) {								// 監視配列の値がnullではないか、または初期値の場合

			addo = document.createElement('option');								// option要素を生成

			if (obj.childNodes[cnt1] != undefined) {

				obj.removeChild(obj.childNodes[cnt1]);								// option要素を親要素（select）へ追加する前にゴミを消去

			}

			obj.appendChild(addo);											// option要素を親要素（select）へ追加

			obj.childNodes[cnt1].setAttribute('value',watch_list[id1][id2][i0]);					// option要素にvalueを設定

			addo_txt = document.createTextNode(value_list[id1][i0]);						// option要素のtextを生成

			if (obj.childNodes[cnt1].firstChild != undefined) {
				obj.childNodes[cnt1].removeChild(obj.childNodes[cnt1].firstChild);				// option要素にtextを設定する前にゴミを消去
			}

			obj.childNodes[cnt1].appendChild(addo_txt);								// option要素にtextを設定

			cnt1++;													// リストの長さを捕捉

		}

	}

	obj.length = cnt1;													// 表示リストの長さ調整

}
//////////////////////////////////////////////////
// 数値選択
// remake(id1,id2)
//////////////////////////////////////////////////
function remake(id1,id2) {

	var crnum  = document.getElementById(id2).childNodes[document.getElementById(id2).selectedIndex].getAttribute('value');

	var oldnum = dammy_list[id1][this_id_num(id2)];

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		for (var i2 = 0 ; i2 < data[id1] + 1 ; i2 ++) {

			if (oldnum != "") {

				watch_list[id1][i1][oldnum]  = oldnum;

			}

		}

	}

	var max_data1 = data[id1];

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		var select_data = document.getElementById(id1 + '' + i1).childNodes[document.getElementById(id1 + '' + i1).selectedIndex].getAttribute('value');

		max_data1       = max_data1 - select_data;

	}

	document.getElementById('view' + id1).innerHTML = max_data1;

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		if (select_list[id1][i1] != id2) {

			if (dammy_list[id1][i1] == "") {

				set_main_select_custom(document.getElementById(select_list[id1][i1]),id1,i1,max_data1);		// nullが選ばれていた場合、リストを整形

			} else {

				var max_data2 = 0;

				var max_data3 = 0;

				var listlng = document.getElementById(select_list[id1][i1]).length;				// 選択しなおす（過去ログと一致するvalueをプルダウンから探して選択状態にする）

				for (var i2 = 0 ; i2 < listlng ; i2++) {

					if(document.getElementById(select_list[id1][i1]).childNodes[i2].selected){

						max_data2 = document.getElementById(select_list[id1][i1]).childNodes[i2].getAttribute('value');

					}

				}

				if (max_data1 != 0) {

					max_data3 = parseInt(max_data2) + parseInt(max_data1);

				} else {

					max_data3 = parseInt(max_data2);

				}

				set_main_select_custom(document.getElementById(select_list[id1][i1]),id1,i1,max_data3);		// 選択したものがある場合、リストを整形

				for (var i2 = 0 ; i2 < listlng ; i2++) {

					if (dammy_list[id1][i1] == document.getElementById(select_list[id1][i1]).childNodes[i2].getAttribute('value')) {

						document.getElementById(select_list[id1][i1]).childNodes[i2].selected = true;	// 過去ログと同じvalueを発見した場合、選択状態にする
						break;

					}

				}

			}

		}

	}

	dammy_list[id1][this_id_num(id2)] = crnum;										// ログデータを更新

}
//////////////////////////////////////////////////
// プルダウン描画のメイン関数
// 監視配列周りはi0で照合し、生成はcntを使うことに注意！
// set_main(obj_pass,id1,id2)
//////////////////////////////////////////////////
function set_main_select_custom(obj,id1,id2,max) {

	var cnt2 = 0;

	for (var i0 = 0 ; i0 <= max ; i0++) {

		if (watch_list[id1][id2][i0] != "" || i0 == 0) {								// 監視配列の値がnullではないか、または初期値の場合

			addo = document.createElement('option');								// option要素を生成

			if (obj.childNodes[cnt2] != undefined) {

				obj.removeChild(obj.childNodes[cnt2]);								// option要素を親要素（select）へ追加する前にゴミを消去

			}

			obj.appendChild(addo);											// option要素を親要素（select）へ追加

			obj.childNodes[cnt2].setAttribute('value',watch_list[id1][id2][i0]);					// option要素にvalueを設定

			addo_txt = document.createTextNode(value_list[id1][i0]);						// option要素のtextを生成

			if (obj.childNodes[cnt2].firstChild != undefined) {
				obj.childNodes[cnt2].removeChild(obj.childNodes[cnt2].firstChild);				// option要素にtextを設定する前にゴミを消去
			}

			obj.childNodes[cnt2].appendChild(addo_txt);								// option要素にtextを設定

			cnt2++;													// リストの長さを捕捉

		}

	}

	obj.length = cnt2;													// 表示リストの長さ調整

}
//////////////////////////////////////////////////
// 数値選択
// remake_back()
//////////////////////////////////////////////////
function remake_back(id1) {

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		var crnum  = document.getElementById('back' + id1 + i1).value;

		var listlng = document.getElementById(select_list[id1][i1]).length;						// 選択しなおす（過去ログと一致するvalueをプルダウンから探して選択状態にする）

		if (crnum != '' && listlng != 0) {

			document.getElementById(select_list[id1][i1]).childNodes[crnum].selected = true;

			remake(id1,id1 + '' + i1);

		}

	}

}
//////////////////////////////////////////////////
// やり直す
// restart(id)
//////////////////////////////////////////////////
function restart(id) {

	document.getElementById('view' + id).innerHTML = data[id];

	watch_list[id] = new Array(count2);

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		watch_list[id][i1] = new Array(data[id] + 1);

		for (var i2 = 0 ; i2 < data[id] + 1 ; i2 ++) {

			if (i2  == 0) {

				watch_list[id][i1][i2]  = "";

			} else {

				watch_list[id][i1][i2]  = i2;

			}

		}

		document.getElementById(select_list[id][i1]).childNodes[0].selected = true;					// フォーカスを初期化
		dammy_list[id][i1]                                                  = "";					// ログを初期化
		set_main_select(document.getElementById(select_list[id][i1]),id,i1);

	}

}
//////////////////////////////////////////////////
// idから何番目の設問（添え字）かをマスターを照合して割り出す関数
// this_id_num(str)
//////////////////////////////////////////////////
function this_id_num(str) {

	for (var i0 = 0 ; i0 < count1 ; i0++) {

		for (var i1 = 0 ; i1 < count2 ; i1++) {

			if (select_list[i0][i1] == str) {

				return i1;
				break;

			}

		}

	}

}
//////////////////////////////////////////////////
// オンロードで関数呼び出し
//////////////////////////////////////////////////
window.onload = iniset;
//////////////////////////////////////////////////
//-->
</script>
      </div>
EOM

}
##################################################
# user_edit
# 注文者情報編集画面。
##################################################
sub user_edit{

	#パラメータ情報を取得。
	&shop_hidden_set;

	if($in{'address'} eq "other"){

		#パラメータ情報を取得。
		&delivery_hidden_set;

		#パラメータを取得。
		while(($x,$y) = each %in){

			#パラメータ名がitemの場合。
			if($x =~ /^item/){

				$hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

			}
		}
	}

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

print<<"EOM";
      <div align="center">
EOM

	#商品情報を表示。
	&cart1;

	#配送先の判定。
	if($cart_user6 eq "北海道")  {$ckeck6_1  = " selected";}
	if($cart_user6 eq "青森県")  {$ckeck6_2  = " selected";}
	if($cart_user6 eq "秋田県")  {$ckeck6_3  = " selected";}
	if($cart_user6 eq "岩手県")  {$ckeck6_4  = " selected";}
	if($cart_user6 eq "宮城県")  {$ckeck6_5  = " selected";}
	if($cart_user6 eq "山形県")  {$ckeck6_6  = " selected";}
	if($cart_user6 eq "福島県")  {$ckeck6_6  = " selected";}
	if($cart_user6 eq "新潟県")  {$ckeck6_8  = " selected";}
	if($cart_user6 eq "長野県")  {$ckeck6_9  = " selected";}
	if($cart_user6 eq "山梨県")  {$ckeck6_10 = " selected";}
	if($cart_user6 eq "栃木県")  {$ckeck6_11 = " selected";}
	if($cart_user6 eq "群馬県")  {$ckeck6_12 = " selected";}
	if($cart_user6 eq "茨城県")  {$ckeck6_13 = " selected";}
	if($cart_user6 eq "埼玉県")  {$ckeck6_14 = " selected";}
	if($cart_user6 eq "千葉県")  {$ckeck6_15 = " selected";}
	if($cart_user6 eq "東京都")  {$ckeck6_16 = " selected";}
	if($cart_user6 eq "神奈川県"){$ckeck6_17 = " selected";}
	if($cart_user6 eq "富山県")  {$ckeck6_18 = " selected";}
	if($cart_user6 eq "石川県")  {$ckeck6_19 = " selected";}
	if($cart_user6 eq "福井県")  {$ckeck6_20 = " selected";}
	if($cart_user6 eq "岐阜県")  {$ckeck6_21 = " selected";}
	if($cart_user6 eq "静岡県")  {$ckeck6_22 = " selected";}
	if($cart_user6 eq "愛知県")  {$ckeck6_23 = " selected";}
	if($cart_user6 eq "三重県")  {$ckeck6_24 = " selected";}
	if($cart_user6 eq "滋賀県")  {$ckeck6_25 = " selected";}
	if($cart_user6 eq "京都府")  {$ckeck6_26 = " selected";}
	if($cart_user6 eq "大阪府")  {$ckeck6_27 = " selected";}
	if($cart_user6 eq "兵庫県")  {$ckeck6_28 = " selected";}
	if($cart_user6 eq "奈良県")  {$ckeck6_29 = " selected";}
	if($cart_user6 eq "和歌山県"){$ckeck6_30 = " selected";}
	if($cart_user6 eq "鳥取県")  {$ckeck6_31 = " selected";}
	if($cart_user6 eq "島根県")  {$ckeck6_32 = " selected";}
	if($cart_user6 eq "岡山県")  {$ckeck6_33 = " selected";}
	if($cart_user6 eq "広島県")  {$ckeck6_34 = " selected";}
	if($cart_user6 eq "山口県")  {$ckeck6_35 = " selected";}
	if($cart_user6 eq "徳島県")  {$ckeck6_36 = " selected";}
	if($cart_user6 eq "香川県")  {$ckeck6_37 = " selected";}
	if($cart_user6 eq "愛媛県")  {$ckeck6_38 = " selected";}
	if($cart_user6 eq "高知県")  {$ckeck6_39 = " selected";}
	if($cart_user6 eq "福岡県")  {$ckeck6_40 = " selected";}
	if($cart_user6 eq "佐賀県")  {$ckeck6_41 = " selected";}
	if($cart_user6 eq "長崎県")  {$ckeck6_42 = " selected";}
	if($cart_user6 eq "熊本県")  {$ckeck6_43 = " selected";}
	if($cart_user6 eq "大分県")  {$ckeck6_44 = " selected";}
	if($cart_user6 eq "宮崎県")  {$ckeck6_45 = " selected";}
	if($cart_user6 eq "鹿児島県"){$ckeck6_46 = " selected";}
	if($cart_user6 eq "沖縄県")  {$ckeck6_47 = " selected";}
	if($cart_user6 eq "その他")  {$ckeck6_48 = " selected";}

	#ユーザデータ性別判定。
	if($cart_user17 eq "")    {$select17_1 = " selected";}
	if($cart_user17 eq "男"){$select17_2 = " selected";}
	if($cart_user17 eq "女"){$select17_3 = " selected";}

	#自由入力項目の改行置換。
	$cart_user21 =~ s/&lt;br&gt;/\n/g;

	#情報の保存判定。
	if($cart_user22 eq "on"){$ckeck22 = "checked";}

print<<"EOM";
      <form action="$script" name="user_data" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="message" value="$in{'message'}">
      <input type="hidden" name="type" value="user_edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1お客様情報を入力してください。$t1_font2</td>
       </tr>
      </table>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
EOM

	if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1お名前(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1姓<input type="text" name="user_data" value="$cart_user0" size="10" maxlength="10"> 名<input type="text" name="user_data" value="$cart_user1" size="10" maxlength="10"><br>(例)山田 太郎$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1お名前(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1姓<input type="text" name="user_data" value="$cart_user0" size="10" maxlength="100"> 名<input type="text" name="user_data" value="$cart_user1" size="10" maxlength="100"><br>(例)山田 太郎$t2_font2</td>
       </tr>
EOM

	}

	if($cri1 eq "1"){

		if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1フリガナ(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1姓<input type="text" name="user_data" value="$cart_user2" size="10" maxlength="7"> 名<input type="text" name="user_data" value="$cart_user3" size="10" maxlength="8"><br>(例)ヤマダ タロウ$t2_font2</td>
       </tr>
EOM

		}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1フリガナ(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1姓<input type="text" name="user_data" value="$cart_user2" size="10" maxlength="100"> 名<input type="text" name="user_data" value="$cart_user3" size="10" maxlength="100"><br>(例)ヤマダ タロウ$t2_font2</td>
       </tr>
EOM

		}

	}elsif($cri1 eq "2"){

		if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1フリガナ$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1姓<input type="text" name="user_data" value="$cart_user2" size="10" maxlength="7"> 名<input type="text" name="user_data" value="$cart_user3" size="10" maxlength="8"><br>(例)ヤマダ タロウ$t2_font2</td>
       </tr>
EOM

		}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1フリガナ$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1姓<input type="text" name="user_data" value="$cart_user2" size="10" maxlength="100"> 名<input type="text" name="user_data" value="$cart_user3" size="10" maxlength="100"><br>(例)ヤマダ タロウ$t2_font2</td>
       </tr>
EOM

		}

	}else{

print<<"EOM";
       <input type="hidden" name="user_data" value="$cart_user2">
       <input type="hidden" name="user_data" value="$cart_user3">
EOM

	}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1郵便番号(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user4" size="3" style="ime-mode:disabled" maxlength="3"> － <input type="text" name="user_data" value="$cart_user5" size="4" style="ime-mode:disabled" maxlength="4">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1都道府県(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <select name="user_data">
        <option></option>
        <option value="北海道"$ckeck6_1>北海道</option>
        <option value="青森県"$ckeck6_2>青森県－北東北</option>
        <option value="秋田県"$ckeck6_3>秋田県－北東北</option>
        <option value="岩手県"$ckeck6_4>岩手県－北東北</option>
        <option value="宮城県"$ckeck6_5>宮城県－南東北</option>
        <option value="山形県"$ckeck6_6>山形県－南東北</option>
        <option value="福島県"$ckeck6_7>福島県－南東北</option>
        <option value="新潟県"$ckeck6_8>新潟県－信越</option>
        <option value="長野県"$ckeck6_9>長野県－信越</option>
        <option value="山梨県"$ckeck6_10>山梨県－信越</option>
        <option value="栃木県"$ckeck6_11>栃木県－北関東</option>
        <option value="群馬県"$ckeck6_12>群馬県－北関東</option>
        <option value="茨城県"$ckeck6_13>茨城県－北関東</option>
        <option value="埼玉県"$ckeck6_14>埼玉県－南関東</option>
        <option value="千葉県"$ckeck6_15>千葉県－南関東</option>
        <option value="東京都"$ckeck6_16>東京都－南関東</option>
        <option value="神奈川県"$ckeck6_17>神奈川県－南関東</option>
        <option value="富山県"$ckeck6_18>富山県－北陸</option>
        <option value="石川県"$ckeck6_19>石川県－北陸</option>
        <option value="福井県"$ckeck6_20>福井県－北陸</option>
        <option value="岐阜県"$ckeck6_21>岐阜県－中部</option>
        <option value="静岡県"$ckeck6_22>静岡県－中部</option>
        <option value="愛知県"$ckeck6_23>愛知県－中部</option>
        <option value="三重県"$ckeck6_24>三重県－中部</option>
        <option value="滋賀県"$ckeck6_25>滋賀県－関西</option>
        <option value="京都府"$ckeck6_26>京都府－関西</option>
        <option value="大阪府"$ckeck6_27>大阪府－関西</option>
        <option value="兵庫県"$ckeck6_28>兵庫県－関西</option>
        <option value="奈良県"$ckeck6_29>奈良県－関西</option>
        <option value="和歌山県"$ckeck6_30>和歌山県－関西</option>
        <option value="鳥取県"$ckeck6_31>鳥取県－中国</option>
        <option value="島根県"$ckeck6_32>島根県－中国</option>
        <option value="岡山県"$ckeck6_33>岡山県－中国</option>
        <option value="広島県"$ckeck6_34>広島県－中国</option>
        <option value="山口県"$ckeck6_35>山口県－中国</option>
        <option value="徳島県"$ckeck6_36>徳島県－四国</option>
        <option value="香川県"$ckeck6_37>香川県－四国</option>
        <option value="愛媛県"$ckeck6_38>愛媛県－四国</option>
        <option value="高知県"$ckeck6_39>高知県－四国</option>
        <option value="福岡県"$ckeck6_40>福岡県－九州</option>
        <option value="佐賀県"$ckeck6_41>佐賀県－九州</option>
        <option value="長崎県"$ckeck6_42>長崎県－九州</option>
        <option value="熊本県"$ckeck6_43>熊本県－九州</option>
        <option value="大分県"$ckeck6_44>大分県－九州</option>
        <option value="宮崎県"$ckeck6_45>宮崎県－九州</option>
        <option value="鹿児島県"$ckeck6_46>鹿児島県－九州</option>
        <option value="沖縄県"$ckeck6_47>その他－沖縄県</option>
        <option value="その他"$ckeck6_48>その他－その他</option>
        </select>
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1郡市区町村(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user7" size="50" maxlength="200">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1それ以降の住所(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <input type="text" name="user_data" value="$cart_user8" size="50" maxlength="200"><br>
        (例）渋谷1-1-1<br>
        (例）渋谷1-1-1 **ビル29F 株式会社**** **部<br>
        ※マンションアパート名は必ず入力してください。<br>
        ※住所が勤務先の場合は最後に「会社名・部署名」なども入力してください。
        $t2_font2</td>
       </tr>
EOM

	if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1電話番号(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user9" size="4" style="ime-mode:disabled" maxlength="4"> － <input type="text" name="user_data" value="$cart_user10" size="4" style="ime-mode:disabled" maxlength="4"> － <input type="text" name="user_data" value="$cart_user11" size="4" style="ime-mode:disabled" maxlength="4">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1電話番号(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user9" size="4" style="ime-mode:disabled" maxlength="10"> － <input type="text" name="user_data" value="$cart_user10" size="4" style="ime-mode:disabled" maxlength="10"> － <input type="text" name="user_data" value="$cart_user11" size="4" style="ime-mode:disabled" maxlength="10">$t2_font2</td>
       </tr>
EOM

	}

	if($cri2 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1ＦＡＸ番号(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user12" size="4" style="ime-mode:disabled" maxlength="10"> － <input type="text" name="user_data" value="$cart_user13" size="4" style="ime-mode:disabled" maxlength="10"> － <input type="text" name="user_data" value="$cart_user14" size="4" style="ime-mode:disabled" maxlength="10">$t2_font2</td>
       </tr>
EOM

	}elsif($cri2 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1ＦＡＸ番号$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user12" size="4" style="ime-mode:disabled" maxlength="10"> － <input type="text" name="user_data" value="$cart_user13" size="4" style="ime-mode:disabled" maxlength="10"> － <input type="text" name="user_data" value="$cart_user14" size="4" style="ime-mode:disabled" maxlength="10">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
        <input type="hidden" name="user_data" value="$cart_user12">
        <input type="hidden" name="user_data" value="$cart_user13">
        <input type="hidden" name="user_data" value="$cart_user14">
EOM

	}

	if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1メールアドレス(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <input type="text" name="user_data" value="$cart_user15" size="40" style="ime-mode:disabled" maxlength="64"><br><br>
        ※確認のためにもう一度メールアドレスを入力してください。<br>
        <input type="text" name="user_data" value="$cart_user16" size="40" style="ime-mode:disabled" maxlength="64">
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1メールアドレス(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <input type="text" name="user_data" value="$cart_user15" size="40" style="ime-mode:disabled" maxlength="200"><br><br>
        ※確認のためにもう一度メールアドレスを入力してください。<br>
        <input type="text" name="user_data" value="$cart_user16" size="40" style="ime-mode:disabled" maxlength="200">
        $t2_font2</td>
       </tr>
EOM

	}

	if($cri3 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1性別(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <select name="user_data">
        <option value=""$select17_1></option>
        <option value="男"$select17_2>男</option>
        <option value="女"$select17_3>女</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}elsif($cri3 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1性別$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <select name="user_data">
        <option value=""$select17_1></option>
        <option value="男"$select17_2>男</option>
        <option value="女"$select17_3>女</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
        <input type="hidden" name="user_data" value="$cart_user17">
EOM

	}

	if($cri4 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1生年月日(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1西暦<input type="text" name="user_data" value="$cart_user18" size="4" style="ime-mode:disabled" maxlength="4">年 <input type="text" name="user_data" value="$cart_user19" size="2" style="ime-mode:disabled" maxlength="2">月 <input type="text" name="user_data" value="$cart_user20" size="2" style="ime-mode:disabled" maxlength="2">日$t2_font2</td>
       </tr>
EOM

	}elsif($cri4 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1生年月日$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1西暦<input type="text" name="user_data" value="$cart_user18" size="4" style="ime-mode:disabled" maxlength="4">年 <input type="text" name="user_data" value="$cart_user19" size="2" style="ime-mode:disabled" maxlength="2">月 <input type="text" name="user_data" value="$cart_user20" size="2" style="ime-mode:disabled" maxlength="2">日$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
        <input type="hidden" name="user_data" value="$cart_user18">
        <input type="hidden" name="user_data" value="$cart_user19">
        <input type="hidden" name="user_data" value="$cart_user20">
EOM

	}

	if($cri7 eq "1"){

		if($cri10 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" size="$cri9" value="$cart_user21">$t2_font2</td>
       </tr>
EOM

		}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<textarea name="user_data" cols="$cri9" rows="$cri10">$cart_user21</textarea>$t2_font2</td>
       </tr>
EOM

		}

	}elsif($cri7 eq "2"){

		if($cri10 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" size="$cri9" value="$cart_user21">$t2_font2</td>
       </tr>
EOM

		}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<textarea name="user_data" cols="$cri9" rows="$cri10">$cart_user21</textarea>$t2_font2</td>
       </tr>
EOM

		}

	}else{

print<<"EOM";
        <input type="hidden" name="user_data" value="$cart_user21">
EOM

	}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1情報の保存$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="checkbox" name="user_data" value="on" $ckeck22>上記情報を保存して次回から自動的に表\示。$t2_font2</td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="user_edit" value="更新する" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
EOM

	#送料を表示。
	&carriage;

	#連絡事項を表示。
	&reports;

print<<"EOM";
      </div>
EOM

}
##################################################
# payment_edit
# 支払方法編集画面。
##################################################
sub payment_edit{

	#パラメータ情報を取得。
	&shop_hidden_set;
	&user_hidden_set;

	if($in{'address'} eq "other"){

		#パラメータ情報を取得。
		&delivery_hidden_set;

		#パラメータを取得。
		while(($x,$y) = each %in){

			#パラメータ名がitemの場合。
			if($x =~ /^item/){

				$hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

			}
		}
	}

	#支払い方法が選択されていた場合。
	if($in{'payment'} eq "銀行振り込み"){

		$checked1 = " checked";

	}elsif($in{'payment'} eq "代引き"){

		$checked2 = " checked";

	}elsif($in{'payment'} eq "郵便振替"){

		$checked3 = " checked";

	}elsif($in{'payment'} eq "ZEUS決済"){

		$checked4 = " checked";

	}elsif($in{'payment'} eq "NICOS決済"){

		$checked5 = " checked";

	}elsif($in{'payment'} eq "NICOSライト決済"){

		$checked6 = " checked";

	}elsif($in{'payment'} eq "その他"){

		$checked7 = " checked";

	}

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

print<<"EOM";
      <div align="center">
EOM

	#商品情報を表示。
	&cart1;

	#連絡事項を表示。
	&reports;

print<<"EOM";
      <form action="$script" name="user_data" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="message" value="$in{'message'}">
      <input type="hidden" name="type" value="payment_edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1お支払合計金額およびお支払方法 $t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        [お支払いの合計金額] $in{'subtotal2'}円<br>
        [お支払いの方法]
EOM

	#支払い方法の選択表示。
	if($crt19 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"銀行振り込み\"$checked1>銀行振り込み \n";}
	if($crt20 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"代引き\"$checked2>代引き \n";}
	if($crt21 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"郵便振替\"$checked3>郵便振替 \n";}
	if($crt24 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"ZEUS決済\"$checked4>クレジット決済 \n";}
	if($crt33 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"NICOS決済\"$checked5>クレジット決済 \n";}
	if($crt45 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"NICOSライト決済\"$checked6>クレジット決済 \n";}
	if($crt22 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"その他\"$checked7>その他 \n";}

	#支払い方法がクレジットカードの場合。
	if($crt24 eq "on"){

print<<"EOM";
        <br><br>ZEUSクレジット決済システムがご利用になれます。
        <table border="0" cellpadding="1" cellspacing="1">
         <tr>
          <td><a href="http://www.cardservice.co.jp" target="_blank"><img src="$imgdir/zeus.gif" border="0" alt="ZEUSクレジット決済システム"></a></td>
EOM

		#クレジットカードの選択表示。
		if($crt26 eq "on"){print"          <td><img src=\"$imgdir/visa.gif\" border=\"0\"></td>\n";}
		if($crt27 eq "on"){print"          <td><img src=\"$imgdir/master.gif\" border=\"0\"></td>\n";}
		if($crt28 eq "on"){print"          <td><img src=\"$imgdir/amex.gif\" border=\"0\"></td>\n";}
		if($crt29 eq "on"){print"          <td><img src=\"$imgdir/jcb.gif\" border=\"0\"></td>\n";}
		if($crt30 eq "on"){print"          <td><img src=\"$imgdir/diners.gif\" border=\"0\"></td>\n";}

print<<"EOM";
         </tr>
        </table>
EOM

	}

	if($crt33 eq "on" || $crt45 eq "on"){

print<<"EOM";
        <br><br>NICOSクレジット決済システムがご利用になれます。
        <table border="0" cellpadding="1" cellspacing="1">
         <tr>
          <td><a href="http://www.cr.mufg.jp/" target="_blank"><img src="$imgdir/ufj_nicosl.gif" border="0" alt="NICOSクレジット決済システム"></a></td>
         </tr>
        </table>
EOM

	}

	if($crt38 ne ""){

print<<"EOM";
        <br>
        [注意事項]<br>
        $crt38
EOM

	}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="payment_edit" value="更新する" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
      </div>
EOM

}
##################################################
# delivery_day_edit
# 配送希望日編集画面。
##################################################
sub delivery_day_edit{

	#パラメータ情報を取得。
	&shop_hidden_set;
	&user_hidden_set;

	if($in{'address'} eq "other"){

		#パラメータ情報を取得。
		&delivery_hidden_set;

		#パラメータを取得。
		while(($x,$y) = each %in){

			#パラメータ名がitemの場合。
			if($x =~ /^item/){

				$hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

			}
		}
	}

	#入力サイズチェック。（配送希望日）
	if($in{'delivery_day'} eq ""){

		$delivery_day = "";

	}else{

		$delivery_day = $in{'delivery_day'};
		$delivery_day =~ s/&lt;br&gt;/\n/g;

	}

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

print<<"EOM";
      <div align="center">
EOM

	#商品情報を表示。
	&cart1;

print<<"EOM";
      <form action="$script"  method="post" style="margin-bottom:0" name="calendar">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="message" value="$in{'message'}">
      <input type="hidden" name="type" value="delivery_day_edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
EOM

	if($cri6 eq "1"){

print<<"EOM";
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1配送希望日がある場合はご記入ください(必須)$t1_font2</td>
EOM

	}else{

print<<"EOM";
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1配送希望日がある場合はご記入ください$t1_font2</td>
EOM

	}

print<<"EOM";
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>
         <table border="0" cellspacing="0" cellpadding="0">
          <tr>
           <td valign="top">$t2_font1<textarea name="delivery_day" cols="40" rows="5">$delivery_day</textarea>$t2_font2</td>
           <td valign="top"><button id="btn1" style="height:24" onclick="MM_openBrCalendarWindow(btn1,'calendar.cgi','calendar','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=220,height=220');return(false);">カレンダーより選択</button></td>
          </tr>
         </table>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="delivery_day_edit" value="更新する" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
      </div>
EOM

}
##################################################
# message_edit
# ご意見・ご感想・ご希望等編集画面。
##################################################
sub message_edit{

	#パラメータ情報を取得。
	&shop_hidden_set;
	&user_hidden_set;

	if($in{'address'} eq "other"){

		#パラメータ情報を取得。
		&delivery_hidden_set;

		#パラメータを取得。
		while(($x,$y) = each %in){

			#パラメータ名がitemの場合。
			if($x =~ /^item/){

				$hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

			}
		}
	}

	#入力サイズチェック。（ご意見・ご感想・ご希望等）
	if($in{'message'} eq ""){

		$message = "";

	}else{

		$message = $in{'message'};
		$message =~ s/&lt;br&gt;/\n/g;

	}

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

print<<"EOM";
      <div align="center">
EOM

	#商品情報を表示。
	&cart1;

print<<"EOM";
      <form action="$script" name="user_data" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="type" value="message_edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
EOM

	if($cri6 eq "1"){

print<<"EOM";
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1ご意見・ご感想・ご希望等(必須)$t1_font2</td>
EOM

	}else{

print<<"EOM";
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1ご意見・ご感想・ご希望等$t1_font2</td>
EOM

	}

print<<"EOM";
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<textarea name="message" cols="40" rows="5">$message</textarea>$t2_font2</td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="message_edit" value="更新する" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
      </div>
EOM

}
##################################################
# sales
# 通信販売法。
##################################################
sub sales{

	if($low50 eq ""){

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

		#販売主体を表示。
		if($low1 ne "" || $low2 ne "" || $low3 ne ""){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td colspan="2" background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1販売主体について$t1_font2</td>
       </tr>
EOM

			#[販売業者]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1販売業者$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low1 ne ""){
				print"        $low1\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[運営責任者]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1運営責任者$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low2 ne ""){
				print"        $low2\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[所在地・連絡先]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1所在地・連絡先$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low3 ne ""){
				print"        $low3\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

		#販売条件を表示。
		if($low4 ne "" || $low5 ne "" || $low6 ne "" || $crt24 eq "on" 
			|| $low7 ne "" || $low8 ne "" || $low9 ne "" || $low10 ne "" 
			|| $low11 ne "" || $low12 ne "" || $low13 ne "" || $low14 ne "" || $low15 ne ""){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td colspan="2" background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1販売条件について$t1_font2</td>
       </tr>
EOM

			#[申し込み方法]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1申\し込み方法 $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low4 ne ""){
				print"        $low4\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[販売価格]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1販売価格$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low5 ne ""){
				print"        $low5\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[お支払方法]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1お支払方法 $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low6 ne ""){
				print"         $low6\n";
			}else{
				print"         &nbsp;\n";
			}

			#カード種別を表示。
			if($crt24 eq "on"){

print<<"EOM";
         <br><br>ZEUSクレジット決済システムがご利用になれます。$t2_font2
         <table border="0" cellpadding="1" cellspacing="1">
          <tr>
           <td><a href="http://www.cardservice.co.jp" target="_blank"><img src="$imgdir/zeus.gif" border="0" alt="ZEUSクレジット決済システム"></a></td>
EOM

				if($crt26 eq "on"){print"           <td><img src=\"$imgdir/visa.gif\" border=\"0\"></td>\n";}
				if($crt27 eq "on"){print"           <td><img src=\"$imgdir/master.gif\" border=\"0\"></td>\n";}
				if($crt28 eq "on"){print"           <td><img src=\"$imgdir/amex.gif\" border=\"0\"></td>\n";}
				if($crt29 eq "on"){print"           <td><img src=\"$imgdir/jcb.gif\" border=\"0\"></td>\n";}
				if($crt30 eq "on"){print"           <td><img src=\"$imgdir/diners.gif\" border=\"0\"></td>\n";}

print<<"EOM";
          </tr>
         </table>
EOM

			}

			if($crt33 eq "on" || $crt45 eq "on"){

print<<"EOM";
        <br><br>NICOSクレジット決済システムがご利用になれます。$t2_font2
        <table border="0" cellpadding="1" cellspacing="1">
         <tr>
          <td><a href="http://www.cr.mufg.jp/" target="_blank"><img src="$imgdir/ufj_nicosl.gif" border="0" alt="NICOSクレジット決済システム"></a></td>
         </tr>
        </table>
EOM

			}

print<<"EOM";
        </td>
       </tr>
EOM

			#[お届け時期]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1お届け時期$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low7 ne ""){
				print"        $low7\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[申し込み有効期限]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1申\し込み有効期限$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low8 ne ""){
				print"        $low8\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[販売数量の制限]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1販売数量の制限$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low9 ne ""){
				print"        $low9\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[返品と交換]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1返品と交換$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low10 ne ""){
				print"        $low10\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[付帯費用]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1付帯費用$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low11 ne ""){
				print"        $low11\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[資料請求]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1資料請求$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low12 ne ""){
				print"        $low12\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[消費税の扱い]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1消費税の扱い$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low13 ne ""){
				print"        $low13\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[商品保証]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1商品保証$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low14 ne ""){
				print"        $low14\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[問い合わせ窓口]を表示。

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1問い合わせ窓口$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low15 ne ""){
				print"        $low15\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

	}

}
##################################################
# carriage
# 送料。
##################################################
sub carriage{

	#送料計算対象外売り上げ最低金額が0でない場合。
	if($crt5 ne "0"){

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

		#送料計算対象外売り上げ最低金額。
		$free = $crt5;
		$free =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#北海道送料。
		$hokkaido = $crt6;
		$hokkaido =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#北東北送料。
		$kitatohoku = $crt7;
		$kitatohoku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#南東北送料。
		$minamitohoku = $crt8;
		$minamitohoku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#北関東送料。
		$kitakanto = $crt9;
		$kitakanto =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#南関東送料。
		$minamikanto = $crt10;
		$minamikanto =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#信越送料。
		$shinetsu = $crt11;
		$shinetsu =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#北陸送料。
		$hokuriku = $crt12;
		$hokuriku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#中部送料。
		$chubu = $crt13;
		$chubu =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#関西送料。
		$kansai = $crt14;
		$kansai =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#中国送料。
		$chugoku = $crt15;
		$chugoku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#四国送料。
		$shikoku = $crt16;
		$shikoku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#九州送料。
		$kyushu = $crt17;
		$kyushu =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#その他送料。
		$sonota = $crt18;
		$sonota =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#送料を表示。

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td colspan="6" background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1配送先に応じて以下の送料が必要となります。$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1北海道$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$hokkaido円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1北東北$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$kitatohoku円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1南東北$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$minamitohoku円$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1北関東$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$kitakanto円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1南関東$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$minamikanto円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1信越$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$shinetsu円$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1北陸$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$hokuriku円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1中部$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$chubu円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1関西$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$kansai円$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1中国$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$chugoku円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1四国$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$shikoku円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1九州$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$kyushu円$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1その他$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$sonota円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1&nbsp;$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1&nbsp;$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1&nbsp;$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1&nbsp;$t2_font2</td>
       </tr>
EOM

		#送料計算対象外売り上げ最低金額が存在する場合。
		if($crt5 ne ""){

print<<"EOM";
       <tr>
        <td colspan="6" background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1※ご購入金額が$free円以上の注文の場合は送料無料。$t2_font2</td>
       </tr>
EOM

		}

print<<"EOM";
      </table>
      <br>
EOM

	}
}
##################################################
# reports
# 連絡事項。
##################################################
sub reports{

	#連絡事項を表示。
	if($crt23 ne ""){

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

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1連絡事項$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1$crt23$t2_font2</td>
       </tr>
      </table>
      <br>
EOM

	}
}
##################################################
# cart_error
# エラーメッセージ。
##################################################
sub cart_error{

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center">-----------------<strong>エラーメッセージ</strong>-----------------</td>
       </tr>
       <tr>
        <td align="center">
EOM

	#エラーメッセージの表示。
	for($i = 0 ; $i <= $#errorMsg ; $i++){
		print"        <font color=\"#FF0000\" size=\"-1\"><strong>$errorMsg[$i]</strong></font><br>\n";
	}

print<<"EOM";
        </td>
       </tr>
       <tr>
        <td align="center">
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="$in{'cart'}">
         <input type="hidden" name="total" value="$in{'total'}">
         <input type="hidden" name="address" value="$in{'address'}">
         <input type="hidden" name="payment" value="$in{'payment'}">
         <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
         <input type="hidden" name="message" value="$in{'message'}">
         <input type="hidden" name="type" value="$in{'type'}">
EOM

	if($in{'address'} eq "other"){

		#クッキーを精査。
		foreach $shop(@shop){

			#商品情報を分割。
			local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop);

			#数量初期化。
			$total_count = "0";

			#日付でパラメータ情報から数量情報を取得。
			while(($m,$n) = each %in){

				#パラメータが商品と同じ場合。
				if($m eq "item$t1_code"){

					print"<input type=\"hidden\" name=\"$m\" value=\"$n\">\n"

				}
			}

			#配送先の精査。
			foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

				#配送先情報を分割。（コード、姓、名、姓（ふりがな）、名（ふりがな）、郵便番号、郵便番号、都道府県、郡市区町村、それ以降の住所、電話番号、電話番号、電話番号）
				local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$DELIVERY_DATA{$cd});

				#日付でパラメータ情報から数量情報を取得。
				while(($m,$n) = each %in){

					#パラメータが商品と同じ場合。
					if($m eq "item$t1_code\D$t2_code"){

						print"<input type=\"hidden\" name=\"$m\" value=\"$n\">\n"

					}
				}
			}
		}
	}

print<<"EOM";
$hidden
<input type="hidden" name="r_delivery_address" value="@delivery_address[0]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[1]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[2]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[3]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[4]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[5]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[6]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[7]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[8]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[9]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[10]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[11]">
         <input type="submit" name="submit" value="入力画面に戻る">
         </form>
        </td>
       </tr>
      </table>
      </div>
EOM

}

1;
