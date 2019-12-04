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
# cart_order5
# 注文情報確認画面。
##################################################
sub cart_order5{

	#パラメータ情報を取得。
	&shop_hidden_set;
	&user_hidden_set;

	if($in{'address'} eq "other"){

		#パラメータ情報を取得。
		&delivery_hidden_set;

		#クッキーを精査。
		foreach $shop(@shop){

			#商品情報を分割。
			local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop);

			#数量初期化。
			$total_count = "0";

			#数量エラーの初期化。
			$errorFlg1 = "";
			$errorFlg2 = "";
			$errorFlg3 = "";

			#日付でパラメータ情報から数量情報を取得。
			while(($m,$n) = each %in){

				#パラメータが商品と同じ場合。
				if($m eq "item$t1_code"){

					#入力数値チェック。
					if($n =~ /[^0-9]/){
						$errorFlg1 = 1;
					}else{

						$AMOUNT_DATA{"$t1_code"} = $n;
						$total_count             = $total_count + $n;

					}
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

						#入力数値チェック。
						if($n =~ /[^0-9]/){
							$errorFlg1 = 1;
						}else{

							$AMOUNT_DATA{"$t1_code\D$t2_code"} = $n;
							$total_count                       = $total_count + $n;

						}
					}
				}
			}

			#最大数量が入力され、最大数量と計算した数量が同じでなかった場合はエラー。
			if($total_count > $t1_unit){
				$errorFlg2 = 1;
				$amount    = $total_count - $t1_unit;
			}elsif($total_count < $t1_unit){
				$errorFlg3 = 1;
				$amount    = $t1_unit - $total_count;
			}

			if($errorFlg1 ne "" || $errorFlg2 ne "" ||$errorFlg3 ne ""){

				if(-e "$rootdir/page_design/story/comment/$t1_category$t1_page.dat"){
					open(IN,"$rootdir/page_design/story/comment/$t1_category$t1_page.dat");
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

					if($id eq $t1_id){
						if($errorFlg1 ne ""){
							push(@errorMsg,"$titleの数量は半角数字を入力してください。");
						}elsif($errorFlg2 ne ""){
							push(@errorMsg,"$titleの数量が$amount多いです。");
						}elsif($errorFlg3 ne ""){
							push(@errorMsg,"$titleの数量が$amount少ないです。");
						}
					}
				}
			}
		}
	}

	#支払い方法が選択されていなかった場合はエラー。
	if($in{'payment'} eq ""){
		push(@errorMsg,"支払い方法が選択されていません。");
	}

	#入力サイズチェック。（配送希望日）
	if($cri5 eq "1"){
		if($in{'delivery_day'} eq ""){
			push(@errorMsg,"配送希望日が入力されていません。");
		}
	}
	if($in{'delivery_day'} eq ""){

		$delivery_day = "&nbsp;";

	}else{
		if(length($in{'delivery_day'}) > 1000){

			push(@errorMsg,"配送希望日の入力が多すぎます。");

			$in{'delivery_day'} = substr($in{'delivery_day'},0,1000);;

		}else{

			$delivery_day = $in{'delivery_day'};
			$delivery_day =~ s/&lt;br&gt;/<br>/g;

		}
	}

	#入力サイズチェック。（ご意見・ご感想・ご希望等）
	if($cri6 eq "1"){
		if($in{'message'} eq ""){
			push(@errorMsg,"ご意見・ご感想・ご希望等が入力されていません。");
		}
	}
	if($in{'message'} eq ""){

		$message = "&nbsp;";

	}else{
		if(length($in{'message'}) > 1000){

			push(@errorMsg,"ご意見・ご感想・ご希望等の入力が多すぎます。");

			$in{'message'} = substr($in{'message'},0,1000);;

		}else{

			$message = $in{'message'};
			$message =~ s/&lt;br&gt;/<br>/g;

		}
	}

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
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="order6">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="message" value="$in{'message'}">
EOM

		if($in{'address'} eq "same"){

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

		}

		#商品種類数
		$unit_count1 = 0;

		#商品数量
		$unit_count2 = 0;

		#総合計金額初期化。
		$subtotal = "0";

		#送料別総合計金額初期化。
		$pricetotal = 0;

		#クッキーを精査。
		foreach $shop(@shop){

			$unit_count1++;

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

					if($in{'address'} eq "other"){

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

					}

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

					#送料合計初期化。
					$subsend = "0";

					#商品単価を置換。
					$unit_price =~ s/,//g;

					#商品単価２を設定。
					$unit_price2 = $unit_price;

					#商品単価２を置換。
					$unit_price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

					#商品数×商品単価＝金額。
					$price = $t_unit * $unit_price;

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

					if($in{'address'} eq "other"){

print<<"EOM";
        $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$unit_price2円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$t_unit$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$price2円$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="left" valign="middle" colspan="5">$t2_font1
        ※配送先の情報<br><br>
EOM

					}else{

print<<"EOM";
        $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$unit_price2円$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$t_unit$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$price2円$t2_font2</td>
       </tr>
EOM

					}

					if($in{'address'} eq "other"){

						$hidden .= "<input type=\"hidden\" name=\"item$t_code\" value=\"$AMOUNT_DATA{$t_code}\">\n";

						$unit_count2 = $unit_count2 + $AMOUNT_DATA{"$t_code"};

						if($AMOUNT_DATA{"$t_code"} != 0){

							if($cri1 eq "1" || $cri1 eq "2"){
								$kana = "($cart_user2 $cart_user3)";
							}

print<<"EOM";
        [名前]$cart_user0 $cart_user1$kana様<br>
        [住所]〒$cart_user4 － $cart_user5 $cart_user6 $cart_user7 $cart_user8<br>
        [電話]$cart_user9 － $cart_user10 － $cart_user11<br>
        [数量]$AMOUNT_DATA{"$t_code"}<br>
EOM

							#送料計算対象外売り上げ最低金額が0でない場合。
							if($crt5 ne "0"){

								#送料計算用の都道府県を代入。
								$address3 = $cart_user6;

								#送料の計算。
								&send;

								#送料２を設定。
								$send2 = $send;

								#送料２をカンマ付け。
								$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

								if($crt39 eq "" || $crt39 eq "1" || $crt39 eq "2"){

									#送料合計を計算。
									$subsend = $subsend + $send;

								}

								if($crt39 eq "2"){

print<<"EOM";
        [送料]$send2円<br>
EOM

								}elsif($crt39 eq "3"){

									$tmp_count = $AMOUNT_DATA{"$t_code"};

									$tmp_send  = $send * $tmp_count;

									$subsend = $subsend + $tmp_send;

print<<"EOM";
        [送料]送料単価$send2円×商品数量$tmp_count=$tmp_send円<br>
EOM

								}

							}

print<<"EOM";
        <br>
EOM

						}

					}else{

						$hidden .= "<input type=\"hidden\" name=\"item$t_code\" value=\"$t_unit\">\n";

						$unit_count2 = $unit_count2 + $t_unit;

						if($cri1 eq "1" || $cri1 eq "2"){
							$kana = "($cart_user2 $cart_user3)";
						}

						#送料計算対象外売り上げ最低金額が0でない場合。
						if($crt5 ne "0"){

							#送料計算用の都道府県を代入。
							$address3 = $cart_user6;

							#送料の計算。
							&send;

							#送料２を設定。
							$send2 = $send;

							#送料２をカンマ付け。
							$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

							#送料合計を計算。
							$subsend = $subsend + $send;

						}
					}

					if($in{'address'} eq "other"){

						#配送先の精査。
						foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

							#配送先情報を分割。（コード、姓、名、姓（ふりがな）、名（ふりがな）、郵便番号、郵便番号、都道府県、郡市区町村、それ以降の住所、電話番号、電話番号、電話番号）
							local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

							$tmp = "$t_code\D$code";

							$hidden .= "<input type=\"hidden\" name=\"item$tmp\" value=\"$AMOUNT_DATA{$tmp}\">\n";

							$unit_count2 = $unit_count2 + $AMOUNT_DATA{$tmp};

							if($AMOUNT_DATA{"$t_code\D$code"} != 0){

print<<"EOM";
        [名前]$name1 $name2($kana1 $kana2)様<br>
        [住所]〒$address1 － $address2 $address3 $address4 $address5<br>
        [電話]$tel1 － $tel2 － $tel3<br>
        [数量]$AMOUNT_DATA{"$tmp"}<br>
EOM

								#送料計算対象外売り上げ最低金額が0でない場合。
								if($crt5 ne "0"){

									#送料の計算。
									&send;

									#送料２を設定。
									$send2 = $send;

									#送料２をカンマ付け。
									$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

									if($crt39 eq "" || $crt39 eq "1" || $crt39 eq "2"){

										#送料合計を計算。
										$subsend = $subsend + $send;

									}

									if($crt39 eq "2"){

print<<"EOM";
        [送料]$send2円<br>
EOM

									}elsif($crt39 eq "3"){

										$tmp_count = $AMOUNT_DATA{$tmp};

										$tmp_send  = $send * $tmp_count;

										$subsend = $subsend + $tmp_send;

print<<"EOM";
        [送料]送料単価$send2円×商品数量$tmp_count=$tmp_send円<br>
EOM

									}

								}

print<<"EOM";
        <br>
EOM

							}
						}
					}

					#送料合計２を設定。
					$subsend2 = $subsend;

					#送料合計２をカンマ付け。
					$subsend2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

					#小計を計算。
					$total = $price + $subsend;

					#小計２を設定。
					$total2 = $total;

					#小計２をカンマ付け。
					$total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

					#送料計算対象外売り上げ最低金額が0でない場合。
					if($crt5 ne "0"){

						if($in{'address'} eq "other"){

							if($crt39 eq "2"){

print<<"EOM";
        [小計]金額$price2円+送料$subsend2円=$total2円
EOM

							}elsif($crt39 eq "3"){

print<<"EOM";
        [小計]金額$price2円+送料$subsend2円=$total2円
EOM

							}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

						}

					}else{

						if($in{'address'} eq "other"){

							if($crt39 eq "2" || $crt39 eq "3"){

								#送料計算対象外売り上げ最低金額が0でない場合。
								if($crt5 ne "0"){

print<<"EOM";
        [小計]金額$price2円=$total2円
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

								}else{

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

								}

							}else{

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

							}

						}

					}

					if($in{'address'} eq "other"){

						if($crt39 eq "2" || $crt39 eq "3"){

							#総合計金額を計算。
							$subtotal = $subtotal + $total;

						}

					}

					#送料別総合計金額を計算。
					$pricetotal = $pricetotal + $price;

				}
			}
		}

		if($in{'address'} eq "other"){

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="order_edit" value="商品配送情報を変更する" style="width:150px"></td>
       </tr>
      </table>
      <br>
EOM

		}

		if($in{'address'} eq "other"){

			if($crt39 eq "" || $crt39 eq "1"){

				#送料別総合計金額２を設定。
				$pricetotal2 = $pricetotal;

				#送料別総合計金額２をカンマ付け。
				$pricetotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#総合計金額を計算。
				$subtotal = $pricetotal;

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1合計金額（税込み）$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$pricetotal2円$t2_font2</td>
       </tr>
      </table>
      <br>
EOM

				#送料計算対象外売り上げ最低金額が0でない場合。
				if($crt5 ne "0"){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1配送料$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="left" valign="middle">$t2_font1
EOM

				}

				$flg1      = 0;

				$sendHtml1 = "";

				$sendtotal1 = 0;

				#クッキーを精査。
				foreach $shop(@shop){

					#商品情報を分割。
					local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

					if($AMOUNT_DATA{"$t_code"} != 0){

						if($cri1 eq "1" || $cri1 eq "2"){
							$kana = "($cart_user2 $cart_user3)";
						}

						if($flg1 == 0){

							$flg1 = 1;

							$sendHtml1 .= "        [名前]$cart_user0 $cart_user1$kana様<br>\n";
							$sendHtml1 .= "        [住所]〒$cart_user4 － $cart_user5 $cart_user6 $cart_user7 $cart_user8<br>\n";
							$sendHtml1 .= "        [電話]$cart_user9 － $cart_user10 － $cart_user11<br>\n";

							#送料計算対象外売り上げ最低金額が0でない場合。
							if($crt5 ne "0"){

								#送料計算用の都道府県を代入。
								$address3 = $cart_user6;

								#送料の計算。
								&send;

								#送料２を設定。
								$send2 = $send;

								#送料２をカンマ付け。
								$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

								#送料合計を計算。
								$subsend = $subsend + $send;

								$sendHtml1 .= "        [送料]$send2円<br><br>\n";

								$sendtotal1 = $send;

							}

							$subtotal = $subtotal + $send;

						}

					}

				}

				#送料計算対象外売り上げ最低金額が0でない場合。
				if($crt5 ne "0"){

					print $sendHtml1;

				}

				$sendtotal2 = 0;

				#配送先の精査。
				foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

					#配送先情報を分割。（コード、姓、名、姓（ふりがな）、名（ふりがな）、郵便番号、郵便番号、都道府県、郡市区町村、それ以降の住所、電話番号、電話番号、電話番号）
					local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

					$flg2      = 0;

					$sendHtml2 = "";

					#クッキーを精査。
					foreach $shop(@shop){

						#商品情報を分割。
						local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

						$tmp = "$t_code\D$code";

						if($AMOUNT_DATA{"$t_code\D$code"} != 0){

							if($flg2 == 0){

								$flg2 = 1;

								$sendHtml2 .= "        [名前]$name1 $name2($kana1 $kana2)様<br>\n";
								$sendHtml2 .= "        [住所]〒$address1 － $address2 $address3 $address4 $address5<br>\n";
								$sendHtml2 .= "        [電話]$tel1 － $tel2 － $tel3<br>\n";

								#送料計算対象外売り上げ最低金額が0でない場合。
								if($crt5 ne "0"){

									#送料の計算。
									&send;

									#送料２を設定。
									$send2 = $send;

									#送料２をカンマ付け。
									$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

									#送料合計を計算。
									$subsend = $subsend + $send;

									$sendHtml2 .= "        [送料]$send2円<br><br>\n";

									$sendtotal2 = $sendtotal2 + $send;

								}

								$subtotal = $subtotal + $send;

							}

						}

					}

					#送料計算対象外売り上げ最低金額が0でない場合。
					if($crt5 ne "0"){

						print $sendHtml2;

					}

				}

				#送料合計の計算。
				$sendtotal = $sendtotal1 + $sendtotal2;

				#送料合計３を設定。
				$sendtotal3 = $sendtotal;

				#送料合計３をカンマ付け。
				$sendtotal3 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#送料計算対象外売り上げ最低金額が0でない場合。
				if($crt5 ne "0"){

print<<"EOM";
        [送料合計]$sendtotal3円
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

				}

			}

		}else{

			#送料別総合計金額２を設定。
			$pricetotal2 = $pricetotal;

			#送料別総合計金額２をカンマ付け。
			$pricetotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

print<<"EOM";
      </table>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1合計金額（税込み）$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$pricetotal2円$t2_font2</td>
       </tr>
      </table>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1配送先$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="left" valign="middle">$t2_font1
        [名前]$cart_user0 $cart_user1$kana様<br>
        [住所]〒$cart_user4 － $cart_user5 $cart_user6 $cart_user7 $cart_user8<br>
        [電話]$cart_user9 － $cart_user10 － $cart_user11<br>
EOM

			if($crt5 ne "0"){

				if($crt39 eq "" || $crt39 eq "1"){

print<<"EOM";
        [送料]$subsend2円
EOM

					#総合計金額を計算。
					$subtotal = $pricetotal + $subsend;

				}elsif($crt39 eq "2"){

					$sou_total = $subsend * $unit_count1;

					#送料合計金額２を設定。
					$sou_total2 = $sou_total;

					#送料合計金額２をカンマ付け。
					$sou_total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

print<<"EOM";
        [送料]送料単価$subsend2円×商品種類数$unit_count1=$sou_total2円
EOM

					#総合計金額を計算。
					$subtotal = $pricetotal + $sou_total;

				}elsif($crt39 eq "3"){

					$sou_total = $subsend * $unit_count2;

					#送料合計金額２を設定。
					$sou_total2 = $sou_total;

					#送料合計金額２をカンマ付け。
					$sou_total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

print<<"EOM";
        [送料]送料単価$subsend2円×商品数量$unit_count2=$sou_total2円
EOM

					#総合計金額を計算。
					$subtotal = $pricetotal + $sou_total;

				}

			}else{

				#総合計金額を計算。
				$subtotal = $pricetotal;

			}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

		if($cri1 eq "1" || $cri1 eq "2"){
			$kana = "($cart_user2 $cart_user3)";
		}

		#[ご注文者の情報]を表示。

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle" colspan="2">$t1_font1ご注文者の情報$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 width="150">$t1_font1お名前$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user0 $cart_user1$kana様$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1住所$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        〒$cart_user4 － $cart_user5<br>$cart_user6 $cart_user7<br>$cart_user8
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1電話番号$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user9 － $cart_user10 － $cart_user11$t2_font2</td>
       </tr>
EOM

		if($cri2 eq "1" || $cri2 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1ＦＡＸ番号$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user12 － $cart_user13 － $cart_user14$t2_font2</td>
       </tr>
EOM

		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1メールアドレス$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user15$t2_font2</td>
       </tr>
EOM

		if($cri3 eq "1" || $cri3 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1性別$t1_font2</td>
EOM

			if($cart_user17 ne ""){

print<<"EOM";
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user17$t2_font2</td>
EOM

			}else{

print<<"EOM";
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1&nbsp;$t2_font2</td>
EOM

			}

print<<"EOM";
       </tr>
EOM

		}

		if($cri4 eq "1" || $cri4 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1生年月日$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
EOM

			if($cart_user18 ne ""){

print<<"EOM";
        西暦$cart_user18年
EOM

			}

			if($cart_user19 ne ""){

print<<"EOM";
        $cart_user19月
EOM

			}

			if($cart_user20 ne ""){

print<<"EOM";
        $cart_user20日
EOM

			}

			if($cart_user18 eq "" && $cart_user19 eq "" && $cart_user20 eq ""){

print<<"EOM";
        &nbsp;
EOM

			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

		}

		if($cri7 eq "1" || $cri7 eq "2"){

			#自由入力項目の改行置換。
			$cart_user21 =~ s/&lt;br&gt;/<br>/g;

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user21$t2_font2</td>
       </tr>
EOM

		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" colspan="5">
         <input type="submit" name="user_edit" value="変更する">
        </td>
       </tr>
      </table>
      <br>
EOM

		#連絡事項を表示。
		&reports;

		#総合計金額２を設定。
		$subtotal2 = $subtotal;

		#総合計金額２をカンマ付け。
		$subtotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#[合計金額（税込み）]を表示。

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1お支払合計金額およびお支払方法 $t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        [お支払いの合計金額] $subtotal2円<br>
EOM

		if($in{'payment'} eq "銀行振り込み" || $in{'payment'} eq "代引き" || $in{'payment'} eq "郵便振替" || $in{'payment'} eq "その他"){

print<<"EOM";
        [お支払いの方法] $in{'payment'}
EOM

		}else{

print<<"EOM";
        [お支払いの方法] クレジット決済
EOM

		}

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
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" colspan="5">
         <input type="submit" name="payment_edit" value="変更する">
        </td>
       </tr>
      </table>
EOM

		if($cri5 eq "1" || $cri5 eq "2"){

print<<"EOM";
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1配送希望日$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$delivery_day$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" colspan="5">
         <input type="submit" name="delivery_day_edit" value="変更する">
        </td>
       </tr>
      </table>
EOM

		}

		if($cri6 eq "1" || $cri6 eq "2"){

print<<"EOM";
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1ご意見・ご感想・ご希望等$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$message$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" colspan="5">
         <input type="submit" name="message_edit" value="変更する">
        </td>
       </tr>
      </table>
EOM

		}

print<<"EOM";
      <br>
EOM

		if($in{'address'} eq "other"){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1配送先情報$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="checkbox" name="address_save" value="on">配送先の情報を保存して次回から自動的に表\示。$t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="submit" value="商品配送確認画面に戻る" style="width:150px"></td>
EOM

		#送信ボタンを表示。
		if($location eq "up"){
			print"        <td><input type=\"submit\" name=\"submit\" value=\"上記内容で送信する\" style=\"width:150px\"></td>\n";
		}else{
			print"        <td><input type=\"button\" value=\"上記内容で送信する\" style=\"width:150px\"></td>\n";
		}

print<<"EOM";
       </tr>
      </table>
<input type="hidden" name="subtotal2" value="$subtotal2">
$hidden
      </form>
      <br>
      </div>
EOM

	}
}

1;

