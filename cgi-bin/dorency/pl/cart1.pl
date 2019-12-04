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
# cart_order1
# 注文者入力画面。
##################################################
sub cart_order1{

	#パラメータ情報を取得。
	&shop_hidden_set;

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
<script type="text/javascript">
<!--

window.onload=changeButtonCheck;

//-->
</script>
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
	if($cart_user17 eq "")  {$select17_1 = " selected";}
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
      <input type="hidden" name="cart" value="order2">
      <input type="hidden" name="total" value="$in{'total'}">
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
        <input type="text" name="user_data" value="$cart_user15" size="40" style="ime-mode:disabled" maxlength="60"><br><br>
        ※確認のためにもう一度メールアドレスを入力してください。<br>
        <input type="text" name="user_data" value="" size="40" style="ime-mode:disabled" maxlength="60">
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
        <input type="text" name="user_data" value="" size="40" style="ime-mode:disabled" maxlength="200">
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
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1送付先$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>
         <table border="0" align="left">
          <tr>
           <td align="left">$t2_font1<input type="radio" name="address" value="same" checked onClick="changeButton('商品配送確認画面に進む')">$t2_font2</td>
           <td align="left">$t2_font1上記の住所に送る。$t2_font2</td>
          </tr>
          <tr>
           <td align="left">$t2_font1<input type="radio" name="address" value="other" onClick="changeButton('配送先入力画面に進む')">$t2_font2</td>
           <td align="left">$t2_font1別の住所に送る。（複数送付先対応）$t2_font2</td>
          </tr>
         </table>
        </td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="back" value="選択商品一覧画面に戻る" style="width:150px"></td>
        <td><input type="submit" name="submit" value="商品配送確認画面に進む" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
EOM

	if($location eq "up" && $crt42 eq "on" && $crt43 ne ""){

		if($crt44 ne ""){

			$crt44 =~ s/<br>/\n/g;
			$crt44 =~ s/&#44;/\,/g;
			$crt44 =~ s/&lt;/</g;
			$crt44 =~ s/&gt;/>/g;
			$crt44 =~ s/&lt;br&gt;/\n/g;
			$crt44 =~ s/&quot;/"/g;

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
$crt44
        </td>
       </tr>
      </table>
      <br>
EOM

		}

	}

	#送料を表示。
	&carriage;

	#連絡事項を表示。
	&reports;

print<<"EOM";
      </div>
EOM

}

1;

