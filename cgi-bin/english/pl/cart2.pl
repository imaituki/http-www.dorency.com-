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
# cart_order2
# 配送先入力画面。
##################################################
sub cart_order2{

	#パラメータ情報を取得。
	&shop_hidden_set;
	&user_hidden_set;
	&delivery_hidden_set;

	#エラー画面表示。
	if($#errorMsg != -1){
		&cart_error;
	}else{

		#配送先追加エラーの場合のデフォルト値用意。
		$tmp0  = @r_delivery_address[0];
		$tmp1  = @r_delivery_address[1];
		$tmp2  = @r_delivery_address[2];
		$tmp3  = @r_delivery_address[3];
		$tmp4  = @r_delivery_address[4];
		$tmp5  = @r_delivery_address[5];
		$tmp6  = @r_delivery_address[6];
		$tmp7  = @r_delivery_address[7];
		$tmp8  = @r_delivery_address[8];
		$tmp9  = @r_delivery_address[9];
		$tmp10 = @r_delivery_address[10];
		$tmp11 = @r_delivery_address[11];

		if($tmp6 ne ""){

			#配送先の判定。
			if($tmp6 eq "北海道")  {$tmp6_1  = " selected";}
			if($tmp6 eq "青森県")  {$tmp6_2  = " selected";}
			if($tmp6 eq "秋田県")  {$tmp6_3  = " selected";}
			if($tmp6 eq "岩手県")  {$tmp6_4  = " selected";}
			if($tmp6 eq "宮城県")  {$tmp6_5  = " selected";}
			if($tmp6 eq "山形県")  {$tmp6_6  = " selected";}
			if($tmp6 eq "福島県")  {$tmp6_6  = " selected";}
			if($tmp6 eq "新潟県")  {$tmp6_8  = " selected";}
			if($tmp6 eq "長野県")  {$tmp6_9  = " selected";}
			if($tmp6 eq "山梨県")  {$tmp6_10 = " selected";}
			if($tmp6 eq "栃木県")  {$tmp6_11 = " selected";}
			if($tmp6 eq "群馬県")  {$tmp6_12 = " selected";}
			if($tmp6 eq "茨城県")  {$tmp6_13 = " selected";}
			if($tmp6 eq "埼玉県")  {$tmp6_14 = " selected";}
			if($tmp6 eq "千葉県")  {$tmp6_15 = " selected";}
			if($tmp6 eq "東京都")  {$tmp6_16 = " selected";}
			if($tmp6 eq "神奈川県"){$tmp6_17 = " selected";}
			if($tmp6 eq "富山県")  {$tmp6_18 = " selected";}
			if($tmp6 eq "石川県")  {$tmp6_19 = " selected";}
			if($tmp6 eq "福井県")  {$tmp6_20 = " selected";}
			if($tmp6 eq "岐阜県")  {$tmp6_21 = " selected";}
			if($tmp6 eq "静岡県")  {$tmp6_22 = " selected";}
			if($tmp6 eq "愛知県")  {$tmp6_23 = " selected";}
			if($tmp6 eq "三重県")  {$tmp6_24 = " selected";}
			if($tmp6 eq "滋賀県")  {$tmp6_25 = " selected";}
			if($tmp6 eq "京都府")  {$tmp6_26 = " selected";}
			if($tmp6 eq "大阪府")  {$tmp6_27 = " selected";}
			if($tmp6 eq "兵庫県")  {$tmp6_28 = " selected";}
			if($tmp6 eq "奈良県")  {$tmp6_29 = " selected";}
			if($tmp6 eq "和歌山県"){$tmp6_30 = " selected";}
			if($tmp6 eq "鳥取県")  {$tmp6_31 = " selected";}
			if($tmp6 eq "島根県")  {$tmp6_32 = " selected";}
			if($tmp6 eq "岡山県")  {$tmp6_33 = " selected";}
			if($tmp6 eq "広島県")  {$tmp6_34 = " selected";}
			if($tmp6 eq "山口県")  {$tmp6_35 = " selected";}
			if($tmp6 eq "徳島県")  {$tmp6_36 = " selected";}
			if($tmp6 eq "香川県")  {$tmp6_37 = " selected";}
			if($tmp6 eq "愛媛県")  {$tmp6_38 = " selected";}
			if($tmp6 eq "高知県")  {$tmp6_39 = " selected";}
			if($tmp6 eq "福岡県")  {$tmp6_40 = " selected";}
			if($tmp6 eq "佐賀県")  {$tmp6_41 = " selected";}
			if($tmp6 eq "長崎県")  {$tmp6_42 = " selected";}
			if($tmp6 eq "熊本県")  {$tmp6_43 = " selected";}
			if($tmp6 eq "大分県")  {$tmp6_44 = " selected";}
			if($tmp6 eq "宮崎県")  {$tmp6_45 = " selected";}
			if($tmp6 eq "鹿児島県"){$tmp6_46 = " selected";}
			if($tmp6 eq "沖縄県")  {$tmp6_47 = " selected";}
			if($tmp6 eq "その他")  {$tmp6_48 = " selected";}

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

		if($cri1 eq "1" || $cri1 eq "2"){
			$kana = "($cart_user2 $cart_user3)";
		}

print<<"EOM";
      <div align="center">
EOM

		#商品情報を表示。
		&cart1;

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1登録されている配送先は以下の通りです。$t1_font2</td>
       </tr>
      </table>
      <br>
EOM

		my $d_count = 0;

		#配送先の精査。
		foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

			$d_count++;

		}

		if($d_count == 0){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1現在お届け先の指定がありません。$t1_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

		#配送先数初期化。
		$address_no = 0;

		#配送先の精査。
		foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

			#配送先のカウントアップ。
			$address_no++;

			#配送先情報を分割。（コード、姓、名、姓（ふりがな）、名（ふりがな）、郵便番号、郵便番号、都道府県、郡市区町村、それ以降の住所、電話番号、電話番号、電話番号）
			local($t_code,$t_name1,$t_name2,$t_kana1,$t_kana2,$t_address1,$t_address2,$t_address3,$t_address4,$t_address5,$t_tel1,$t_tel2,$t_tel3) = split(/:/,$DELIVERY_DATA{$cd});

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 colspan="2">
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="del">
         <input type="hidden" name="total" value="$in{'total'}">
         <input type="hidden" name="address" value="$in{'address'}">
         <input type="hidden" name="clear" value="$t_code">
$hidden
         <input type="submit" name="submit" value="削除">
         $t1_font1追加配送先$address_no$t1_font2</form>
        </td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 width="150">$t1_font1お名前$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$t_name1 $t_name2($t_kana1 $t_kana2)様$t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

		#現在日付取得。
		&get_time;

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

		if($cart_user0 ne "" 
		&& $cart_user1 ne "" 
		&& $cart_user2 ne "" 
		&& $cart_user3 ne "" 
		&& $cart_user4 ne "" 
		&& $cart_user5 ne "" 
		&& $cart_user6 ne "" 
		&& $cart_user7 ne "" 
		&& $cart_user8 ne "" 
		&& $cart_user9 ne "" 
		&& $cart_user10 ne "" 
		&& $cart_user11 ne "" 
		&& $cart_user12 ne "" 
		&& $cart_user13 ne ""){

print<<"EOM";
        <td>
<form action="$script" method="post" style="margin-bottom:0">
<input type="hidden" name="category" value="$in{'category'}">
<input type="hidden" name="page" value="$in{'page'}">
<input type="hidden" name="view" value="$in{'view'}">
<input type="hidden" name="cart" value="add">
<input type="hidden" name="total" value="$in{'total'}">
<input type="hidden" name="address" value="$in{'address'}">
<input type="hidden" name="code" value="1$times">
$hidden
<input type="hidden" name="delivery_address" value="$cart_user0">
<input type="hidden" name="delivery_address" value="$cart_user1">
<input type="hidden" name="delivery_address" value="$cart_user2">
<input type="hidden" name="delivery_address" value="$cart_user3">
<input type="hidden" name="delivery_address" value="$cart_user4">
<input type="hidden" name="delivery_address" value="$cart_user5">
<input type="hidden" name="delivery_address" value="$cart_user6">
<input type="hidden" name="delivery_address" value="$cart_user7">
<input type="hidden" name="delivery_address" value="$cart_user8">
<input type="hidden" name="delivery_address" value="$cart_user9">
<input type="hidden" name="delivery_address" value="$cart_user10">
<input type="hidden" name="delivery_address" value="$cart_user11">
<input type="submit" name="submit" value="注文者を配送先に追加する" style="width:150px">
</form>
        </td>
EOM

		}

print<<"EOM";
        <td>
<form action="$script" method="post" style="margin-bottom:0">
<input type="hidden" name="category" value="$in{'category'}">
<input type="hidden" name="page" value="$in{'page'}">
<input type="hidden" name="view" value="$in{'view'}">
<input type="hidden" name="cart" value="order3">
<input type="hidden" name="total" value="$in{'total'}">
<input type="hidden" name="address" value="$in{'address'}">
$hidden
<input type="submit" name="submit" value="注文者入力画面に戻る" style="width:150px">
</form>
        </td>
        <td>
EOM

		if($d_count == 0){

print<<"EOM";
<input type="button" name="submit" value="商品配送設定画面に進む" style="width:150px" disabled>
EOM

		}else{

print<<"EOM";
<form action="$script" method="post" style="margin-bottom:0">
<input type="hidden" name="category" value="$in{'category'}">
<input type="hidden" name="page" value="$in{'page'}">
<input type="hidden" name="view" value="$in{'view'}">
<input type="hidden" name="cart" value="order3">
<input type="hidden" name="total" value="$in{'total'}">
<input type="hidden" name="address" value="$in{'address'}">
$hidden
<input type="submit" name="submit" value="商品配送設定画面に進む" style="width:150px">
</form>
EOM

		}

print<<"EOM";
        </td>
       </tr>
      </table>
      <br>
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="add">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="code" value="1$times">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle" colspan="2">$t1_font1追加する配送先の情報を入力してください。$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1お名前(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1姓<input type="text" name="delivery_address" size="10" maxlength="100" value="$tmp0"> 名<input type="text" name="delivery_address" size="10" maxlength="100" value="$tmp1"><br>(例)山田 太郎$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1フリガナ(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1姓<input type="text" name="delivery_address" size="10" maxlength="100" value="$tmp2"> 名<input type="text" name="delivery_address" size="10" maxlength="100" value="$tmp3"><br>(例)ヤマダ タロウ$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1郵便番号(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="delivery_address" size="3" style="ime-mode:disabled" maxlength="3" value="$tmp4"> － <input type="text" name="delivery_address" size="4" style="ime-mode:disabled" maxlength="4" value="$tmp5">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1都道府県(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <select name="delivery_address">
        <option></option>
        <option value="北海道"$tmp6_1>北海道</option>
        <option value="青森県"$tmp6_2>青森県－北東北</option>
        <option value="秋田県"$tmp6_3>秋田県－北東北</option>
        <option value="岩手県"$tmp6_4>岩手県－北東北</option>
        <option value="宮城県"$tmp6_5>宮城県－南東北</option>
        <option value="山形県"$tmp6_6>山形県－南東北</option>
        <option value="福島県"$tmp6_7>福島県－南東北</option>
        <option value="新潟県"$tmp6_8>新潟県－信越</option>
        <option value="長野県"$tmp6_9>長野県－信越</option>
        <option value="山梨県"$tmp6_10>山梨県－信越</option>
        <option value="栃木県"$tmp6_11>栃木県－北関東</option>
        <option value="群馬県"$tmp6_12>群馬県－北関東</option>
        <option value="茨城県"$tmp6_13>茨城県－北関東</option>
        <option value="埼玉県"$tmp6_14>埼玉県－南関東</option>
        <option value="千葉県"$tmp6_15>千葉県－南関東</option>
        <option value="東京都"$tmp6_16>東京都－南関東</option>
        <option value="神奈川県"$tmp6_17>神奈川県－南関東</option>
        <option value="富山県"$tmp6_18>富山県－北陸</option>
        <option value="石川県"$tmp6_19>石川県－北陸</option>
        <option value="福井県"$tmp6_20>福井県－北陸</option>
        <option value="岐阜県"$tmp6_21>岐阜県－中部</option>
        <option value="静岡県"$tmp6_22>静岡県－中部</option>
        <option value="愛知県"$tmp6_23>愛知県－中部</option>
        <option value="三重県"$tmp6_24>三重県－中部</option>
        <option value="滋賀県"$tmp6_25>滋賀県－関西</option>
        <option value="京都府"$tmp6_26>京都府－関西</option>
        <option value="大阪府"$tmp6_27>大阪府－関西</option>
        <option value="兵庫県"$tmp6_28>兵庫県－関西</option>
        <option value="奈良県"$tmp6_29>奈良県－関西</option>
        <option value="和歌山県"$tmp6_30>和歌山県－関西</option>
        <option value="鳥取県"$tmp6_31>鳥取県－中国</option>
        <option value="島根県"$tmp6_32>島根県－中国</option>
        <option value="岡山県"$tmp6_33>岡山県－中国</option>
        <option value="広島県"$tmp6_34>広島県－中国</option>
        <option value="山口県"$tmp6_35>山口県－中国</option>
        <option value="徳島県"$tmp6_36>徳島県－四国</option>
        <option value="香川県"$tmp6_37>香川県－四国</option>
        <option value="愛媛県"$tmp6_38>愛媛県－四国</option>
        <option value="高知県"$tmp6_39>高知県－四国</option>
        <option value="福岡県"$tmp6_40>福岡県－九州</option>
        <option value="佐賀県"$tmp6_41>佐賀県－九州</option>
        <option value="長崎県"$tmp6_42>長崎県－九州</option>
        <option value="熊本県"$tmp6_43>熊本県－九州</option>
        <option value="大分県"$tmp6_44>大分県－九州</option>
        <option value="宮崎県"$tmp6_45>宮崎県－九州</option>
        <option value="鹿児島県"$tmp6_46>鹿児島県－九州</option>
        <option value="沖縄県"$tmp6_47>その他－沖縄県</option>
        <option value="その他"$tmp6_48>その他－その他</option>
        </select>
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1郡市区町村(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="delivery_address" size="50" maxlength="200" value="$tmp7">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1それ以降の住所(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <input type="text" name="delivery_address" size="50" maxlength="200" value="$tmp8"><br>
        (例）渋谷1-1-1<br>
        (例）渋谷1-1-1 **ビル29F 株式会社**** **部<br>
        ※マンションアパート名は必ず入力してください。<br>
        ※住所が勤務先の場合は最後に「会社名・部署名」なども入力してください。
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1電話番号(必須)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="delivery_address" size="4" style="ime-mode:disabled" maxlength="10" value="$tmp9"> － <input type="text" name="delivery_address" size="4" style="ime-mode:disabled" maxlength="10" value="$tmp10"> － <input type="text" name="delivery_address" size="4" style="ime-mode:disabled" maxlength="10" value="$tmp11">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap colspan="2" align="center">$t1_font1<input type="submit" name="submit" value="配送先を登録する">$t1_font2</td>
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
}

1;

