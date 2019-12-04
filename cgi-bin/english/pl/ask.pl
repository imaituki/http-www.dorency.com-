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
# ask_check
# 商品確認画面表示。
##################################################
sub ask_check{

	#ユーザデータ入力エラー。
	if(@user_data[0] eq "")                                               {push(@errorMsg,"お名前（性）が入力されていません。");}
	if(@user_data[1] eq "")                                               {push(@errorMsg,"お名前（名）が入力されていません。");}
	if($ain1 eq "1" && @user_data[2] eq "")                               {push(@errorMsg,"お名前のフリガナ（性）が入力されていません。");}
	if($ain1 eq "1" && @user_data[3] eq "")                               {push(@errorMsg,"お名前のフリガナ（名）が入力されていません。");}
	if($ain2 eq "1" && @user_data[4] eq "")                               {push(@errorMsg,"郵便番号（１つ目の欄）が入力されていません。");}
	if($ain2 eq "1" && @user_data[4] ne "" && length(@user_data[4]) != 3) {push(@errorMsg,"郵便番号（１つ目の欄）が正しく入力されていません。");}
	if($ain2 eq "1" && @user_data[4] ne "" && @user_data[4] =~ /[^0-9]/)  {push(@errorMsg,"郵便番号（１つ目の欄）に半角数字が入力されていません。");}
	if($ain2 eq "1" && @user_data[5] eq "")                               {push(@errorMsg,"郵便番号（２つ目の欄）が入力されていません。");}
	if($ain2 eq "1" && @user_data[5] ne "" && length(@user_data[5]) != 4) {push(@errorMsg,"郵便番号（２つ目の欄）が正しく入力されていません。");}
	if($ain2 eq "1" && @user_data[5] ne "" && @user_data[5] =~ /[^0-9]/)  {push(@errorMsg,"郵便番号（２つ目の欄）に半角数字が入力されていません。");}
	if($ain2 eq "2" && @user_data[4] ne "" && length(@user_data[4]) != 3) {push(@errorMsg,"郵便番号（１つ目の欄）が正しく入力されていません。");}
	if($ain2 eq "2" && @user_data[4] ne "" && @user_data[4] =~ /[^0-9]/)  {push(@errorMsg,"郵便番号（１つ目の欄）に半角数字が入力されていません。");}
	if($ain2 eq "2" && @user_data[5] ne "" && length(@user_data[5]) != 4) {push(@errorMsg,"郵便番号（２つ目の欄）が正しく入力されていません。");}
	if($ain2 eq "2" && @user_data[5] ne "" && @user_data[5] =~ /[^0-9]/)  {push(@errorMsg,"郵便番号（２つ目の欄）に半角数字が入力されていません。");}
	if($ain2 eq "2" && @user_data[4] eq "" && @user_data[5] ne "")        {push(@errorMsg,"郵便番号（１つ目の欄）が入力されていません。");}
	if($ain2 eq "2" && @user_data[4] ne "" && @user_data[5] eq "")        {push(@errorMsg,"郵便番号（２つ目の欄）が入力されていません。");}
	if($ain3 eq "1" && @user_data[6] eq "")                               {push(@errorMsg,"都道府県が選択されていません。");}
	if($ain3 eq "1" && @user_data[7] eq "")                               {push(@errorMsg,"住所（郡市区町村）が入力されていません。");}
	if($ain3 eq "1" && @user_data[8] eq "")                               {push(@errorMsg,"住所（それ以降の住所）が入力されていません。");}
	if($ain4 eq "1" && @user_data[9] eq "")                               {push(@errorMsg,"電話番号（１つ目の欄）が入力されていません。");}
	if($ain4 eq "1" && @user_data[9] =~ /[^0-9]/)                         {push(@errorMsg,"電話番号（１つ目の欄）に半角数字が入力されていません。");}
	if($ain4 eq "1" && @user_data[10] eq "")                              {push(@errorMsg,"電話番号（２つ目の欄）が入力されていません。");}
	if($ain4 eq "1" && @user_data[10] =~ /[^0-9]/)                        {push(@errorMsg,"電話番号（２つ目の欄）に半角数字が入力されていません。");}
	if($ain4 eq "1" && @user_data[11] eq "")                              {push(@errorMsg,"電話番号（３つ目の欄）が入力されていません。");}
	if($ain4 eq "1" && @user_data[11] =~ /[^0-9]/)                        {push(@errorMsg,"電話番号（３つ目の欄）に半角数字が入力されていません。");}
	if($ain4 eq "2" && @user_data[9] ne "" && @user_data[9] =~ /[^0-9]/)  {push(@errorMsg,"電話番号（１つ目の欄）に半角数字が入力されていません。");}
	if($ain4 eq "2" && @user_data[10] ne "" && @user_data[10] =~ /[^0-9]/){push(@errorMsg,"電話番号（２つ目の欄）に半角数字が入力されていません。");}
	if($ain4 eq "2" && @user_data[11] ne "" && @user_data[11] =~ /[^0-9]/){push(@errorMsg,"電話番号（３つ目の欄）に半角数字が入力されていません。");}
	if($ain4 eq "2" && @user_data[9] eq "" && @user_data[10] ne "" && @user_data[11] ne ""){push(@errorMsg,"電話番号（１つ目の欄）が入力されていません。");}
	if($ain4 eq "2" && @user_data[9] ne "" && @user_data[10] eq "" && @user_data[11] ne ""){push(@errorMsg,"電話番号（２つ目の欄）が入力されていません。");}
	if($ain4 eq "2" && @user_data[9] ne "" && @user_data[10] ne "" && @user_data[11] eq ""){push(@errorMsg,"電話番号（３つ目の欄）が入力されていません。");}
	if($ain4 eq "2" && @user_data[9] eq "" && @user_data[10] eq "" && @user_data[11] ne ""){push(@errorMsg,"電話番号（１つ目の欄）（２つ目の欄）が入力されていません。");}
	if($ain4 eq "2" && @user_data[9] eq "" && @user_data[10] ne "" && @user_data[11] eq ""){push(@errorMsg,"電話番号（１つ目の欄）（３つ目の欄）が入力されていません。");}
	if($ain4 eq "2" && @user_data[9] ne "" && @user_data[10] eq "" && @user_data[11] eq ""){push(@errorMsg,"電話番号（２つ目の欄）（３つ目の欄）が入力されていません。");}
	if($ain5 eq "1" && @user_data[12] eq "")                              {push(@errorMsg,"ＦＡＸ番号（１つ目の欄）が入力されていません。");}
	if($ain5 eq "1" && @user_data[12] =~ /[^0-9]/)                        {push(@errorMsg,"ＦＡＸ番号（１つ目の欄）に半角数字が入力されていません。");}
	if($ain5 eq "1" && @user_data[13] eq "")                              {push(@errorMsg,"ＦＡＸ番号（２つ目の欄）が入力されていません。");}
	if($ain5 eq "1" && @user_data[13] =~ /[^0-9]/)                        {push(@errorMsg,"ＦＡＸ番号（２つ目の欄）に半角数字が入力されていません。");}
	if($ain5 eq "1" && @user_data[14] eq "")                              {push(@errorMsg,"ＦＡＸ番号（３つ目の欄）が入力されていません。");}
	if($ain5 eq "1" && @user_data[14] =~ /[^0-9]/)                        {push(@errorMsg,"ＦＡＸ番号（３つ目の欄）に半角数字が入力されていません。");}
	if($ain5 eq "2" && @user_data[12] ne "" && @user_data[12] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）に半角数字が入力されていません。");}
	if($ain5 eq "2" && @user_data[13] ne "" && @user_data[13] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（２つ目の欄）に半角数字が入力されていません。");}
	if($ain5 eq "2" && @user_data[14] ne "" && @user_data[14] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（３つ目の欄）に半角数字が入力されていません。");}
	if($ain5 eq "2" && @user_data[12] eq "" && @user_data[13] ne "" && @user_data[14] ne ""){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）が入力されていません。");}
	if($ain5 eq "2" && @user_data[12] ne "" && @user_data[13] eq "" && @user_data[14] ne ""){push(@errorMsg,"ＦＡＸ番号（２つ目の欄）が入力されていません。");}
	if($ain5 eq "2" && @user_data[12] ne "" && @user_data[13] ne "" && @user_data[14] eq ""){push(@errorMsg,"ＦＡＸ番号（３つ目の欄）が入力されていません。");}
	if($ain5 eq "2" && @user_data[12] eq "" && @user_data[13] eq "" && @user_data[14] ne ""){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）（２つ目の欄）が入力されていません。");}
	if($ain5 eq "2" && @user_data[12] eq "" && @user_data[13] ne "" && @user_data[14] eq ""){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）（３つ目の欄）が入力されていません。");}
	if($ain5 eq "2" && @user_data[12] ne "" && @user_data[13] eq "" && @user_data[14] eq ""){push(@errorMsg,"ＦＡＸ番号（２つ目の欄）（３つ目の欄）が入力されていません。");}

	#メールアドレス入力エラー。
	if($ain6 eq "1"){
		if(@user_data[15] ne @user_data[16]){
			push(@errorMsg,"メールアドレス（確認用）が一致してません。");
		}else{
			my $errorMail = mailCheck(@user_data[15]);
			if($errorMail eq "1"){
				push(@errorMsg,"メールアドレスにコンマ「\,」が含まれています。");
			}elsif($errorMail eq "2"){
				push(@errorMsg,"メールアドレスにアットマーク「\@」が含まれていません。");
			}elsif($errorMail eq "3"){
				push(@errorMsg,"メールアドレスに全角が含まれています。");
			}elsif($errorMail eq "4"){
				push(@errorMsg,"メールアドレスを正しく入力して下さい。");
			}elsif($errorMail eq "5"){
				push(@errorMsg,"メールアドレスの書式が不正です。");
			}elsif($errorMail eq "6"){
				push(@errorMsg,"メールアドレスが入力されていません。");
			}
		}
	}elsif($ain6 eq "2"){
		if(@user_data[15] ne "" || @user_data[16] ne ""){
			if(@user_data[15] ne @user_data[16]){
				push(@errorMsg,"メールアドレス（確認用）が一致してません。");
			}else{
				my $errorMail = mailCheck(@user_data[15]);
				if($errorMail eq "1"){
					push(@errorMsg,"メールアドレスにコンマ「\,」が含まれています。");
				}elsif($errorMail eq "2"){
					push(@errorMsg,"メールアドレスにアットマーク「\@」が含まれていません。");
				}elsif($errorMail eq "3"){
					push(@errorMsg,"メールアドレスに全角が含まれています。");
				}elsif($errorMail eq "4"){
					push(@errorMsg,"メールアドレスを正しく入力して下さい。");
				}elsif($errorMail eq "5"){
					push(@errorMsg,"メールアドレスの書式が不正です。");
				}elsif($errorMail eq "6"){
					push(@errorMsg,"メールアドレスが入力されていません。");
				}
			}
		}
	}

	#性別入力エラー。
	if($ain7 eq "1" && @user_data[17] eq ""){push(@errorMsg,"性別が選択されていません。");}

	#生年月日入力エラー。
	if($ain8 eq "1"){
		if(@user_data[18] eq "")      {push(@errorMsg,"生年月日（年）が入力されていません。");}
		if(@user_data[18] =~ /[^0-9]/){push(@errorMsg,"生年月日（年）に半角数字が入力されていません。");}
		if(@user_data[19] eq "")      {push(@errorMsg,"生年月日（月）が入力されていません。");}
		if(@user_data[19] =~ /[^0-9]/){push(@errorMsg,"生年月日（月）に半角数字が入力されていません。");}
		if(@user_data[20] eq "")      {push(@errorMsg,"生年月日（日）が入力されていません。");}
		if(@user_data[20] =~ /[^0-9]/){push(@errorMsg,"生年月日（日）に半角数字が入力されていません。");}
		if(@user_data[18] ne "" && @user_data[19] ne "" && @user_data[20] ne "" && 
			@user_data[18] !~ /[^0-9]/ && @user_data[19] !~ /[^0-9]/ && @user_data[20] !~ /[^0-9]/){
			my $errorDate = dateCheck(@user_data[18],@user_data[19],@user_data[20]);
			if($errorDate eq "1"){
				push(@errorMsg,"生年月日が不正です。");
			}
		}
	}elsif($ain8 eq "2"){
		if(@user_data[18] ne "" && @user_data[18] =~ /[^0-9]/){push(@errorMsg,"生年月日（年）に半角数字が入力されていません。");}
		if(@user_data[19] ne "" && @user_data[19] =~ /[^0-9]/){push(@errorMsg,"生年月日（月）に半角数字が入力されていません。");}
		if(@user_data[20] ne "" && @user_data[20] =~ /[^0-9]/){push(@errorMsg,"生年月日（日）に半角数字が入力されていません。");}
		if(@user_data[18] ne "" && @user_data[19] ne "" && @user_data[20] ne "" && 
			@user_data[18] !~ /[^0-9]/ && @user_data[19] !~ /[^0-9]/ && @user_data[20] !~ /[^0-9]/){
			my $errorDate = dateCheck(@user_data[18],@user_data[19],@user_data[20]);
			if($errorDate eq "1"){
				push(@errorMsg,"生年月日が不正です。");
			}
		}
		if(@user_data[18] eq "" && @user_data[19] ne "" &&  @user_data[20] ne ""){push(@errorMsg,"生年月日（年）が入力されていません。");}
		if(@user_data[18] ne "" && @user_data[19] eq "" &&  @user_data[20] ne ""){push(@errorMsg,"生年月日（月）が入力されていません。");}
		if(@user_data[18] ne "" && @user_data[19] ne "" &&  @user_data[20] eq ""){push(@errorMsg,"生年月日（日）が入力されていません。");}
		if(@user_data[18] eq "" && @user_data[19] eq "" &&  @user_data[20] ne ""){push(@errorMsg,"生年月日（年）（月）が入力されていません。");}
		if(@user_data[18] eq "" && @user_data[19] ne "" &&  @user_data[20] eq ""){push(@errorMsg,"生年月日（年）（日）が入力されていません。");}
		if(@user_data[18] ne "" && @user_data[19] eq "" &&  @user_data[20] eq ""){push(@errorMsg,"生年月日（月）（日）が入力されていません。");}
	}

	if($ain9 eq "1" && @user_data[21] eq "")          {push(@errorMsg,"返答方法が選択されていません。");}
	if($ain10 eq "1" && @user_data[22] eq "")         {push(@errorMsg,"問い合わせ内容が入力されていません。");}
	if($ain10 eq "1" && length(@user_data[22]) > 1000){push(@errorMsg,"問い合わせ内容の入力が多すぎます。");}
	if($ain10 eq "2" && length(@user_data[22]) > 1000){push(@errorMsg,"問い合わせ内容の入力が多すぎます。");}
	if($ain11 eq "1" && @user_data[23] eq "")         {push(@errorMsg,"$ain12が入力されていません。");}
	if($ain11 eq "1" && length(@user_data[23]) > 1000){push(@errorMsg,"$ain12の入力が多すぎます。");}
	if($ain11 eq "2" && length(@user_data[23]) > 1000){push(@errorMsg,"$ain12の入力が多すぎます。");}

	#ユーザデータ性別判定。
	if(@user_data[17] eq "M"){$seibetsu = "男";}
	if(@user_data[17] eq "F"){$seibetsu = "女";}

	#エラー画面表示。
	if($#errorMsg != -1){
		&ask_error;
	}else{

		#[table]を形成。
		if($ads6 ne ""){$t_ads6 = " bgcolor=\"$ads6\"";}
		if($ads2 ne ""){$t_ads2 = " border=\"$ads2\"";}
		if($ads2 eq ""){$t_ads2 = " border=\"0\"";}
		if($ads5 ne ""){$t_ads5 = " bordercolor=\"$ads5\"";}
		if($ads3 ne ""){$t_ads3 = " cellspacing=\"$ads3\"";}
		if($ads3 eq ""){$t_ads3 = " cellspacing=\"0\"";}
		if($ads4 ne ""){$t_ads4 = " cellpadding=\"$ads4\"";}
		if($ads4 eq ""){$t_ads4 = " cellpadding=\"0\"";}
		if($ads1 ne ""){$t_ads1 = " width=\"$ads1\"";}

		#[td]を形成。
		if($ads11 ne ""){$t_ads11 = " bgcolor=\"$ads11\"";}
		if($ads10 ne ""){$t_ads10 = " bordercolor=\"$ads10\"";}

		if($ads16 ne ""){$t_ads16 = " bgcolor=\"$ads16\"";}
		if($ads15 ne ""){$t_ads15 = " bordercolor=\"$ads15\"";}

		#[font]を形成。
		if($ads9 ne "")               {$t_ads9   = " size=\"$ads9\"";}
		if($ads8 ne "")               {$t_ads8   = " color=\"$ads8\"";}
		if($ads9 ne "" || $ads8 ne ""){$t1_font1 = "<font$t_ads9$t_ads8>";}
		if($ads9 ne "" || $ads8 ne ""){$t1_font2 = "</font>";}

		if($ads14 ne "")                {$t_ads14  = " size=\"$ads14\"";}
		if($ads13 ne "")                {$t_ads13  = " color=\"$ads13\"";}
		if($ads14 ne "" || $ads13 ne ""){$t2_font1 = "<font$t_ads14$t_ads13>";}
		if($ads14 ne "" || $ads13 ne ""){$t2_font2 = "</font>";}

print<<"EOM";
      <table background="$base_imgdir/$ads7"$t_ads6$t_ads2$t_ads5$t_ads3$t_ads4$t_ads1>
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 align="center" valign="middle" height="20">$t1_font1ご入力頂いた内容を確認し、送信ボタンをクリックしてください。$t1_font2</td>
       </tr>
      </table>
      <br>
      <table background="$base_imgdir/$ads7"$t_ads6$t_ads2$t_ads5$t_ads3$t_ads4$t_ads1>
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1お名前$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1@user_data[0] @user_data[1]$t2_font2</td>
       </tr>
EOM

	##################################################
	if($ain1 eq "1" || $ain1 eq "2"){

		my $temp_2 = @user_data[2];
		my $temp_3 = @user_data[3];

		if($temp_2 eq "" && $temp_3 eq ""){
			$temp_2 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1フリガナ$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_2 $temp_3$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain2 eq "1" || $ain2 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1郵便番号$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1@user_data[4] － @user_data[5]$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain3 eq "1" || $ain3 eq "2"){

		my $temp_6 = @user_data[6];

		if($temp_6 eq ""){
			$temp_6 = "&nbsp;"
		}

		my $temp_7 = @user_data[7];

		if($temp_7 eq ""){
			$temp_7 = "&nbsp;"
		}

		my $temp_8 = @user_data[8];

		if($temp_8 eq ""){
			$temp_8 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1都道府県$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_6$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1郡市区町村$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_7$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1それ以降の住所$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_8$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain4 eq "1" || $ain4 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1電話番号$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1@user_data[9] － @user_data[10] － @user_data[11]$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain5 eq "1" || $ain5 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1ＦＡＸ番号$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1@user_data[12] － @user_data[13] － @user_data[14]$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain6 eq "1" || $ain6 eq "2"){

		my $temp_15 = @user_data[15];

		if($temp_15 eq ""){
			$temp_15 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1メールアドレス$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_15$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain7 eq "1" || $ain7 eq "2"){

		my $temp_sei = $seibetsu;

		if($temp_sei eq ""){
			$temp_sei = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1性別$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_sei$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain8 eq "1" || $ain8 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1生年月日$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1西暦@user_data[18]年@user_data[19]月@user_data[20]日$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain9 eq "1" || $ain9 eq "2"){

		my $temp_21 = @user_data[21];
		$temp_21    =~ s/&lt;br&gt;/<br>/g;

		if($temp_21 eq ""){
			$temp_21 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1ご希望の返答方法 $t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_21$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain10 eq "1" || $ain10 eq "2"){

		my $temp_22 = @user_data[22];
		$temp_22    =~ s/&lt;br&gt;/<br>/g;

		if($temp_22 eq ""){
			$temp_22 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1お問い合わせ内容$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_22$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain11 eq "1" || $ain11 eq "2"){

		my $temp_23 = @user_data[23];
		$temp_23    =~ s/&lt;br&gt;/<br>/g;

		if($temp_23 eq ""){
			$temp_23 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120">$t1_font1$ain12$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_23$t2_font2</td>
       </tr>
EOM

	}
	##################################################

print<<"EOM";
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="title" value="$in{'title'}">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="hidden" name="no" value="$in{'no'}">
EOM

	if($kind eq "商品案内1"){

print<<"EOM";
        <input type="hidden" name="ask" value="on">
EOM

	}

	if($kind eq "商品案内2"){

print<<"EOM";
        <input type="hidden" name="detail" value="on">
EOM

	}

print<<"EOM";
        <input type="hidden" name="user_data" value="@user_data[0]">
        <input type="hidden" name="user_data" value="@user_data[1]">
        <input type="hidden" name="user_data" value="@user_data[2]">
        <input type="hidden" name="user_data" value="@user_data[3]">
        <input type="hidden" name="user_data" value="@user_data[4]">
        <input type="hidden" name="user_data" value="@user_data[5]">
        <input type="hidden" name="user_data" value="@user_data[6]">
        <input type="hidden" name="user_data" value="@user_data[7]">
        <input type="hidden" name="user_data" value="@user_data[8]">
        <input type="hidden" name="user_data" value="@user_data[9]">
        <input type="hidden" name="user_data" value="@user_data[10]">
        <input type="hidden" name="user_data" value="@user_data[11]">
        <input type="hidden" name="user_data" value="@user_data[12]">
        <input type="hidden" name="user_data" value="@user_data[13]">
        <input type="hidden" name="user_data" value="@user_data[14]">
        <input type="hidden" name="user_data" value="@user_data[15]">
        <input type="hidden" name="user_data" value="@user_data[16]">
        <input type="hidden" name="user_data" value="@user_data[17]">
        <input type="hidden" name="user_data" value="@user_data[18]">
        <input type="hidden" name="user_data" value="@user_data[19]">
        <input type="hidden" name="user_data" value="@user_data[20]">
        <input type="hidden" name="user_data" value="@user_data[21]">
        <input type="hidden" name="user_data" value="@user_data[22]">
        <input type="hidden" name="user_data" value="@user_data[23]">
        <input type="submit" value="前画面に戻る" style="width:150px">
        </form>
        </td>
EOM

	my $errorMail = mailCheck($ask1);

	if($errorMail ne "1" && $errorMail ne "2" && $errorMail ne "3" && $errorMail ne "4" && $errorMail ne "5" && $errorMail ne "6"){

		#受信メールアドレスが存在する場合は[form]を表示。
		if($location eq "up" && $ask1 ne ""){

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="title" value="$in{'title'}について">
        <input type="hidden" name="title1" value="$in{'title'}">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="no" value="$in{'no'}">
        <input type="hidden" name="ask" value="mail">
        <input type="hidden" name="user_data" value="@user_data[0]">
        <input type="hidden" name="user_data" value="@user_data[1]">
        <input type="hidden" name="user_data" value="@user_data[2]">
        <input type="hidden" name="user_data" value="@user_data[3]">
        <input type="hidden" name="user_data" value="@user_data[4]">
        <input type="hidden" name="user_data" value="@user_data[5]">
        <input type="hidden" name="user_data" value="@user_data[6]">
        <input type="hidden" name="user_data" value="@user_data[7]">
        <input type="hidden" name="user_data" value="@user_data[8]">
        <input type="hidden" name="user_data" value="@user_data[9]">
        <input type="hidden" name="user_data" value="@user_data[10]">
        <input type="hidden" name="user_data" value="@user_data[11]">
        <input type="hidden" name="user_data" value="@user_data[12]">
        <input type="hidden" name="user_data" value="@user_data[13]">
        <input type="hidden" name="user_data" value="@user_data[14]">
        <input type="hidden" name="user_data" value="@user_data[15]">
        <input type="hidden" name="user_data" value="@user_data[16]">
        <input type="hidden" name="user_data" value="@user_data[17]">
        <input type="hidden" name="user_data" value="@user_data[18]">
        <input type="hidden" name="user_data" value="@user_data[19]">
        <input type="hidden" name="user_data" value="@user_data[20]">
        <input type="hidden" name="user_data" value="@user_data[21]">
        <input type="hidden" name="user_data" value="@user_data[22]">
        <input type="hidden" name="user_data" value="@user_data[23]">
        <input type="submit" value="この内容で送信する" style="width:150px">
        </form>
        </td>
EOM

		}else{

print<<"EOM";
        <td align="right"><input type="button" value="この内容で送信する"></td>
EOM

		}

	}

print<<"EOM";
       </tr>
      </table>
EOM

	}
}
##################################################
# ask_mail
# 商品メール送信。
##################################################
sub ask_mail{

	#時間を取得。
	&get_time;

	#返信メールタイトルの置換。（クロスサイトスクリプティング対応）
#	$ask2 =~ s/&lt;/</g;
#	$ask2 =~ s/&gt;/>/g;
	$ask2 =~ s/&quot;/\"/g;
	$ask2 =~ s/<br>/\n/g;
	$ask2 =~ s/&lt;br&gt;/<br>/g;
	$ask2 =~ s/\.\n/\. \n/g;
	$ask2 =~ s/\&\#44\;/\,/g;

	#返信メールヘッダー文章の置換。（クロスサイトスクリプティング対応）
#	$ask3 =~ s/&lt;/</g;
#	$ask3 =~ s/&gt;/>/g;
	$ask3 =~ s/&quot;/\"/g;
	$ask3 =~ s/<br>/\n/g;
	$ask3 =~ s/&lt;br&gt;/<br>/g;
	$ask3 =~ s/\.\n/\. \n/g;
	$ask3 =~ s/\&\#44\;/\,/g;

	#返信メールフッター文章の置換。（クロスサイトスクリプティング対応）
#	$ask4 =~ s/&lt;/</g;
#	$ask4 =~ s/&gt;/>/g;
	$ask4 =~ s/&quot;/\"/g;
	$ask4 =~ s/<br>/\n/g;
	$ask4 =~ s/&lt;br&gt;/<br>/g;
	$ask4 =~ s/\.\n/\. \n/g;
	$ask4 =~ s/\&\#44\;/\,/g;

	#名前の置換。（クロスサイトスクリプティング対応）
#	@user_data[0] =~ s/&lt;/</g;
#	@user_data[0] =~ s/&gt;/>/g;
	@user_data[0] =~ s/&quot;/\"/g;
	@user_data[0] =~ s/<br>/\n/g;
	@user_data[0] =~ s/&lt;br&gt;/<br>/g;
	@user_data[0] =~ s/\.\n/\. \n/g;
	@user_data[0] =~ s/\&\#44\;/\,/g;

	#名前の置換。（クロスサイトスクリプティング対応）
#	@user_data[1] =~ s/&lt;/</g;
#	@user_data[1] =~ s/&gt;/>/g;
	@user_data[1] =~ s/&quot;/\"/g;
	@user_data[1] =~ s/<br>/\n/g;
	@user_data[1] =~ s/&lt;br&gt;/<br>/g;
	@user_data[1] =~ s/\.\n/\. \n/g;
	@user_data[1] =~ s/\&\#44\;/\,/g;

	#フリガナの置換。（クロスサイトスクリプティング対応）
#	@user_data[2] =~ s/&lt;/</g;
#	@user_data[2] =~ s/&gt;/>/g;
	@user_data[2] =~ s/&quot;/\"/g;
	@user_data[2] =~ s/<br>/\n/g;
	@user_data[2] =~ s/&lt;br&gt;/<br>/g;
	@user_data[2] =~ s/\.\n/\. \n/g;
	@user_data[2] =~ s/\&\#44\;/\,/g;

	#フリガナの置換。（クロスサイトスクリプティング対応）
#	@user_data[3] =~ s/&lt;/</g;
#	@user_data[3] =~ s/&gt;/>/g;
	@user_data[3] =~ s/&quot;/\"/g;
	@user_data[3] =~ s/<br>/\n/g;
	@user_data[3] =~ s/&lt;br&gt;/<br>/g;
	@user_data[3] =~ s/\.\n/\. \n/g;
	@user_data[3] =~ s/\&\#44\;/\,/g;

	#郡市区町村の置換。（クロスサイトスクリプティング対応）
#	@user_data[7] =~ s/&lt;/</g;
#	@user_data[7] =~ s/&gt;/>/g;
	@user_data[7] =~ s/&quot;/\"/g;
	@user_data[7] =~ s/<br>/\n/g;
	@user_data[7] =~ s/&lt;br&gt;/<br>/g;
	@user_data[7] =~ s/\.\n/\. \n/g;
	@user_data[7] =~ s/\&\#44\;/\,/g;

	#それ以降の住所の置換。（クロスサイトスクリプティング対応）
#	@user_data[8] =~ s/&lt;/</g;
#	@user_data[8] =~ s/&gt;/>/g;
	@user_data[8] =~ s/&quot;/\"/g;
	@user_data[8] =~ s/<br>/\n/g;
	@user_data[8] =~ s/&lt;br&gt;/<br>/g;
	@user_data[8] =~ s/\.\n/\. \n/g;
	@user_data[8] =~ s/\&\#44\;/\,/g;

	#問い合わせ内容の置換。（クロスサイトスクリプティング対応）
#	@user_data[22] =~ s/&lt;/</g;
#	@user_data[22] =~ s/&gt;/>/g;
	@user_data[22] =~ s/&quot;/\"/g;
	@user_data[22] =~ s/<br>/\n/g;
	@user_data[22] =~ s/&lt;br&gt;/<br>/g;
	@user_data[22] =~ s/\.\n/\. \n/g;
	@user_data[22] =~ s/\&\#44\;/\,/g;

	#自由設定項目の置換。（クロスサイトスクリプティング対応）
#	@user_data[23] =~ s/&lt;/</g;
#	@user_data[23] =~ s/&gt;/>/g;
	@user_data[23] =~ s/&quot;/\"/g;
	@user_data[23] =~ s/<br>/\n/g;
	@user_data[23] =~ s/&lt;br&gt;/<br>/g;
	@user_data[23] =~ s/\.\n/\. \n/g;
	@user_data[23] =~ s/\&\#44\;/\,/g;

	#ユーザデータ性別判定。
	if(@user_data[17] eq "M"){$seibetsu = "男";}
	if(@user_data[17] eq "F"){$seibetsu = "女";}

	#受信メールアドレス。
	$mailto = "$ask1";

	#確認メールアドレス。
	$email = @user_data[15];

	#メール件名。
	$subject = "「$title」$in{'title'}のお問い合わせ";

	#確認メール件名。
	$re_subject = "$ask2";

	#返信メールヘッダー出力。

$re_mailhead=<<"EOM";

@user_data[0] @user_data[1]様

$ask3
EOM

	#返信メール内容出力。

$mailhead=<<"EOM";

お問い合わせ内容は以下の通りです。
EOM

	#返信メール内容出力。

$mailbody.=<<"EOM";
$in{'title'}のお問い合わせ

◇お名前
@user_data[0] @user_data[1]

EOM

	##################################################
	if($ain1 eq "1" || $ain1 eq "2"){

$mailbody.=<<"EOM";
◇フリガナ
@user_data[2] @user_data[3]

EOM

	}
	##################################################
	if($ain2 eq "1" || $ain2 eq "2"){

$mailbody.=<<"EOM";
◇郵便番号
@user_data[4] － @user_data[5]

EOM

	}
	##################################################
	if($ain3 eq "1" || $ain3 eq "2"){

$mailbody.=<<"EOM";
◇都道府県
@user_data[6]

◇郡市区町村
@user_data[7]

◇それ以降の住所
@user_data[8]

EOM

	}
	##################################################
	if($ain4 eq "1" || $ain4 eq "2"){

$mailbody.=<<"EOM";
◇電話番号
@user_data[9] － @user_data[10] － @user_data[11]

EOM

	}
	##################################################
	if($ain5 eq "1" || $ain5 eq "2"){

$mailbody.=<<"EOM";
◇FAX番号
@user_data[12] － @user_data[13] － @user_data[14]

EOM

	}
	##################################################
	if($ain6 eq "1" || $ain6 eq "2"){

$mailbody.=<<"EOM";
◇メールアドレス
@user_data[15]

EOM

	}
	##################################################
	if($ain7 eq "1" || $ain7 eq "2"){

$mailbody.=<<"EOM";
◇性別
$seibetsu

EOM

	}
	##################################################
	if($ain8 eq "1" || $ain8 eq "2"){

$mailbody.=<<"EOM";
◇生年月日
西暦@user_data[18]年@user_data[19]月@user_data[20]日

EOM

	}
	##################################################
	if($ain9 eq "1" || $ain9 eq "2"){

$mailbody.=<<"EOM";
◇ご希望の返答方法
@user_data[21]

EOM

	}
	##################################################
	if($ain10 eq "1" || $ain10 eq "2"){

$mailbody.=<<"EOM";
◇お問い合わせ内容
@user_data[22]

EOM

	}
	##################################################
	if($ain11 eq "1" || $ain11 eq "2"){

$mailbody.=<<"EOM";
◇$ain12
@user_data[23]
EOM

	}
	##################################################

	#返信メールフッター出力。

$re_mailfoot=<<"EOM";
$ask4
EOM

	#JISコード変換。
	&jcode'convert(*re_subject,'jis');
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailhead,'jis');
	&jcode'convert(*re_mailhead,'jis');
	&jcode'convert(*mailbody,'jis');
	&jcode'convert(*re_mailfoot,'jis');

	#メール送信。（受信メール）
	open(MAIL,"|$sendmail -t -f '$email'") || &error("メール送信に失敗しました");
	print MAIL "Message-Id:\n";
	print MAIL "To: $mailto\n";
	print MAIL "From: $email <$email>\n";
	print MAIL "Subject: $subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
	print MAIL "Content-Transfer-Encoding: 7bit\n";
	print MAIL "$mailhead\n";
	print MAIL "$mailbody\n";
	close(MAIL);

	#メール送信。（確認メール）
	open(MAIL,"|$sendmail -t -f '$mailto'") || &error("メール送信に失敗しました");
	print MAIL "Message-Id:\n";
	print MAIL "To: $email\n";
	print MAIL "From: $mailto <$mailto>\n";
	print MAIL "Subject: $re_subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
	print MAIL "Content-Transfer-Encoding: 7bit\n";
	print MAIL "$re_mailhead\n";
	print MAIL "$mailbody\n";
	print MAIL "$re_mailfoot\n";
	close(MAIL);

#完了メッセージ。

print<<"EOM";
     <div align="center">
     <table border="0" cellpadding="1" cellspacing="1">
      <tr>
       <td><br></td>
      </tr>
      <tr>
       <td><font size="-1"><strong>ご入力頂いた内容の送信は完了いたしました。</strong></font></td>
      </tr>
     </table>
     </div>
EOM

	#リモートホスト名取得。
	$remote_host = $ENV{'REMOTE_HOST'};

	#IPアドレス取得。
	$remote_addr = $ENV{'REMOTE_ADDR'};

	#ユーザ環境変数取得。
	$http_user_agent = $ENV{'HTTP_USER_AGENT'};

	#ユーザ環境変数置換。
	$http_user_agent =~ s/HTML,/HTML/g;

	#パラメータ情報取得。
	if($buffer =~ /&&|&amp;&amp;/){
		($dummy,$http_referer) = split(/&&/,$ENV{'QUERY_STRING'});
	}

	#リンク元のURL取得。
	if($http_referer eq ''){
		$http_referer = $ENV{'HTTP_REFERER'};
	}

	#リンク元のURL置換。
	$http_referer =~ s/\,/\&\#44\;/g;

	#リモートホスト名が空、もしくはリモートホスト名がIPアドレスの場合には、IPアドレスからリモートホスト名取得。
	if($remote_host eq "" || $remote_host eq "$remote_addr"){
		$remote_host = gethostbyaddr(pack('C4',split(/\./,$remote_addr)),2);
	}

	#リモートホスト名が空の場合にはリモートホスト名をIPアドレスにする。
	if($remote_host eq ''){
		$remote_host = $remote_addr;
	}

	#ファイルを読み出す。
	open(IN,"./site_log/$date2.cgi");
	flock(IN,1);		# ファイルを読み出しロック。
	@temp = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);

	#ファイル出力情報を改行付きで形成。（[タイトル]、[リモートホスト名]、[IPアドレス]、[ユーザ環境変数]、[リンク元のURL]、[時間（1970年1月1日からの経過秒数）]）
	$line = "メール送信（問い合わせ）,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

	#先頭に生成した要素を追加。
	unshift(@temp,$line);

	#ファイルを書き出す。
	open(OUT, "> ./site_log/$date2.cgi");	# 読み書きモードで開く
	flock(OUT, 2);				# ロック確認。ロック
	seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
	print OUT @temp;			# 書き込む
	truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
	close(OUT);				# closeすれば自動でロック解除

	#お問い合わせ者情報保存要否が"on"の場合。
	if($ask5 eq "on"){

		#ディレクトリ設定。
		$makedir = "./address";

		#ディレクトリ作成。（パーミッションを0755で作成）
		unless (-d $makedir){
			mkdir($makedir,0755);
		}

		chmod(0755,$makedir);

		#アドレス情報を読み込み。
		open(IN,"./address/address.csv");
		flock(IN,1);
		@address_csv = <IN>;
		flock(IN,8);
		close(IN);

		#FAX番号形成。
		if(@user_data[12] ne "" && @user_data[13] ne "" && @user_data[14] ne ""){
			$fax2 = "@user_data[12]\-@user_data[13]\-@user_data[14]";
		}

		#TEL番号形成。
		$tel2 = "@user_data[9]\-@user_data[10]\-@user_data[11]";

		#生年月日形成。
		$birth2 = "@user_data[18]\/@user_data[19]\/@user_data[20]";

		#アドレス情報変数の初期化。
		@renew = ();

		#アドレス情報数の初期化。
		$address_list = 0;

		#過去に問い合わせがあったことのフラグ。
		$flag = 0;

		#アドレス情報の精査。
		foreach(@address_csv){

			#アドレス情報の分割。
			local($id,$mail,$name,$post,$address1,$address2,$address3,$tel,$fax,$other1,$other2,$other3,$other4,$other5,$sex,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$birth) = split(/,/,$_);

			#過去のメールアドレスと問い合わせメールアドレスの比較。
			if(@user_data[15] eq "$mail"){

				#フラグ立て。
				$flag = 1;

				#新しい問い合わせ情報形成。
				$_ = "$id,@user_data[15],@user_data[0] @user_data[1],@user_data[4]@user_data[5],@user_data[6],@user_data[7],@user_data[8],$tel2,$fax2,,,,,,@user_data[17],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$birth2\n";
			}else{
				#カウントアップ。
				$address_list++;
			}

			#保存情報を配列に保存。
			push(@renew,$_);
		}

		#アドレス情報の保存。
		if($flag == 1){

			#アドレス情報を書き込み。
			open(OUT, "> ./address/address.csv");	# 読み書きモードで開く
			flock(OUT, 2);				# ロック確認。ロック
			seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
			print OUT @renew;			# 書き込む
			truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
			close(OUT);				# closeすれば自動でロック解除

		}else{

			#15000件までしか取り込めない制限チェック。
			if($id < 15000){

				#保存情報形成。
				$line = "$address_list,@user_data[15],@user_data[0] @user_data[1],@user_data[4]@user_data[5],@user_data[6],@user_data[7],@user_data[8],$tel2,$fax2,,,,,,@user_data[17],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$birth2\n";

				#先頭に生成した要素を追加。
				unshift(@address_csv,$line);

				#アドレス情報を書き込み。
				open(OUT, "> ./address/address.csv");	# 読み書きモードで開く
				flock(OUT, 2);				# ロック確認。ロック
				seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
				print OUT @address_csv;			# 書き込む
				truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
				close(OUT);				# closeすれば自動でロック解除

			}
		}

		#パーミッションの変更。
		chmod 0600,"./address/address.csv"
	}

	##################################################
	# ASPデータ出力
	##################################################

	#ファイルを読み出す。
	open(IN,"./item.dat");
	flock(IN,1);		# ファイルを読み出しロック。
	my @item = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);

	my $item = "$in{'title1'},,,,0,0,0,0,,,,,@user_data[0]@user_data[1],@user_data[15],$times,$title,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$in{'no'},$in{'category'}$in{'page'}\n";

	#先頭に生成した要素を追加。
	unshift(@item,$item);

	#ファイルを書き出す。
	open(OUT, "> ./item.dat");		# 読み書きモードで開く
	flock(OUT, 2);				# ロック確認。ロック
	seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
	print OUT @item;			# 書き込む
	truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
	close(OUT);				# closeすれば自動でロック解除

	$user_data[22] =~ s/\n/<br>/g;
	$user_data[23] =~ s/\n/<br>/g;

	#ファイルを読み出す。
	open(IN,"./customer.dat");
	flock(IN,1);		# ファイルを読み出しロック。
	my @customer = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);

	my $customer = "@user_data[0]@user_data[1],@user_data[2]@user_data[3],@user_data[4]@user_data[5],@user_data[6],@user_data[7],@user_data[8],@user_data[9]\-@user_data[10]\-@user_data[11],@user_data[12]\-@user_data[13]\-@user_data[14],@user_data[15],$seibetsu,西暦@user_data[18]年@user_data[19]月@user_data[20]日,@user_data[21],$user_data[22],$user_data[23],1,$times,$title,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$in{'category'}$in{'page'}\n";

	#先頭に生成した要素を追加。
	unshift(@customer,$customer);

	#ファイルを書き出す。
	open(OUT, "> ./customer.dat");		# 読み書きモードで開く
	flock(OUT, 2);				# ロック確認。ロック
	seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
	print OUT @customer;			# 書き込む
	truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
	close(OUT);				# closeすれば自動でロック解除

	##################################################

}
##################################################
# ask_error
# エラー処理。
##################################################
sub ask_error{

	#エラー内容表示。

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
         <input type="hidden" name="title" value="$in{'title'}">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="no" value="$in{'no'}">
EOM

	if($kind eq "商品案内1"){

print<<"EOM";
         <input type="hidden" name="ask" value="on">
EOM

	}

	if($kind eq "商品案内2"){

print<<"EOM";
         <input type="hidden" name="detail" value="on">
EOM

	}


print<<"EOM";
         <input type="hidden" name="user_data" value="@user_data[0]">
         <input type="hidden" name="user_data" value="@user_data[1]">
         <input type="hidden" name="user_data" value="@user_data[2]">
         <input type="hidden" name="user_data" value="@user_data[3]">
         <input type="hidden" name="user_data" value="@user_data[4]">
         <input type="hidden" name="user_data" value="@user_data[5]">
         <input type="hidden" name="user_data" value="@user_data[6]">
         <input type="hidden" name="user_data" value="@user_data[7]">
         <input type="hidden" name="user_data" value="@user_data[8]">
         <input type="hidden" name="user_data" value="@user_data[9]">
         <input type="hidden" name="user_data" value="@user_data[10]">
         <input type="hidden" name="user_data" value="@user_data[11]">
         <input type="hidden" name="user_data" value="@user_data[12]">
         <input type="hidden" name="user_data" value="@user_data[13]">
         <input type="hidden" name="user_data" value="@user_data[14]">
         <input type="hidden" name="user_data" value="@user_data[15]">
         <input type="hidden" name="user_data" value="@user_data[16]">
         <input type="hidden" name="user_data" value="@user_data[17]">
         <input type="hidden" name="user_data" value="@user_data[18]">
         <input type="hidden" name="user_data" value="@user_data[19]">
         <input type="hidden" name="user_data" value="@user_data[20]">
         <input type="hidden" name="user_data" value="@user_data[21]">
         <input type="hidden" name="user_data" value="@user_data[22]">
         <input type="hidden" name="user_data" value="@user_data[23]">
         <input type="submit" value="入力画面に戻る">
         </form>
        </td>
       </tr>
      </table>
      </div>
EOM

}
##################################################
# mailCheck
# メールチェック。
##################################################
sub mailCheck{

	my ($mailAddr) = @_;

	my $errorNo = "";

	#メールアドレスが未入力か。
	if($mailAddr ne ""){

		#メールアドレスにコンマ「,」が含まれていないか。
		if($mailAddr =~ /\,/){
			$errorNo = 1;
		}

		#メールアドレスにアットマーク「@」が含まれているか。
		if($mailAddr !~ /@/){
			$errorNo = 2;
		}

		#メールアドレスに全角が含まれていないか。
		if($mailAddr =~ /[^0-9a-zA-Z\.\-\_\@]/){
			$errorNo = 3;
		}

		#メールアドレスのドメイン書式が不正か。
		if($mailAddr !~ /\.[a-zA-Z]{2,5}$/){
			$errorNo = 4;
		}

		#メールアドレスチェック補足。
		if(!$errorNo){

			$mail_regex =
				q{(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\} .
				q{\[\]\000-\037\x80-\xff])|"[^\\\\\x80-\xff\n\015"]*(?:\\\\[^\x80-\xff][} .
				q{^\\\\\x80-\xff\n\015"]*)*")(?:\.(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x} .
				q{80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff])|"[^\\\\\x80-} .
				q{\xff\n\015"]*(?:\\\\[^\x80-\xff][^\\\\\x80-\xff\n\015"]*)*"))*@(?:[^(} .
				q{\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\0} .
				q{00-\037\x80-\xff])|\[(?:[^\\\\\x80-\xff\n\015\[\]]|\\\\[^\x80-\xff])*} .
				q{\])(?:\.(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,} .
				q{;:".\\\\\[\]\000-\037\x80-\xff])|\[(?:[^\\\\\x80-\xff\n\015\[\]]|\\\\[} .
				q{^\x80-\xff])*\]))*};

			#メールアドレスの書式が不正か。
			if ($mailAddr !~ /^$mail_regex$/o){
				$errorNo = 4;
			}

			#メールアドレスの書式が不正か。
			if($mailAddr !~ /[\w\.\-]+\@[\w\.\-]+\.[a-zA-Z]{2,5}$/){
				$errorNo = 5;
			}
		}

	}else{
		$errorNo = 6;
	}
	return $errorNo;
}
##################################################
# dateCheck
# 日付チェック。
##################################################
sub dateCheck() {

	my($year, $mon, $day) = @_;

	my $errorNo = "";

	if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
		$errorNo = 1;
	}

	# その月の末日を計算。(2行目は閏年の計算)
	my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));

	if($day > $lastday){
		$errorNo = 1;
	}
	return $errorNo;
}

1;

