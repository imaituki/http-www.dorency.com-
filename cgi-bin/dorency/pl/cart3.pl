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
# cart_order3
# 商品配送設定画面。
##################################################
sub cart_order3{

	#パラメータ情報を取得。
	&shop_hidden_set;
	&user_hidden_set;
	&delivery_hidden_set;

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

	my $count1    = 0;
	my $count2    = 0;
	my $data      = "";
	my $kanma_flg = 0;

	#クッキーを精査。
	foreach $shop(@shop){

		#商品情報を分割。
		local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

		if($t_unit =~ /\./){

			$kanma_flg = 1;

		}

	}

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
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1配送先別に商品の数量を振り分けてください。$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1ブラウザの戻る機能\は使わないでください。$t2_font2</td>
       </tr>
      </table>
      <br>
      <form action="$script" method="post" style="margin-bottom:0" id="form">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="order4">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
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
EOM

				if($kanma_flg == 0){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" colspan="5">
         <table border="0" align="left" width="100%">
          <tr>
           <td align="left" width="50%">$t2_font1残数：<span id="view$count1">$t_unit</span>$t2_font2</td>
EOM

					if($in{'submit'} eq "商品配送設定画面に進む" || $in{'submit'} eq "入力画面に戻る"){

print<<"EOM";
           <td align="right" width="50%" nowrap><input name="review" type="button" id="review" value="振り分け数の初期化" onClick="restart('$count1')"   style="width:150px;"></td>
EOM

					}else{

print<<"EOM";
           <td align="right" width="50%" nowrap><input name="review" type="button" id="review" value="振り分け数を戻す"   onClick="remake_back($count1)" style="width:150px;"><input name="review" type="button" id="review" value="振り分け数の初期化" onClick="restart('$count1')"   style="width:150px;"></td>
EOM

					}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

				}

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
EOM

					if($kanma_flg == 0){

print<<"EOM";
           <td align="left">$t2_font1数量$t2_font2
           <input type="hidden" name="back$edit_code\D$code" id="back$count1$count2" value="$in{"item$edit_code\D$code"}">
           <select name="item$edit_code\D$code" id="$count1$count2" onChange="remake('$count1',this.id)" style="width:50px;">
           </select>
           </td>
EOM

					}else{

print<<"EOM";
           <td align="left">$t2_font1数量<input type="text" name="item$edit_code\D$code" size="2" maxlength="50" style="ime-mode:disabled" value="$in{"item$edit_code\D$code"}">$t2_font2</td>
EOM

					}

print<<"EOM";
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
           [送料単価]$send2円
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
        <td><input type="submit" name="submit" value="配送先入力画面に戻る" style="width:150px"></td>
        <td><input type="submit" name="submit" value="商品配送確認画面に進む" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
EOM

	if($kanma_flg == 0){

print<<"EOM";
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

	var selected_data = document.getElementById('back' + id1 + '' + id2).value;

	for (var i0 = 0 ; i0 < watch_list[id1][id2].length ; i0++) {

		if (watch_list[id1][id2][i0] != "" || i0 == 0) {								// 監視配列の値がnullではないか、または初期値の場合

			addo = document.createElement('option');								// option要素を生成

			if (obj.childNodes[cnt1] != undefined) {

				obj.removeChild(obj.childNodes[cnt1]);								// option要素を親要素（select）へ追加する前にゴミを消去

			}

			obj.appendChild(addo);											// option要素を親要素（select）へ追加

			obj.childNodes[cnt1].setAttribute('value',watch_list[id1][id2][i0]);					// option要素にvalueを設定

//			if (selected_data != '') {
//
//				if (selected_data == cnt1) {
//
//					obj.childNodes[cnt1].setAttribute('selected','true');					// option要素にselectedを設定
//
//				} else {
//
//					obj.childNodes[cnt1].setAttribute('selected','');					// option要素にselectedを設定
//
//				}
//
//			} else {
//
//				obj.childNodes[cnt1].setAttribute('selected','');						// option要素にselectedを設定
//
//			}

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
EOM

	}

print<<"EOM";
      </div>
EOM

}

1;

