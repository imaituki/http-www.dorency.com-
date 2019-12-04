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
# shop_hidden_set
# パラメータ情報を取得。
##################################################
sub shop_hidden_set{

	#商品データ情報を形成。
	foreach $shop(@shop){

		#商品情報を分割。
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop);

		#商品データ情報を形成。
		$hidden .= "<input type=\"hidden\" name=\"$t1_code\" value=\"$shop\">\n";

	}

}
##################################################
# user_hidden_set
# パラメータ情報を取得。
##################################################
sub user_hidden_set{

$data_check = "No";

	#お客様データ情報を形成。
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user0\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user1\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user2\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user3\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user4\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user5\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user6\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user7\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user8\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user9\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user10\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user11\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user12\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user13\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user14\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user15\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user16\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user17\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user18\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user19\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user20\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user21\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user22\">\n";



}
##################################################
# delivery_hidden_set
# パラメータ情報を取得。
##################################################
sub delivery_hidden_set{

	#配送先データ情報を形成。
	foreach $cd1(@cookie_delivery1){

		local($t_code,$t_name1,$t_name2,$t_kana1,$t_kana2,$t_address1,$t_address2,$t_address3,$t_address4,$t_address5,$t_tel1,$t_tel2,$t_tel3) = split(/:/,$cd1);
		$DELIVERY_DATA{$t_code} = $cd1;

		#配送先データ情報を形成。
		$hidden .= "<input type=\"hidden\" name=\"$t_code\" value=\"$cd1\">\n";

	}
	foreach $cd2(@cookie_delivery2){

		local($t_code,$t_name1,$t_name2,$t_kana1,$t_kana2,$t_address1,$t_address2,$t_address3,$t_address4,$t_address5,$t_tel1,$t_tel2,$t_tel3) = split(/:/,$cd2);
		$DELIVERY_DATA{$t_code} = $cd2;

		#配送先データ情報を形成。
		$hidden .= "<input type=\"hidden\" name=\"$t_code\" value=\"$cd2\">\n";

	}
	foreach $cd3(@cookie_delivery3){

		local($t_code,$t_name1,$t_name2,$t_kana1,$t_kana2,$t_address1,$t_address2,$t_address3,$t_address4,$t_address5,$t_tel1,$t_tel2,$t_tel3) = split(/:/,$cd3);
		$DELIVERY_DATA{$t_code} = $cd3;

		#配送先データ情報を形成。
		$hidden .= "<input type=\"hidden\" name=\"$t_code\" value=\"$cd3\">\n";

	}

}
##################################################
# item_cookie_get
# 商品情報をクッキーから取得。
##################################################
sub item_cookie_get{

	#クッキー情報を取得。
	$cookie = $ENV{'HTTP_COOKIE'};

	#取得したクッキー情報を分解。
	@pairs = split(/;/,$cookie);

	#クッキーを精査。
	foreach $pair(@pairs){

		#クッキーをパラメータ名、データに分割。
		local($name,$value) = split(/=/,$pair);

		#パラメータ名からスペースを削除。
		$name =~ s/\s//g;

		#日付にマッチしデータがある場合。
		if($name =~ m/^COMMODITY$/ && $value ne ""){

			#商品情報を分割。
			(@shop1) = split(/,/,$value);

		}
	}

	#クッキーを精査。
	foreach $shop1(@shop1){

		#商品情報を分割。
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop1);

		#情報が存在していた場合。
		if($t1_category   ne "" 
		&& $t1_page       ne "" 
		&& $t1_code       ne "" 
		&& $t1_id         ne "" 
		&& $t1_unit       ne "" 
		&& $t1_unit_price ne "" 
		&& $t1_other1     ne "" 
		&& $t1_other2     ne ""){

			#記事内容情報を取得。
			if(-e "$rootdir/page_design/story/comment/$t1_category$t1_page.dat"){
				open(IN,"$rootdir/page_design/story/comment/$t1_category$t1_page.dat");
				flock(IN,1);		#ファイルを読み出しロック。
				@shop_storycomment = <IN>;
				flock(IN,8);		# ロック解除。
				close(IN);
			}

			#記事内容情報を精査。
			foreach (@shop_storycomment){

				#記事内容情報を分割。
				local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

				$id = sprintf("%010d",$no);

				#情報が存在していた場合。
				if($id eq $t1_id){

					#商品情報をクッキーデータに形成。
					$t_order .= "$shop1,";

					#商品情報を配列に代入。
					push(@shop,$shop1);

				}
			}
		}
	}


	#クッキーを設定。
	print"Set-Cookie: COMMODITY=$t_order; path=/;\n";

}
##################################################
# item_get
# 商品情報を取得。
##################################################
sub item_get{

	#クッキー情報を取得。
	$cookie = $ENV{'HTTP_COOKIE'};

	#取得したクッキー情報を分解。
	@pairs = split(/;/,$cookie);

	#クッキーを精査。
	foreach $pair(@pairs){

		#クッキーをパラメータ名、データに分割。
		local($name,$value) = split(/=/,$pair);

		#パラメータ名からスペースを削除。
		$name =~ s/\s//g;

		#日付にマッチしデータがある場合。
		if($name =~ m/^COMMODITY$/ && $value ne ""){

			#商品情報を分割。
			(@shop1) = split(/,/,$value);

		}
	}

	#クッキーを精査。
	foreach $shop1(@shop1){

		#商品情報を分割。
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop1);

		#情報が存在していた場合。
		if($t1_category   ne "" 
		&& $t1_page       ne "" 
		&& $t1_code       ne "" 
		&& $t1_id         ne "" 
		&& $t1_unit       ne "" 
		&& $t1_unit_price ne "" 
		&& $t1_other1     ne "" 
		&& $t1_other2     ne ""){

			#記事内容情報を取得。
			if(-e "$rootdir/page_design/story/comment/$t1_category$t1_page.dat"){
				open(IN,"$rootdir/page_design/story/comment/$t1_category$t1_page.dat");
				flock(IN,1);		#ファイルを読み出しロック。
				@shop_storycomment = <IN>;
				flock(IN,8);		# ロック解除。
				close(IN);
			}

			#記事内容情報を精査。
			foreach (@shop_storycomment){

				#記事内容情報を分割。
				local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

				$id = sprintf("%010d",$no);

				#情報が存在していた場合。
				if($id eq $t1_id){

					#パラメータを取得。
					while(($x,$y) = each %in){

						#パラメータ名が10桁の数字の場合。
						if($x =~ /^\d{10}/){

							#商品情報を分割。
							local($t2_category,$t2_page,$t2_code,$t2_id,$t2_unit,$t2_unit_price,$t2_other1,$t2_other2) = split(/:/,$y);

							#パラメータとクッキーが同じ場合。
							if($t1_category   eq $t2_category 
							&& $t1_page       eq $t2_page 
							&& $t1_code       eq $t2_code 
							&& $t1_id         eq $t2_id 
							&& $t1_unit       eq $t2_unit 
							&& $t1_unit_price eq $t2_unit_price 
							&& $t1_other1     eq $t2_other1 
							&& $t1_other2     eq $t2_other2){

								#商品情報をクッキーデータに形成。
								$t_order .= "$shop1,";

								#商品情報を配列に代入。
								push(@shop,$shop1);

							}
						}
					}
				}
			}
		}
	}


	#クッキーを設定。
	print"Set-Cookie: COMMODITY=$t_order; path=/;\n";

}
##################################################
# item_get_ssl
# 商品情報を取得。
##################################################
sub item_get_ssl{

	#パラメータを取得。
	while(($x,$y) = each %in){

		#パラメータ名が10桁の数字の場合。
		if($x =~ /^\d{10}/){

			#商品情報を配列に代入。
			push(@shop1,$y);

		}
	}

	#クッキーを精査。
	foreach $shop1(@shop1){

		#商品情報を分割。
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop1);

		#情報が存在していた場合。
		if($t1_category   ne "" 
		&& $t1_page       ne "" 
		&& $t1_code       ne "" 
		&& $t1_id         ne "" 
		&& $t1_unit       ne "" 
		&& $t1_unit_price ne "" 
		&& $t1_other1     ne "" 
		&& $t1_other2     ne ""){

			#記事内容情報を取得。
			if(-e "$rootdir/page_design/story/comment/$t1_category$t1_page.dat"){
				open(IN,"$rootdir/page_design/story/comment/$t1_category$t1_page.dat");
				flock(IN,1);		#ファイルを読み出しロック。
				@shop_storycomment = <IN>;
				flock(IN,8);		# ロック解除。
				close(IN);
			}

			#記事内容情報を精査。
			foreach (@shop_storycomment){

				#記事内容情報を分割。
				local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

				$id = sprintf("%010d",$no);

				#情報が存在していた場合。
				if($id eq $t1_id){

					#パラメータを取得。
					while(($x,$y) = each %in){

						#パラメータ名が10桁の数字の場合。
						if($x =~ /^\d{10}/){

							#商品情報を分割。
							local($t2_category,$t2_page,$t2_code,$t2_id,$t2_unit,$t2_unit_price,$t2_other1,$t2_other2) = split(/:/,$y);

							#パラメータとクッキーが同じ場合。
							if($t1_category   eq $t2_category 
							&& $t1_page       eq $t2_page 
							&& $t1_code       eq $t2_code 
							&& $t1_id         eq $t2_id 
							&& $t1_unit       eq $t2_unit 
							&& $t1_unit_price eq $t2_unit_price 
							&& $t1_other1     eq $t2_other1 
							&& $t1_other2     eq $t2_other2){

								#商品情報をクッキーデータに形成。
								$t_order .= "$shop1,";

								#商品情報を配列に代入。
								push(@shop,$shop1);

							}
						}
					}
				}
			}
		}
	}


	#クッキーを設定。
	print"Set-Cookie: COMMODITY=$t_order; path=/;\n";

}
##################################################
# item_set
# 商品情報を発行。
##################################################
sub item_set{

	#商品情報を取得。
	&item_get;

	#商品追加フラグを初期化。
	$add_flg = 0;

	#商品数を初期化。
	$item = 0;

	#商品データを代入。
	@shop2 = @shop;

	#商品データ情報を精査。
	foreach $shop2(@shop2){

		#商品情報を分割。
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop2);

		#同じ商品を選択した場合。
		if($t1_category   eq $in{'category'} 
		&& $t1_page       eq $in{'page'} 
		&& $t1_id         eq $in{'id'} 
		&& $t1_unit_price eq $in{'unit_price'} 
		&& $t1_other1     eq $in{'other1'} 
		&& $t1_other2     eq $in{'other2'}){

			#商品追加フラグ立て。
			$add_flg = 1;

			#商品数を設定。
			$t1_unit = $t1_unit + 1;

		}

		#商品情報を形成。
		$shop3 = "$t1_category:$t1_page:$t1_code:$t1_id:$t1_unit:$t1_unit_price:$t1_other1:$t1_other2";

		#商品情報をクッキーデータに形成。
		$tmp .= "$shop3,";

		#商品情報を配列に代入。
		push(@shop3,$shop3);

		#商品数をカウントアップ。
		$item++;

	}

	#違う商品の場合。
	if($add_flg == 0){

		#選択商品数をチェック。
		if($item < 50){

			#商品情報を形成。
			$shop3 = "$in{'category'}:$in{'page'}:$in{'code'}:$in{'id'}:$in{'unit'}:$in{'unit_price'}:$in{'other1'}:$in{'other2'}";

			#商品情報をクッキーデータに形成。
			$tmp .= "$shop3,";

			#商品情報を配列に代入。
			push(@shop3,$shop3);

		}else{

			push(@errorMsg,"選択できる商品は最大50種類です。");

		}
	}

	#商品データを代入。
	@shop = @shop3;

	#クッキーを設定。
	print"Set-Cookie: COMMODITY=$tmp; path=/;\n";

}
##################################################
# item_edit
# 商品情報を変更。
##################################################
sub item_edit{

	#商品情報を取得。
	&item_get;

	#商品データを代入。
	@shop2 = @shop;

	#商品データ情報を精査。
	foreach $shop2(@shop2){

		#商品情報を分割。
		local($t3_category,$t3_page,$t3_code,$t3_id,$t3_unit,$t3_unit_price,$t3_other1,$t3_other2) = split(/:/,$shop2);

		if($in{'submit'} eq "削除"){

			#削除フラグを初期化。
			$del_flg = 0;

			foreach $clear(@clear){

				if($clear eq "edit$t3_code"){

					#フラグ立て。
					$del_flg = 1;

				}
			}

			if($del_flg == 0){

				#商品情報を形成。
				$shop3 = "$t3_category:$t3_page:$t3_code:$t3_id:$t3_unit:$t3_unit_price:$t3_other1:$t3_other2";

				#商品情報をクッキーデータに形成。
				$tmp .= "$shop3,";

				#商品情報を配列に代入。
				push(@shop3,$shop3);

			}

		}elsif($in{'submit'} eq "一括削除"){

			#すべて削除なのでなにもしない

		}elsif($in{'submit'} eq "変更" || $in{'submit'} eq ""){

			my @itemStock = ();

			#サイトサーバー設定情報の読み込み。
			if(-e "./itemStock.dat"){

				open(IN,"./itemStock.dat");
				flock(IN,1);		#ファイルを読み出しロック。
				@itemStock = <IN>;
				flock(IN,8);		# ロック解除。
				close(IN);

			}

			my @data = ();

			#パラメータを取得。
			while(($x,$y) = each %in){

				#パラメータ名がedit+10桁の数字の場合。
				if($x =~ /^edit\d{10}/){

					#同じ商品を選択した場合。
					if($x eq "edit$t3_code"){

						#数量エラーの初期化。
						$errorFlg1 = "";
						$errorFlg2 = "";
						$errorMsg  = "";

						#数値入力をチェック。
						if($y =~ /[^0-9\.]+/){
							$errorFlg1 = 1;
						}else{

							@data = split(/\./,$y);

							if($#data > 1){
								$errorFlg1 = 1;
							}
							if($y <= 0){
								$errorFlg1 = 1;
							}
						}

						if($#itemStock != -1){

							my $data_id0 = "";
							my $data_id1 = "";
							my $data_id2 = "";
							my $data_id3 = "";
							my $data_id4 = "";

							if(-e "$rootdir/page_design/story/comment/$t3_category$t3_page.dat"){
								open(IN,"$rootdir/page_design/story/comment/$t3_category$t3_page.dat");
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

								if($id eq $t3_id){

									$data_id0 = $title;

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

										if($o0 eq $t3_unit_price){

											local($unit_price,$type) = split(/:/,$x);
											$unit_price              =~ s/０/0/g;
											$unit_price              =~ s/１/1/g;
											$unit_price              =~ s/２/2/g;
											$unit_price              =~ s/３/3/g;
											$unit_price              =~ s/４/4/g;
											$unit_price              =~ s/５/5/g;
											$unit_price              =~ s/６/6/g;
											$unit_price              =~ s/７/7/g;
											$unit_price              =~ s/８/8/g;
											$unit_price              =~ s/９/9/g;

											$data_id1 = $unit_price;
											$data_id2 = $type;

										}

										#商品価格のIDをカウントアップ。
										$o0++;

									}

									#商品詳細情報の分割。
									@OTHER1 = split(/<br>/,$cmt3);

									#項目1のIDを初期化。
									$o1 = 1;

									foreach $x(@OTHER1){

										if($o1 eq $t3_other1){
											$data_id3 = $x;
										}

										#項目1のIDをカウントアップ。
										$o1++;

									}

									#商品詳細情報の分割。
									@OTHER2 = split(/<br>/,$cmt4);

									#項目2のIDを初期化。
									$o2 = 1;

									foreach $x(@OTHER2){

										if($o2 eq $t3_other2){
											$data_id4 = $x;
										}

										#項目2のIDをカウントアップ。
										$o2++;

									}

								}

							}

							foreach my $itemStock(@itemStock){

								my(@is_data) = split(/\,/,$itemStock);

								$is_data[7] = sprintf("%010d",$is_data[7]);

								$is_data[4] =~ s/：/:/g;
								$is_data[4] =~ s/\&\#44\;//g;
								$is_data[4] =~ s/、//g;
								$is_data[4] =~ s/，//g;

								$is_data[1] =~ s/：/:/g;
								$is_data[1] =~ s/\&\#44\;//g;
								$is_data[1] =~ s/、//g;
								$is_data[1] =~ s/，//g;

								if($is_data[0] eq $data_id0 
								&& $is_data[1] eq $data_id2 
								&& $is_data[2] eq $data_id3 
								&& $is_data[3] eq $data_id4 
								&& $is_data[4] eq $data_id1 
								&& $is_data[7] eq $t3_id 
								&& $is_data[8] eq "$t3_category$t3_page"){

									if($is_data[6]){

										if($is_data[6] < $y){

											$errorFlg2 = 1;
											$errorMsg  = "$data_id0/$is_data[1]/$is_data[2]/$is_data[3]の数量は在庫数を上回っています。<br>$is_data[6]以下を入力してください。";

										}

									}

								}

							}

						}

						if($errorFlg1 eq "" && $errorFlg2 eq ""){

							#商品情報を形成。
							$shop3 = "$t3_category:$t3_page:$t3_code:$t3_id:$y:$t3_unit_price:$t3_other1:$t3_other2";

						}else{

							#商品情報を形成。
							$shop3 = "$t3_category:$t3_page:$t3_code:$t3_id:$t3_unit:$t3_unit_price:$t3_other1:$t3_other2";

							if(-e "$rootdir/page_design/story/comment/$t3_category$t3_page.dat"){
								open(IN,"$rootdir/page_design/story/comment/$t3_category$t3_page.dat");
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

								if($id eq $t3_id){

									if($errorFlg1 == 1){
										push(@errorMsg,"$titleの数量は半角数字を入力してください。");
									}

									if($errorFlg2 == 1){
										push(@errorMsg,$errorMsg);
									}

								}
							}
						}

						#商品情報をクッキーデータに形成。
						$tmp .= "$shop3,";

						#商品情報を配列に代入。
						push(@shop3,$shop3);

					}
				}
			}

			undef(@itemStock);

		}
	}

	#商品データを代入。
	@shop = @shop3;

	#クッキーを設定。
	print"Set-Cookie: COMMODITY=$tmp; path=/;\n";

}
##################################################
# cart_user_cookie_get
# ユーザー情報をクッキーから取得。
##################################################
sub cart_user_cookie_get{

	#クッキー情報を取得。
	$cookie = $ENV{'HTTP_COOKIE'};

	#取得したクッキー情報を分解。
	@pairs = split(/;/,$cookie);

	#クッキー情報を精査。
	foreach $pair(@pairs){

		#ローカル変数を設定。
		local($name,$value) = split(/=/,$pair);

		#パラメータ名からスペースを削除。
		$name =~ s/\s//g;

		#日付にマッチしデータがある場合。
		if($name =~ m/^BUYER$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#商品情報を分割。
			(@user_data) = split(/,/,$value);

		}
	}

	#カンマを変換。
	$user_data[0]  =~ s/&#44;/,/g;
	$user_data[1]  =~ s/&#44;/,/g;
	$user_data[2]  =~ s/&#44;/,/g;
	$user_data[3]  =~ s/&#44;/,/g;
	$user_data[4]  =~ s/&#44;/,/g;
	$user_data[5]  =~ s/&#44;/,/g;
	$user_data[6]  =~ s/&#44;/,/g;
	$user_data[7]  =~ s/&#44;/,/g;
	$user_data[8]  =~ s/&#44;/,/g;
	$user_data[9]  =~ s/&#44;/,/g;
	$user_data[10] =~ s/&#44;/,/g;
	$user_data[11] =~ s/&#44;/,/g;
	$user_data[12] =~ s/&#44;/,/g;
	$user_data[13] =~ s/&#44;/,/g;
	$user_data[14] =~ s/&#44;/,/g;
	$user_data[15] =~ s/&#44;/,/g;
	$user_data[16] =~ s/&#44;/,/g;
	$user_data[17] =~ s/&#44;/,/g;
	$user_data[18] =~ s/&#44;/,/g;
	$user_data[19] =~ s/&#44;/,/g;
	$user_data[20] =~ s/&#44;/,/g;
	$user_data[21] =~ s/&#44;/,/g;
	$user_data[22] =~ s/&#44;/,/g;

	#名前、メール、URLを定義。
	$cart_user0  = $user_data[0];
	$cart_user1  = $user_data[1];
	$cart_user2  = $user_data[2];
	$cart_user3  = $user_data[3];
	$cart_user4  = $user_data[4];
	$cart_user5  = $user_data[5];
	$cart_user6  = $user_data[6];
	$cart_user7  = $user_data[7];
	$cart_user8  = $user_data[8];
	$cart_user9  = $user_data[9];
	$cart_user10 = $user_data[10];
	$cart_user11 = $user_data[11];
	$cart_user12 = $user_data[12];
	$cart_user13 = $user_data[13];
	$cart_user14 = $user_data[14];
	$cart_user15 = $user_data[15];
	$cart_user16 = $user_data[16];
	$cart_user17 = $user_data[17];
	$cart_user18 = $user_data[18];
	$cart_user19 = $user_data[19];
	$cart_user20 = $user_data[20];
	$cart_user21 = $user_data[21];
	$cart_user22 = $user_data[22];

}
##################################################
# cart_user_get
# ユーザー情報を取得。
##################################################
sub cart_user_get{

	#クッキー情報を取得。
	$cookie = $ENV{'HTTP_COOKIE'};

	#取得したクッキー情報を分解。
	@pairs = split(/;/,$cookie);

	#クッキー情報を精査。
	foreach $pair(@pairs){

		#ローカル変数を設定。
		local($name,$value) = split(/=/,$pair);

		#パラメータ名からスペースを削除。
		$name =~ s/\s//g;

		#日付にマッチしデータがある場合。
		if($name =~ m/^BUYER$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#商品情報を分割。
			(@buyer) = split(/,/,$value);

		}
	}

	#名前、メール、URLを定義。
	if(@user_data[0]  eq $buyer[0] ){$cart_user0  = $buyer[0]; }
	if(@user_data[1]  eq $buyer[1] ){$cart_user1  = $buyer[1]; }
	if(@user_data[2]  eq $buyer[2] ){$cart_user2  = $buyer[2]; }
	if(@user_data[3]  eq $buyer[3] ){$cart_user3  = $buyer[3]; }
	if(@user_data[4]  eq $buyer[4] ){$cart_user4  = $buyer[4]; }
	if(@user_data[5]  eq $buyer[5] ){$cart_user5  = $buyer[5]; }
	if(@user_data[6]  eq $buyer[6] ){$cart_user6  = $buyer[6]; }
	if(@user_data[7]  eq $buyer[7] ){$cart_user7  = $buyer[7]; }
	if(@user_data[8]  eq $buyer[8] ){$cart_user8  = $buyer[8]; }
	if(@user_data[9]  eq $buyer[9] ){$cart_user9  = $buyer[9]; }
	if(@user_data[10] eq $buyer[10]){$cart_user10 = $buyer[10];}
	if(@user_data[11] eq $buyer[11]){$cart_user11 = $buyer[11];}
	if(@user_data[12] eq $buyer[12]){$cart_user12 = $buyer[12];}
	if(@user_data[13] eq $buyer[13]){$cart_user13 = $buyer[13];}
	if(@user_data[14] eq $buyer[14]){$cart_user14 = $buyer[14];}
	if(@user_data[15] eq $buyer[15]){$cart_user15 = $buyer[15];}
	if(@user_data[16] eq $buyer[16]){$cart_user16 = $buyer[16];}
	if(@user_data[17] eq $buyer[17]){$cart_user17 = $buyer[17];}
	if(@user_data[18] eq $buyer[18]){$cart_user18 = $buyer[18];}
	if(@user_data[19] eq $buyer[19]){$cart_user19 = $buyer[19];}
	if(@user_data[20] eq $buyer[20]){$cart_user20 = $buyer[20];}
	if(@user_data[21] eq $buyer[21]){$cart_user21 = $buyer[21];}
	if(@user_data[22] eq $buyer[22]){$cart_user22 = $buyer[22];}

	#カンマを変換。
	$cart_user0  =~ s/&#44;/,/g;
	$cart_user1  =~ s/&#44;/,/g;
	$cart_user2  =~ s/&#44;/,/g;
	$cart_user3  =~ s/&#44;/,/g;
	$cart_user4  =~ s/&#44;/,/g;
	$cart_user5  =~ s/&#44;/,/g;
	$cart_user6  =~ s/&#44;/,/g;
	$cart_user7  =~ s/&#44;/,/g;
	$cart_user8  =~ s/&#44;/,/g;
	$cart_user9  =~ s/&#44;/,/g;
	$cart_user10 =~ s/&#44;/,/g;
	$cart_user11 =~ s/&#44;/,/g;
	$cart_user12 =~ s/&#44;/,/g;
	$cart_user13 =~ s/&#44;/,/g;
	$cart_user14 =~ s/&#44;/,/g;
	$cart_user15 =~ s/&#44;/,/g;
	$cart_user16 =~ s/&#44;/,/g;
	$cart_user17 =~ s/&#44;/,/g;
	$cart_user18 =~ s/&#44;/,/g;
	$cart_user19 =~ s/&#44;/,/g;
	$cart_user20 =~ s/&#44;/,/g;
	$cart_user21 =~ s/&#44;/,/g;
	$cart_user22 =~ s/&#44;/,/g;

}
##################################################
# cart_user_set
# ユーザー情報を発行。
##################################################
sub cart_user_set{

	#クッキーは国際時間をキーとし、保存日数は365日間。（秒、分、時、日、月、年、曜日、1月1日からの経過年数、サマータイム期間中は1）
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#曜日名と週名を英語表示の配列で定義。
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365日後の国際時間を指定フォーマット化。[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	#ユーザー情報のチェック。
	if(@user_data[0] eq "")                              {push(@errorMsg,"ご注文者名（性）が入力されていません。");}
	if(@user_data[1] eq "")                              {push(@errorMsg,"ご注文者名（名）が入力されていません。");}
	if($cri1 eq "1" && @user_data[2] eq "")              {push(@errorMsg,"ご注文者名のフリガナ（性）が入力されていません。");}
	if($cri1 eq "1" && @user_data[3] eq "")              {push(@errorMsg,"ご注文者名のフリガナ（名）が入力されていません。");}
	if(@user_data[4] eq "" || length(@user_data[4]) != 3){push(@errorMsg,"郵便番号（１つ目の欄）が正しく入力されていません。");}
	if(@user_data[4] =~ /[^0-9]/)                        {push(@errorMsg,"郵便番号（１つ目の欄）に半角数字が入力されていません。");}
	if(@user_data[5] eq "" || length(@user_data[5]) != 4){push(@errorMsg,"郵便番号（２つ目の欄）が正しく入力されていません。");}
	if(@user_data[5] =~ /[^0-9]/)                        {push(@errorMsg,"郵便番号（２つ目の欄）に半角数字が入力されていません。");}
	if(@user_data[6] eq "")                              {push(@errorMsg,"都道府県が選択されていません。");}
	if(@user_data[7] eq "")                              {push(@errorMsg,"住所（郡市区町村）が入力されていません。");}
	if(@user_data[8] eq "")                              {push(@errorMsg,"住所（それ以降の住所）がされていません。");}
	if(@user_data[9] eq "")                              {push(@errorMsg,"電話番号（１つ目の欄）が入力されていません。");}
	if(@user_data[9] =~ /[^0-9]/)                        {push(@errorMsg,"電話番号（１つ目の欄）に半角数字が入力されていません。");}
	if(@user_data[10] eq "")                             {push(@errorMsg,"電話番号（２つ目の欄）が入力されていません。");}
	if(@user_data[10] =~ /[^0-9]/)                       {push(@errorMsg,"電話番号（２つ目の欄）に半角数字が入力されていません。");}
	if(@user_data[11] eq "")                             {push(@errorMsg,"電話番号（３つ目の欄）が入力されていません。");}
	if(@user_data[11] =~ /[^0-9]/)                       {push(@errorMsg,"電話番号（３つ目の欄）に半角数字が入力されていません。");}

	#ＦＡＸ番号入力エラー。
	if($cri2 eq "1"){
		if(@user_data[12] eq "")      {push(@errorMsg,"ＦＡＸ番号（１つ目の欄）が正しく入力されていません。");}
		if(@user_data[12] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）に半角数字が入力されていません。");}
		if(@user_data[13] eq "")      {push(@errorMsg,"ＦＡＸ番号（２つ目の欄）が正しく入力されていません。");}
		if(@user_data[13] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（２つ目の欄）に半角数字が入力されていません。");}
		if(@user_data[14] eq "")      {push(@errorMsg,"ＦＡＸ番号（３つ目の欄）が正しく入力されていません。");}
		if(@user_data[14] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（３つ目の欄）に半角数字が入力されていません。");}
	}elsif($cri2 eq "2"){
		if(@user_data[12] ne "" && @user_data[12] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）に半角数字が入力されていません。");}
		if(@user_data[13] ne "" && @user_data[13] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（２つ目の欄）に半角数字が入力されていません。");}
		if(@user_data[14] ne "" && @user_data[14] =~ /[^0-9]/){push(@errorMsg,"ＦＡＸ番号（３つ目の欄）に半角数字が入力されていません。");}
		if(@user_data[12] eq "" && @user_data[13] ne "" && @user_data[14] ne ""){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）が入力されていません。");}
		if(@user_data[12] ne "" && @user_data[13] eq "" && @user_data[14] ne ""){push(@errorMsg,"ＦＡＸ番号（２つ目の欄）が入力されていません。");}
		if(@user_data[12] ne "" && @user_data[13] ne "" && @user_data[14] eq ""){push(@errorMsg,"ＦＡＸ番号（３つ目の欄）が入力されていません。");}
		if(@user_data[12] eq "" && @user_data[13] eq "" && @user_data[14] ne ""){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）（２つ目の欄）が入力されていません。");}
		if(@user_data[12] eq "" && @user_data[13] ne "" && @user_data[14] eq ""){push(@errorMsg,"ＦＡＸ番号（１つ目の欄）（３つ目の欄）が入力されていません。");}
		if(@user_data[12] ne "" && @user_data[13] eq "" && @user_data[14] eq ""){push(@errorMsg,"ＦＡＸ番号（２つ目の欄）（３つ目の欄）が入力されていません。");}
	}

	#メールアドレス入力エラー。
	if(@user_data[15] ne @user_data[16]){
		push(@errorMsg,"メールアドレス（確認用）が一致してません。");
	}else{
		$errorMail = mailCheck();
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

	#性別入力エラー。
	if($cri3 eq "1" && @user_data[17] eq ""){push(@errorMsg,"性別が選択されていません。");}

	#生年月日入力エラー。
	if($cri4 eq "1"){
		if(@user_data[18] eq "")      {push(@errorMsg,"生年月日（年）が入力されていません。");}
		if(@user_data[19] eq "")      {push(@errorMsg,"生年月日（月）が入力されていません。");}
		if(@user_data[20] eq "")      {push(@errorMsg,"生年月日（日）が入力されていません。");}
		if(@user_data[18] =~ /[^0-9]/){push(@errorMsg,"生年月日（年）に半角数字が入力されていません。");}
		if(@user_data[19] =~ /[^0-9]/){push(@errorMsg,"生年月日（月）に半角数字が入力されていません。");}
		if(@user_data[20] =~ /[^0-9]/){push(@errorMsg,"生年月日（日）に半角数字が入力されていません。");}
		if(@user_data[18] ne "" && @user_data[19] ne "" && @user_data[20] ne "" && 
			@user_data[18] !~ /[^0-9]/ && @user_data[19] !~ /[^0-9]/ && @user_data[20] !~ /[^0-9]/){
			$errorDate = dateCheck();
			if($errorDate eq "1"){
				push(@errorMsg,"生年月日が不正です。");
			}
		}
	}elsif($cri4 eq "2"){
		if(@user_data[18] ne "" && @user_data[18] =~ /[^0-9]/){push(@errorMsg,"生年月日（年）に半角数字が入力されていません。");}
		if(@user_data[19] ne "" && @user_data[19] =~ /[^0-9]/){push(@errorMsg,"生年月日（月）に半角数字が入力されていません。");}
		if(@user_data[20] ne "" && @user_data[20] =~ /[^0-9]/){push(@errorMsg,"生年月日（日）に半角数字が入力されていません。");}
		if(@user_data[18] ne "" && @user_data[19] ne "" && @user_data[20] ne "" && 
			@user_data[18] !~ /[^0-9]/ && @user_data[19] !~ /[^0-9]/ && @user_data[20] !~ /[^0-9]/){
			$errorDate = dateCheck();
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

	#入力サイズチェック。（自由入力項目）
	if($cri7 eq "1"){
		if(@user_data[21] eq ""){
			push(@errorMsg,"$cri8が入力されていません。");
		}
	}
	if(length(@user_data[21]) > 1000){
		push(@errorMsg,"$cri8の入力が多すぎます。");
	}else{
		@user_data[21] =~ s/<br>/&lt;br&gt;/g;
	}

	if($#errorMsg == -1){

		#保存するクッキー情報を整列。
		$buyer = "@user_data[0],@user_data[1],@user_data[2],@user_data[3],@user_data[4],@user_data[5],@user_data[6],@user_data[7],@user_data[8],@user_data[9],@user_data[10],@user_data[11],@user_data[12],@user_data[13],@user_data[14],@user_data[15],@user_data[16],@user_data[17],@user_data[18],@user_data[19],@user_data[20],@user_data[21],@user_data[22]";

		$buyer =~ s/&quot;/&quot/g;
		$buyer =~ s/&lt;/&lt/g;
		$buyer =~ s/&gt;/&gt/g;
		$buyer =~ s/&#44;/&#44/g;

		if(@user_data[22] eq "on"){

			#user_dataが「on」の場合は、日付付きでクッキーを設定。
			print"Set-Cookie: BUYER=$buyer; expires=$date_gmt path=/;\n";

		}else{

			#クッキーを設定。
			print"Set-Cookie: BUYER=$buyer path=/;\n";

		}

	}

	#名前、メール、URLを定義。
	$cart_user0  = @user_data[0];
	$cart_user1  = @user_data[1];
	$cart_user2  = @user_data[2];
	$cart_user3  = @user_data[3];
	$cart_user4  = @user_data[4];
	$cart_user5  = @user_data[5];
	$cart_user6  = @user_data[6];
	$cart_user7  = @user_data[7];
	$cart_user8  = @user_data[8];
	$cart_user9  = @user_data[9];
	$cart_user10 = @user_data[10];
	$cart_user11 = @user_data[11];
	$cart_user12 = @user_data[12];
	$cart_user13 = @user_data[13];
	$cart_user14 = @user_data[14];
	$cart_user15 = @user_data[15];
	$cart_user16 = @user_data[16];
	$cart_user17 = @user_data[17];
	$cart_user18 = @user_data[18];
	$cart_user19 = @user_data[19];
	$cart_user20 = @user_data[20];
	$cart_user21 = @user_data[21];
	$cart_user22 = @user_data[22];

	#カンマを変換。
	$cart_user0  =~ s/&#44;/,/g;
	$cart_user1  =~ s/&#44;/,/g;
	$cart_user2  =~ s/&#44;/,/g;
	$cart_user3  =~ s/&#44;/,/g;
	$cart_user4  =~ s/&#44;/,/g;
	$cart_user5  =~ s/&#44;/,/g;
	$cart_user6  =~ s/&#44;/,/g;
	$cart_user7  =~ s/&#44;/,/g;
	$cart_user8  =~ s/&#44;/,/g;
	$cart_user9  =~ s/&#44;/,/g;
	$cart_user10 =~ s/&#44;/,/g;
	$cart_user11 =~ s/&#44;/,/g;
	$cart_user12 =~ s/&#44;/,/g;
	$cart_user13 =~ s/&#44;/,/g;
	$cart_user14 =~ s/&#44;/,/g;
	$cart_user15 =~ s/&#44;/,/g;
	$cart_user16 =~ s/&#44;/,/g;
	$cart_user17 =~ s/&#44;/,/g;
	$cart_user18 =~ s/&#44;/,/g;
	$cart_user19 =~ s/&#44;/,/g;
	$cart_user20 =~ s/&#44;/,/g;
	$cart_user21 =~ s/&#44;/,/g;
	$cart_user22 =~ s/&#44;/,/g;

}
##################################################
# delivery_cookie_get
# 配送先情報をクッキーから取得。
##################################################
sub delivery_cookie_get{

	#クッキー情報を取得。
	$cookie = $ENV{'HTTP_COOKIE'};

	#取得したクッキー情報を分解。
	@pairs = split(/;/,$cookie);

	#クッキーを精査。
	foreach $pair(@pairs){

		#クッキーをパラメータ名、データに分割。
		local($name,$value) = split(/=/,$pair);

		#パラメータ名からスペースを削除。
		$name =~ s/\s//g;

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY1$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery1) = split(/,/,$value);

		}

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY2$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery2) = split(/,/,$value);

		}

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY3$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery3) = split(/,/,$value);

		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery1(@t1_cookie_delivery1){

		#配送先情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery1);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#配送先情報をクッキーデータに形成。
			$t_delivery1 .= "$t1_cookie_delivery1,";

			#配送先情報を配列に代入。
			push(@cookie_delivery1,$t1_cookie_delivery1);

		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery2(@t1_cookie_delivery2){

		#商品情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery2);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#配送先情報をクッキーデータに形成。
			$t_delivery2 .= "$t1_cookie_delivery2,";

			#配送先情報を配列に代入。
			push(@cookie_delivery2,$t1_cookie_delivery2);

		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery3(@t1_cookie_delivery3){

		#商品情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery3);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#配送先情報をクッキーデータに形成。
			$t_delivery3 .= "$t1_cookie_delivery3,";

			#配送先情報を配列に代入。
			push(@cookie_delivery3,$t1_cookie_delivery3);

		}
	}

}
##################################################
# delivery_get
# 配送先情報を取得。
##################################################
sub delivery_get{

	#クッキー情報を取得。
	$cookie = $ENV{'HTTP_COOKIE'};

	#取得したクッキー情報を分解。
	@pairs = split(/;/,$cookie);

	#クッキーを精査。
	foreach $pair(@pairs){

		#クッキーをパラメータ名、データに分割。
		local($name,$value) = split(/=/,$pair);

		#パラメータ名からスペースを削除。
		$name =~ s/\s//g;

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY1$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery1) = split(/,/,$value);

		}

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY2$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery2) = split(/,/,$value);

		}

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY3$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery3) = split(/,/,$value);

		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery1(@t1_cookie_delivery1){

		#配送先情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery1);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#パラメータを取得。
			while(($x,$y) = each %in){

				#パラメータ名が11桁の数字の場合。
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#商品情報を分割。
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#パラメータとクッキーが同じ場合。
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#配送先情報をクッキーデータに形成。
						$t_delivery1 .= "$t1_cookie_delivery1,";

						#配送先情報を配列に代入。
						push(@cookie_delivery1,$t1_cookie_delivery1);

					}
				}
			}
		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery2(@t1_cookie_delivery2){

		#商品情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery2);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#パラメータを取得。
			while(($x,$y) = each %in){

				#パラメータ名が11桁の数字の場合。
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#商品情報を分割。
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#パラメータとクッキーが同じ場合。
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#配送先情報をクッキーデータに形成。
						$t_delivery2 .= "$t1_cookie_delivery2,";

						#配送先情報を配列に代入。
						push(@cookie_delivery2,$t1_cookie_delivery2);

					}
				}
			}
		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery3(@t1_cookie_delivery3){

		#商品情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery3);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#パラメータを取得。
			while(($x,$y) = each %in){

				#パラメータ名が11桁の数字の場合。
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#商品情報を分割。
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#パラメータとクッキーが同じ場合。
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#配送先情報をクッキーデータに形成。
						$t_delivery3 .= "$t1_cookie_delivery3,";

						#配送先情報を配列に代入。
						push(@cookie_delivery3,$t1_cookie_delivery3);

					}
				}
			}
		}
	}

	#クッキーは国際時間をキーとし、保存日数は365日間。（秒、分、時、日、月、年、曜日、1月1日からの経過年数、サマータイム期間中は1）
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#曜日名と週名を英語表示の配列で定義。
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365日後の国際時間を指定フォーマット化。[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	$t_delivery1 =~ s/&quot;/&quot/g;
	$t_delivery1 =~ s/&lt;/&lt/g;
	$t_delivery1 =~ s/&gt;/&gt/g;
	$t_delivery1 =~ s/&#44;/&#44/g;

	$t_delivery2 =~ s/&quot;/&quot/g;
	$t_delivery2 =~ s/&lt;/&lt/g;
	$t_delivery2 =~ s/&gt;/&gt/g;
	$t_delivery2 =~ s/&#44;/&#44/g;

	$t_delivery3 =~ s/&quot;/&quot/g;
	$t_delivery3 =~ s/&lt;/&lt/g;
	$t_delivery3 =~ s/&gt;/&gt/g;
	$t_delivery3 =~ s/&#44;/&#44/g;

	#クッキーを設定。
	print"Set-Cookie: DELIVERY1=$t_delivery1; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY2=$t_delivery2; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY3=$t_delivery3; expires=$date_gmt; path=/;\n";

}
##################################################
# delivery_set
# 配送先情報を発行。
##################################################
sub delivery_set{

	#配送先情報を取得。
	&delivery_get;

	#ユーザデータ入力エラー。
	if(@delivery_address[0] eq "")                                     {push(@errorMsg,"お名前（性）が入力されていません。");}
	if(@delivery_address[1] eq "")                                     {push(@errorMsg,"お名前（名）が入力されていません。");}
	if(@delivery_address[2] eq "")                                     {push(@errorMsg,"お名前のフリガナ（性）が入力されていません。");}
	if(@delivery_address[3] eq "")                                     {push(@errorMsg,"お名前のフリガナ（名）が入力されていません。");}
	if(@delivery_address[4] eq "" || length(@delivery_address[4]) != 3){push(@errorMsg,"郵便番号（１つ目の欄）が正しく入力されていません。");}
	if(@delivery_address[4] =~ /[^0-9]/)                               {push(@errorMsg,"郵便番号（１つ目の欄）に半角数字が入力されていません。");}
	if(@delivery_address[5] eq "" || length(@delivery_address[5]) != 4){push(@errorMsg,"郵便番号（２つ目の欄）が正しく入力されていません。");}
	if(@delivery_address[5] =~ /[^0-9]/)                               {push(@errorMsg,"郵便番号（２つ目の欄）に半角数字が入力されていません。");}
	if(@delivery_address[6] eq "")                                     {push(@errorMsg,"都道府県が選択されていません。");}
	if(@delivery_address[7] eq "")                                     {push(@errorMsg,"住所（郡市区町村）が入力されていません。");}
	if(@delivery_address[8] eq "")                                     {push(@errorMsg,"住所（それ以降の住所）がされていません。");}
	if(@delivery_address[9] eq "")                                     {push(@errorMsg,"電話番号（１つ目の欄）が入力されていません。");}
	if(@delivery_address[9] =~ /[^0-9]/)                               {push(@errorMsg,"電話番号（１つ目の欄）に半角数字が入力されていません。");}
	if(@delivery_address[10] eq "")                                    {push(@errorMsg,"電話番号（２つ目の欄）が入力されていません。");}
	if(@delivery_address[10] =~ /[^0-9]/)                              {push(@errorMsg,"電話番号（２つ目の欄）に半角数字が入力されていません。");}
	if(@delivery_address[11] eq "")                                    {push(@errorMsg,"電話番号（３つ目の欄）が入力されていません。");}
	if(@delivery_address[11] =~ /[^0-9]/)                              {push(@errorMsg,"電話番号（３つ目の欄）に半角数字が入力されていません。");}

	#配送先情報を形成。
	$t_delivery = "$code:@delivery_address[0]:@delivery_address[1]:@delivery_address[2]:@delivery_address[3]:@delivery_address[4]:@delivery_address[5]:@delivery_address[6]:@delivery_address[7]:@delivery_address[8]:@delivery_address[9]:@delivery_address[10]:@delivery_address[11]";

	#クッキー別配送先数。
	$c_delivery1 = $#cookie_delivery1 + 1;
	$c_delivery2 = $#cookie_delivery2 + 1;
	$c_delivery3 = $#cookie_delivery3 + 1;

	#トータル配送先数。
	$total_delivery = $c_delivery1 + $c_delivery2 + $c_delivery3;

	#入力データがエラーでない。
	if($#errorMsg == -1){

		#トータル配送先数が10以下の場合。
		if($total_delivery < 10){

			#1クッキー当たり4件まで保存。
			if($c_delivery1 < 4){

				#配送先情報をクッキーデータに形成。
				$t_delivery1 .= "$t_delivery,";

				#配送先情報を配列に代入。
				push(@cookie_delivery1,$t_delivery);

			}elsif($c_delivery2 < 4){

				#配送先情報をクッキーデータに形成。
				$t_delivery2 .= "$t_delivery,";

				#配送先情報を配列に代入。
				push(@cookie_delivery2,$t_delivery);

			}elsif($c_delivery3 < 2){

				#配送先情報をクッキーデータに形成。
				$t_delivery3 .= "$t_delivery,";

				#配送先情報を配列に代入。
				push(@cookie_delivery3,$t_delivery);

			}
		}else{

			push(@errorMsg,"追加できる配送先は最大10です。");

		}
	}

	#クッキーは国際時間をキーとし、保存日数は365日間。（秒、分、時、日、月、年、曜日、1月1日からの経過年数、サマータイム期間中は1）
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#曜日名と週名を英語表示の配列で定義。
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365日後の国際時間を指定フォーマット化。[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	$t_delivery1 =~ s/&quot;/&quot/g;
	$t_delivery1 =~ s/&lt;/&lt/g;
	$t_delivery1 =~ s/&gt;/&gt/g;
	$t_delivery1 =~ s/&#44;/&#44/g;

	$t_delivery2 =~ s/&quot;/&quot/g;
	$t_delivery2 =~ s/&lt;/&lt/g;
	$t_delivery2 =~ s/&gt;/&gt/g;
	$t_delivery2 =~ s/&#44;/&#44/g;

	$t_delivery3 =~ s/&quot;/&quot/g;
	$t_delivery3 =~ s/&lt;/&lt/g;
	$t_delivery3 =~ s/&gt;/&gt/g;
	$t_delivery3 =~ s/&#44;/&#44/g;

	#クッキーを設定。
	print"Set-Cookie: DELIVERY1=$t_delivery1; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY2=$t_delivery2; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY3=$t_delivery3; expires=$date_gmt; path=/;\n";

}
##################################################
# delivery_edit
# 配送先情報を変更。
##################################################
sub delivery_edit{

	#クッキー情報を取得。
	$cookie = $ENV{'HTTP_COOKIE'};

	#取得したクッキー情報を分解。
	@pairs = split(/;/,$cookie);

	#クッキーを精査。
	foreach $pair(@pairs){

		#クッキーをパラメータ名、データに分割。
		local($name,$value) = split(/=/,$pair);

		#パラメータ名からスペースを削除。
		$name =~ s/\s//g;

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY1$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery1) = split(/,/,$value);

		}

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY2$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery2) = split(/,/,$value);

		}

		#マッチしたデータがある場合。
		if($name =~ m/^DELIVERY3$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#配送先情報を分割。
			(@t1_cookie_delivery3) = split(/,/,$value);

		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery1(@t1_cookie_delivery1){

		#配送先情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery1);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#パラメータを取得。
			while(($x,$y) = each %in){

				#パラメータ名が11桁の数字の場合。
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#商品情報を分割。
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#パラメータとクッキーが同じ場合。
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#削除フラグを初期化。
						$del_flg1 = 0;

						foreach $clear(@clear){

							if($clear eq $t1_code){

								#フラグ立て。
								$del_flg1 = 1;

							}
						}

						if($del_flg1 == 0){

							#配送先情報をクッキーデータに形成。
							$t_delivery1 .= "$t1_cookie_delivery1,";

							#配送先情報を配列に代入。
							push(@cookie_delivery1,$t1_cookie_delivery1);

						}
					}
				}
			}
		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery2(@t1_cookie_delivery2){

		#商品情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery2);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#パラメータを取得。
			while(($x,$y) = each %in){

				#パラメータ名が11桁の数字の場合。
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#商品情報を分割。
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#パラメータとクッキーが同じ場合。
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#削除フラグを初期化。
						$del_flg2 = 0;

						foreach $clear(@clear){

							if($clear eq $t1_code){

								#フラグ立て。
								$del_flg2 = 1;

							}
						}

						if($del_flg2 == 0){

							#配送先情報をクッキーデータに形成。
							$t_delivery2 .= "$t1_cookie_delivery2,";

							#配送先情報を配列に代入。
							push(@cookie_delivery2,$t1_cookie_delivery2);

						}
					}
				}
			}
		}
	}

	#クッキーを精査。
	foreach $t1_cookie_delivery3(@t1_cookie_delivery3){

		#商品情報を分割。
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery3);

		#情報が存在していた場合。
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#パラメータを取得。
			while(($x,$y) = each %in){

				#パラメータ名が11桁の数字の場合。
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#商品情報を分割。
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#パラメータとクッキーが同じ場合。
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#削除フラグを初期化。
						$del_flg3 = 0;

						foreach $clear(@clear){

							if($clear eq $t1_code){

								#フラグ立て。
								$del_flg3 = 1;

							}
						}

						if($del_flg3 == 0){

							#配送先情報をクッキーデータに形成。
							$t_delivery3 .= "$t1_cookie_delivery3,";

							#配送先情報を配列に代入。
							push(@cookie_delivery3,$t1_cookie_delivery3);

						}
					}
				}
			}
		}
	}

	#クッキーは国際時間をキーとし、保存日数は365日間。（秒、分、時、日、月、年、曜日、1月1日からの経過年数、サマータイム期間中は1）
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#曜日名と週名を英語表示の配列で定義。
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365日後の国際時間を指定フォーマット化。[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	$t_delivery1 =~ s/&quot;/&quot/g;
	$t_delivery1 =~ s/&lt;/&lt/g;
	$t_delivery1 =~ s/&gt;/&gt/g;
	$t_delivery1 =~ s/&#44;/&#44/g;

	$t_delivery2 =~ s/&quot;/&quot/g;
	$t_delivery2 =~ s/&lt;/&lt/g;
	$t_delivery2 =~ s/&gt;/&gt/g;
	$t_delivery2 =~ s/&#44;/&#44/g;

	$t_delivery3 =~ s/&quot;/&quot/g;
	$t_delivery3 =~ s/&lt;/&lt/g;
	$t_delivery3 =~ s/&gt;/&gt/g;
	$t_delivery3 =~ s/&#44;/&#44/g;

	#クッキーを設定。
	print"Set-Cookie: DELIVERY1=$t_delivery1; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY2=$t_delivery2; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY3=$t_delivery3; expires=$date_gmt; path=/;\n";

}
##################################################
# item_delete
# 商品情報を削除。
##################################################
sub item_delete{

	#クッキーは国際時間をキーとし、保存日数は365日間。（秒、分、時、日、月、年、曜日、1月1日からの経過年数、サマータイム期間中は1）
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#曜日名と週名を英語表示の配列で定義。
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365日後の国際時間を指定フォーマット化。[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	#クッキーを設定。
	print"Set-Cookie: COMMODITY=; path=/;\n";

	if($in{'address'} eq "other"){

		#配送先を保存しない場合。
		if($in{'address_save'} eq ""){

			#クッキーを設定。
			print"Set-Cookie: DELIVERY1=; path=/;\n";

			#クッキーを設定。
			print"Set-Cookie: DELIVERY2=; path=/;\n";

			#クッキーを設定。
			print"Set-Cookie: DELIVERY3=; path=/;\n";

		}else{

			#クッキーを取得。
			$cookie = $ENV{'HTTP_COOKIE'};

			#クッキーを配列に代入。
			@pairs = split(/;/,$cookie);

			#クッキー情報を精査。
			foreach $pair(@pairs){

				#クッキー情報をパラメータ名、データに分割。
				local($name,$value) = split(/=/,$pair);

				#パラメータ名からスペースを削除。
				$name =~ s/\s//g;

				#パラメータ名が日付でデータがすでにある場合は、データを削除。
				if($name =~ m/^DELIVERY1$/ && $value ne ""){

					$value =~ s/&quot;/&quot/g;
					$value =~ s/&lt;/&lt/g;
					$value =~ s/&gt;/&gt/g;
					$value =~ s/&#44;/&#44/g;

					#address_saveが「on」の場合は、日付付きでクッキーを設定。
					print"Set-Cookie: DELIVERY1=$value; expires=$date_gmt; path=/;\n";
				}

				if($name =~ m/^DELIVERY2$/ && $value ne ""){

					$value =~ s/&quot;/&quot/g;
					$value =~ s/&lt;/&lt/g;
					$value =~ s/&gt;/&gt/g;
					$value =~ s/&#44;/&#44/g;

					#address_saveが「on」の場合は、日付付きでクッキーを設定。
					print"Set-Cookie: DELIVERY2=$value; expires=$date_gmt; path=/;\n";
				}

				if($name =~ m/^DELIVERY3$/ && $value ne ""){

					$value =~ s/&quot;/&quot/g;
					$value =~ s/&lt;/&lt/g;
					$value =~ s/&gt;/&gt/g;
					$value =~ s/&#44;/&#44/g;

					#address_saveが「on」の場合は、日付付きでクッキーを設定。
					print"Set-Cookie: DELIVERY3=$value; expires=$date_gmt; path=/;\n";
				}
			}
		}
	}
}
##################################################
# sendMail
# メールを送信。
##################################################
sub sendMail{

	##########################################
	#送信日時取得。
	&get_time;
	##########################################
	#確認メールヘッダーを形成。

$re_mailhead=<<"EOM";

ご注文内容は下記の通りです。

※ご注文内容
----------------------------------------------------------------------
EOM

	##########################################
	#確認メールフッダーを形成。

$re_mailfoot=<<"EOM";

ご注文内容は上記の通りです。
EOM

	##########################################
	#送信メールヘッダーを形成。

	#返信メールヘッダー文章の置換。（クロスサイトスクリプティング対応）

#	$cart_user0 =~ s/&lt;/</g;
#	$cart_user0 =~ s/&gt;/>/g;
	$cart_user0 =~ s/&quot;/\"/g;
	$cart_user0 =~ s/<br>/\n/g;
	$cart_user0 =~ s/&lt;br&gt;/<br>/g;
	$cart_user0 =~ s/\.\n/\. \n/g;
	$cart_user0 =~ s/\&\#44\;/\,/g;

#	$cart_user1 =~ s/&lt;/</g;
#	$cart_user1 =~ s/&gt;/>/g;
	$cart_user1 =~ s/&quot;/\"/g;
	$cart_user1 =~ s/<br>/\n/g;
	$cart_user1 =~ s/&lt;br&gt;/<br>/g;
	$cart_user1 =~ s/\.\n/\. \n/g;
	$cart_user1 =~ s/\&\#44\;/\,/g;

#	$crt3 =~ s/&lt;/</g;
#	$crt3 =~ s/&gt;/>/g;
	$crt3 =~ s/&quot;/\"/g;
	$crt3 =~ s/<br>/\n/g;
	$crt3 =~ s/&lt;br&gt;/<br>/g;
	$crt3 =~ s/\.\n/\. \n/g;
	$crt3 =~ s/\&\#44\;/\,/g;

$mailhead=<<"EOM";

$cart_user0 $cart_user1様

$crt3

※ご注文内容
----------------------------------------------------------------------
EOM

	##########################################
	#送信メールフッダーを形成。

	#送信メールフッダー文章の置換。（クロスサイトスクリプティング対応）
#	$crt4 =~ s/&lt;/</g;
#	$crt4 =~ s/&gt;/>/g;
	$crt4 =~ s/&quot;/\"/g;
	$crt4 =~ s/<br>/\n/g;
	$crt4 =~ s/&lt;br&gt;/<br>/g;
	$crt4 =~ s/\.\n/\. \n/g;
	$crt4 =~ s/\&\#44\;/\,/g;

$mailfoot=<<"EOM";

$crt4
EOM

	##########################################
	#クレジットカードでの支払い情報を形成。
	if($in{'payment'} eq "ZEUS決済"){

		#クレジットカード決済URLを設定。
		$param = "category=$in{'category'}&page=$in{'page'}&cart=payment&money=$subtotal&usrmail=$cart_user15&date=$date2";

$payment_url=<<"EOM"


下記の決済ページより決済手続きを行ってください。
※本日から決済手続き完了までの有効日数は$crt31日間となっております。

■決済ページURL
$cgi_address/$site_folder/siteup.cgi?$param

【上記URLは自動的に生成され、メールソ\フトによっては、 アドレスが自動改行され
てしまい、URLを正しく読み取れずエラーメッセージが表\示されることがございます。
その際は、上記URLを末尾までコピーし、ブラウザのアドレス欄に直接はりつけて
ページを表\示して頂くようお願いいたします。】
EOM

	}
	##########################################
	#注文者情報を形成。

	#合計金額２を設定。
	$subtotal2 = $subtotal;

	#合計金額２を置換。
	$subtotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

	if($cri1 eq "1" || $cri1 eq "2"){
		$naka = "($cart_user2 $cart_user3)";
	}

	if($cri2 eq "1" || $cri2 eq "2"){
		$fax = "[FAX]$cart_user12-$cart_user13-$cart_user14\n";
	}

	if($cri3 eq "1" || $cri3 eq "2"){
		$seibetu = "[性別]$cart_user17\n";
	}

	if($cri4 eq "1" || $cri4 eq "2"){
		$seinengapi = "[生年月日]西暦$cart_user18年$cart_user19月$cart_user20日\n";
	}

	if($cri7 eq "1" || $cri7 eq "2"){

		#自由入力項目の置換。（クロスサイトスクリプティング対応）
		$cart_user21 =~ s/&lt;br&gt;/\n/g;
#		$cart_user21 =~ s/&lt;/</g;
#		$cart_user21 =~ s/&gt;/>/g;
		$cart_user21 =~ s/&quot;/\"/g;
		$cart_user21 =~ s/<br>/\n/g;
		$cart_user21 =~ s/\.\n/\. \n/g;
		$cart_user21 =~ s/\&\#44\;/\,/g;

		$free_word  .= "[$cri8]\n";
		$free_word  .= "$cart_user21";
		$free_word  .= "\n";

	}

	$notes = "";

	if($crt38 ne ""){

		#注意事項の置換。（クロスサイトスクリプティング対応）
#		$crt38 =~ s/&lt;/</g;
#		$crt38 =~ s/&gt;/>/g;
		$crt38 =~ s/&quot;/\"/g;
		$crt38 =~ s/<br>/\n/g;
		$crt38 =~ s/&lt;br&gt;/\n/g;
		$crt38 =~ s/\.\n/\. \n/g;
		$crt38 =~ s/\&\#44\;/\,/g;

		$notes .= "\n";
		$notes .= "[注意事項]\n";
		$notes .= $crt38

	}

#	$cart_user0 =~ s/&lt;/</g;
#	$cart_user0 =~ s/&gt;/>/g;
	$cart_user0 =~ s/&quot;/\"/g;
	$cart_user0 =~ s/&lt;br&gt;/\n/g;
	$cart_user0 =~ s/\&\#44\;/\,/g;

#	$cart_user1 =~ s/&lt;/</g;
#	$cart_user1 =~ s/&gt;/>/g;
	$cart_user1 =~ s/&quot;/\"/g;
	$cart_user1 =~ s/&lt;br&gt;/\n/g;
	$cart_user1 =~ s/\&\#44\;/\,/g;

#	$naka =~ s/&lt;/</g;
#	$naka =~ s/&gt;/>/g;
	$naka =~ s/&quot;/\"/g;
	$naka =~ s/&lt;br&gt;/\n/g;
	$naka =~ s/\&\#44\;/\,/g;

#	$cart_user7 =~ s/&lt;/</g;
#	$cart_user7 =~ s/&gt;/>/g;
	$cart_user7 =~ s/&quot;/\"/g;
	$cart_user7 =~ s/&lt;br&gt;/\n/g;
	$cart_user7 =~ s/\&\#44\;/\,/g;

#	$cart_user8 =~ s/&lt;/</g;
#	$cart_user8 =~ s/&gt;/>/g;
	$cart_user8 =~ s/&quot;/\"/g;
	$cart_user8 =~ s/&lt;br&gt;/\n/g;
	$cart_user8 =~ s/\&\#44\;/\,/g;

	$paymentType = "";

	if($in{'payment'} eq "ZEUS決済" || $in{'payment'} eq "NICOS決済" || $in{'payment'} eq "NICOSライト決済"){

		$paymentType = "クレジット決済";

	}else{

		$paymentType = $in{'payment'};

	}

$data2=<<"EOM";

※ご注文者の情報および金額・お支払い方法
----------------------------------------------------------------------
[名前]$cart_user0 $cart_user1$naka様
[メールアドレス]$cart_user15
[住所]〒$cart_user4-$cart_user5 $cart_user6$cart_user7$cart_user8
[電話]$cart_user9-$cart_user10-$cart_user11
$fax$seibetu$seinengapi$free_word
[お支払いの合計金額] $subtotal2円（税込み）
[お支払いの方法] $paymentType$payment_url$notes
----------------------------------------------------------------------
EOM

	##########################################
	#配達希望日・ご意見・ご感想・ご希望等を形成。

	#配送希望日の置換。（クロスサイトスクリプティング対応）
#	$in{'delivery_day'} =~ s/&lt;/</g;
#	$in{'delivery_day'} =~ s/&gt;/>/g;
	$in{'delivery_day'} =~ s/&quot;/\"/g;
	$in{'delivery_day'} =~ s/<br>/\n/g;
	$in{'delivery_day'} =~ s/&lt;br&gt;/\n/g;
	$in{'delivery_day'} =~ s/\.\n/\. \n/g;
	$in{'delivery_day'} =~ s/\&\#44\;/\,/g;

	#ご意見・ご感想・ご希望等の置換。（クロスサイトスクリプティング対応）
#	$in{'message'} =~ s/&lt;/</g;
#	$in{'message'} =~ s/&gt;/>/g;
	$in{'message'} =~ s/&quot;/\"/g;
	$in{'message'} =~ s/<br>/\n/g;
	$in{'message'} =~ s/&lt;br&gt;/\n/g;
	$in{'message'} =~ s/\.\n/\. \n/g;
	$in{'message'} =~ s/\&\#44\;/\,/g;

	if($cri5 eq "1" || $cri5 eq "2"){

$data3.=<<"EOM";

※配達希望日
----------------------------------------------------------------------
$in{'delivery_day'}
----------------------------------------------------------------------
EOM

	}

	if($cri6 eq "1" || $cri6 eq "2"){

$data3.=<<"EOM";

※ご意見・ご要望
----------------------------------------------------------------------
$in{'message'}
----------------------------------------------------------------------
EOM

	}

$data3.=<<"EOM";

※送信日時
----------------------------------------------------------------------
◇$date 
----------------------------------------------------------------------
EOM

	##########################################
	#連絡事項情報を形成。

	#連絡事項の置換。（クロスサイトスクリプティング対応）
#	$crt23 =~ s/&lt;/</g;
#	$crt23 =~ s/&gt;/>/g;
	$crt23 =~ s/&quot;/\"/g;
	$crt23 =~ s/<br>/\n/g;
	$crt23 =~ s/&lt;br&gt;/\n/g;
	$crt23 =~ s/\.\n/\. \n/g;
	$crt23 =~ s/\&\#44\;/\,/g;

	if($crt23 ne ""){

$infomation=<<"EOM";

※連絡事項
----------------------------------------------------------------------
$crt23
----------------------------------------------------------------------
EOM

	}
	##########################################
	#送信先メールアドレスを設定。
	$ownerMail = "$crt1";

	#送信元メールアドレスを設定。
	$userMail = $cart_user15;
	##########################################
	#確認メールのタイトルを形成。
	$re_subject = "ホームページからのご注文";

	#JISコード変換。
	&jcode'convert(*re_subject,'jis');
	&jcode'convert(*re_mailhead,'jis');
	&jcode'convert(*re_mailfoot,'jis');
	##########################################
	#返信メールタイトルの置換。（クロスサイトスクリプティング対応）
	$crt2 =~ s/\&\#44\;/\,/g;

	#送信メールのタイトルを形成。
	$subject = "$crt2";

	#JISコード変換。
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailhead,'jis');
	&jcode'convert(*mailfoot,'jis');
	##########################################
	&jcode'convert(*data1,'jis');
	&jcode'convert(*data2,'jis');
	&jcode'convert(*data3,'jis');
	&jcode'convert(*infomation,'jis');
	##########################################
	#確認メールを送信。
	open(MAIL,"|$sendmail -t -f '$userMail'") || &error("メール送信に失敗しました");
	print MAIL "Message-Id:\n";
	print MAIL "To: $ownerMail\n";
	print MAIL "From: $userMail <$userMail>\n";
	print MAIL "Subject: $re_subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
	print MAIL "Content-Transfer-Encoding: 7bit\n";
	print MAIL "$re_mailhead";
	print MAIL "$data1";
	print MAIL "$data2";
	print MAIL "$data3";

	#連絡事項を表示。
	if($crt23 ne ""){
		print MAIL "$infomation";
	}

	print MAIL "$re_mailfoot";
	close(MAIL);
	##########################################
	#送信メールを送信。
	open(MAIL,"|$sendmail -t -f '$ownerMail'") || &error("メール送信に失敗しました");
	print MAIL "Message-Id:\n";
	print MAIL "To: $userMail\n";
	print MAIL "From: $ownerMail <$ownerMail>\n";
	print MAIL "Subject: $subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
	print MAIL "Content-Transfer-Encoding: 7bit\n";
	print MAIL "$mailhead";
	print MAIL "$data1";
	print MAIL "$data2";
	print MAIL "$data3";

	#連絡事項を表示。
	if($crt23 ne ""){
		print MAIL "$infomation";
	}

	print MAIL "$mailfoot";
	close(MAIL);
	##########################################

}
##################################################
# sendMailAlertType1
# メールを送信。
##################################################
sub sendMailAlertType1{

	my($mailAdress,$mailData,$pageTitle) = @_;

	my $mailAdressBase = "asp\@sunfirst.co.jp";

	#送信メールのタイトルを形成。
	$subject = "商品在庫がなくなりました。";

	my $mailBody = "";
	$mailBody   .= "下記商品の在庫がなくなりました。\n";
	$mailBody   .= "補充及び発注手続きを実施してください。\n";
	$mailBody   .= "\n";
	$mailBody   .= "[在庫切れ一覧] \n";
	$mailBody   .= "\n";
	$mailBody   .= $mailData;
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "◇対象商品掲載ページ名：$pageTitle\n";
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "\n";
	$mailBody   .= "**************************************************\n";
	$mailBody   .= "このお知らせメールの設定を変更するには？\n";
	$mailBody   .= "**************************************************\n";
	$mailBody   .= "\n";
	$mailBody   .= "■お知らせメールを受け取らない場合↓↓↓\n";
	$mailBody   .= "\n";
	$mailBody   .= "在庫管理画面よりログイン\n";
	$mailBody   .= "\n";
	$mailBody   .= "＊ログインＩＤとパスワードを別途ご用意ください。\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "在庫確認\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "各種設定\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "お知らせメール送信設定より、数量を変更\n";
	$mailBody   .= "**************************************************\n";

	#JISコード変換。
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailBody,'jis');
	##########################################
	#送信メールを送信。
	open(MAIL,"|$sendmail -t -f '$mailAdressBase'") || &error("メール送信に失敗しました");
	print MAIL "Message-Id:\n";
	print MAIL "To: $mailAdress\n";
	print MAIL "From: $mailAdressBase\n";
	print MAIL "Subject: $subject\n";
	print MAIL "Content-type: text/plain;\n\n";
	print MAIL "$mailBody";
	close(MAIL);
	##########################################

}
##################################################
# sendMailAlertType2
# メールを送信。
##################################################
sub sendMailAlertType2{

	my($mailAdress,$mailData,$pageTitle) = @_;

	my $mailAdressBase = "asp\@sunfirst.co.jp";

	#送信メールのタイトルを形成。
	$subject = "商品在庫が残り少なくなっています。";

	my $mailBody = "";
	$mailBody   .= "下記商品の在庫が少なくなってきております。\n";
	$mailBody   .= "補充及び発注手続きを実施してください。\n";
	$mailBody   .= "\n";
	$mailBody   .= "[在庫過小一覧] \n";
	$mailBody   .= "\n";
	$mailBody   .= $mailData;
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "◇対象商品掲載ページ名：$pageTitle\n";
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "\n";
	$mailBody   .= "**************************************************\n";
	$mailBody   .= "このお知らせメールの設定を変更するには？\n";
	$mailBody   .= "**************************************************\n";
	$mailBody   .= "\n";
	$mailBody   .= "お知らせメールが来る残り在庫数を変更したい場合↓↓↓\n";
	$mailBody   .= "\n";
	$mailBody   .= "在庫管理画面よりログイン\n";
	$mailBody   .= "\n";
	$mailBody   .= "＊ログインＩＤとパスワードを別途ご用意ください。\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "在庫確認\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "各種設定\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "メールアドレスの解除を設定\n";
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "\n";
	$mailBody   .= "お知らせメールを受け取らない場合↓↓↓\n";
	$mailBody   .= "\n";
	$mailBody   .= "在庫管理画面よりログイン\n";
	$mailBody   .= "\n";
	$mailBody   .= "＊ログインＩＤとパスワードを別途ご用意ください。\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "在庫確認\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "各種設定\n";
	$mailBody   .= "↓\n";
	$mailBody   .= "お知らせメール送信設定より、数量を変更\n";
	$mailBody   .= "**************************************************\n";

	#JISコード変換。
	
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailBody,'jis');
	##########################################
	#送信メールを送信。
	open(MAIL,"|$sendmail -t -f '$mailAdressBase'") || &error("メール送信に失敗しました");
	print MAIL "Message-Id:\n";
	print MAIL "To: $mailAdress\n";
	print MAIL "From: $mailAdressBase\n";
	print MAIL "Subject: $subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain;\n\n";
	print MAIL "$mailBody";
	close(MAIL);
	##########################################

}
##################################################
# preserves
# データを保存。
##################################################
sub preserves{

	#リモートホスト名取得。
	$remote_host = $ENV{'REMOTE_HOST'};

	#IPアドレス取得。
	$remote_addr = $ENV{'REMOTE_ADDR'};

	#ユーザ環境変数取得。
	$http_user_agent = $ENV{'HTTP_USER_AGENT'};

	#ユーザ環境変数置換。
	$http_user_agent =~s/HTML,/HTML/g;

	#パラメータ情報取得。
	if($buffer =~ /&&|&amp;&amp;/){
		($dummy,$http_referer) = split(/&&/,$ENV{'QUERY_STRING'});
	}

	#リンク元のURL取得。
	if($http_referer eq ""){
		$http_referer = $ENV{'HTTP_REFERER'};
	}

	#リンク元のURL置換。
	$http_referer =~ s/\,/\&\#44\;/g;

	#リモートホスト名が空、もしくはリモートホスト名がIPアドレスの場合には、IPアドレスからリモートホスト名取得。
	if($remote_host eq "" || $remote_host eq "$remote_addr"){
		$remote_host = gethostbyaddr(pack('C4',split(/\./,$remote_addr)),2);
	}

	#リモートホスト名が空の場合にはリモートホスト名をIPアドレスにする。
	if($remote_host eq ""){
		$remote_host = $remote_addr;
	}

	#ファイルを読み出す。
	open(IN,"./site_log/$date2.cgi");
	flock(IN,1);	# ファイルを読み出しロック。
	@temp = <IN>;
	flock(IN,8);	# ロック解除。
	close(IN);

	#ファイル出力情報を改行付きで形成。（[タイトル]、[リモートホスト名]、[IPアドレス]、[ユーザ環境変数]、[リンク元のURL]、[時間（1970年1月1日からの経過秒数）]）
	$line = "メール送信（ショッピングカート）,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

	#先頭に生成した要素を追加。
	unshift(@temp,$line);

	#ファイルを書き出す。
	open(OUT, "> ./site_log/$date2.cgi");	# 読み書きモードで開く
	flock(OUT, 2);				# ロック確認。ロック
	seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
	print OUT @temp;			# 書き込む
	truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
	close(OUT);				# closeすれば自動でロック解除

	#注文者情報保存要否が"on"の場合。
	if($crt32 eq "on"){

		#ディレクトリ設定。
		$makedir = "./address";

		#ディレクトリ作成。（パーミッションを0755で作成）
		unless (-d $makedir){
			mkdir($makedir,0755);
		}

		chmod(0755,$makedir);

		#アドレス情報を読み込み。
		open(IN,"./address/address.csv");
		flock(IN,1);		# ファイルを読み出しロック。
		@address_csv = <IN>;
		flock(IN,8);		# ロック解除。
		close(IN);

		#FAX番号形成。
		if($cart_user12 ne "" && $cart_user13 ne "" && $cart_user14 ne ""){
			$fax2 = "$cart_user12\-$cart_user13\-$cart_user14";
		}

		#TEL番号形成。
		$tel2 = "$cart_user9\-$cart_user10\-$cart_user11";

		#生年月日形成。
		$birth2 = "$cart_user18\/$cart_user19\/$cart_user20";

		#アドレス情報変数の初期化。
		@renew = ();

		#アドレス情報数の初期化。
		$address_list = 0;

		#過去に問い合わせがあったことのフラグ。
		$flag = 0;

		#記事IDの初期化。
		$id_data = "";

		#性別データ形成。
		if($cart_user17 eq "男"){
			$seibetu = "M";
		}elsif($cart_user17 eq "女"){
			$seibetu = "F";
		}

		#アドレス情報の精査。
		foreach (@address_csv){

			#アドレス情報の分割。
			local($id,$mail,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy) = split(/,/,$_);

			#過去のメールアドレスと問い合わせメールアドレスの比較。
			if($cart_user15 eq "$mail"){

				#フラグ立て。
				$flag = 1;

				#新しい問い合わせ情報形成。
				$_ = "$id,$cart_user15,$cart_user0 $cart_user1,$cart_user4$cart_user5,$cart_user6,$cart_user7,$cart_user8,$tel2,$fax2,,,,,,$seibetu,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$birth2\n";

				#記事IDを代入。
				$id_data = $id;

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
			if($id_data < 15000){

				#保存情報形成。
				$line = "$address_list,$cart_user15,$cart_user0 $cart_user1,$cart_user4$cart_user5,$cart_user6,$cart_user7,$cart_user8,$tel2,$fax2,,,,,,$seibetu,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$birth2\n";

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

}
##################################################
# mailCheck
# メールチェック。
##################################################
sub mailCheck{

	$mailAddr = @user_data[15];

	$errorNo = "";

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
sub dateCheck{

	my $year = @user_data[18];
	my $mon  = @user_data[19];
	my $day  = @user_data[20];

	$errorNo = "";

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
##################################################
# send
# 送料の計算。
##################################################
sub send{

	if($crt5 eq "0"){

		#送料計算対象外売り上げ最低金額が0の場合は、送料に0を設定。
		$send = 0;

	}else{

		#送料計算対象外売り上げ最低金額が0以外の場合は、都道府県別に送料を設定。
		if($address3 eq "北海道")                                                                                                                                                        {$send = $crt6;}
		if($address3 eq "青森県" || $address3 eq "秋田県" || $address3 eq "岩手県")                                                                                                      {$send = $crt7;}
		if($address3 eq "宮城県" || $address3 eq "山形県" || $address3 eq "福島県")                                                                                                      {$send = $crt8;}
		if($address3 eq "栃木県" || $address3 eq "群馬県" || $address3 eq "茨城県")                                                                                                      {$send = $crt9;}
		if($address3 eq "埼玉県" || $address3 eq "千葉県" || $address3 eq "東京都" || $address3 eq "神奈川県")                                                                           {$send = $crt10;}
		if($address3 eq "新潟県" || $address3 eq "長野県" || $address3 eq "山梨県")                                                                                                      {$send = $crt11;}
		if($address3 eq "富山県" || $address3 eq "石川県" || $address3 eq "福井県")                                                                                                      {$send = $crt12;}
		if($address3 eq "岐阜県" || $address3 eq "静岡県" || $address3 eq "愛知県" || $address3 eq "三重県")                                                                             {$send = $crt13;}
		if($address3 eq "滋賀県" || $address3 eq "京都府" || $address3 eq "大阪府" || $address3 eq "兵庫県" || $address3 eq "奈良県" || $address3 eq "和歌山県")                         {$send = $crt14;}
		if($address3 eq "鳥取県" || $address3 eq "島根県" || $address3 eq "岡山県" || $address3 eq "広島県" || $address3 eq "山口県")                                                    {$send = $crt15;}
		if($address3 eq "徳島県" || $address3 eq "香川県" || $address3 eq "愛媛県" || $address3 eq "高知県")                                                                             {$send = $crt16;}
		if($address3 eq "福岡県" || $address3 eq "佐賀県" || $address3 eq "長崎県" || $address3 eq "熊本県" || $address3 eq "大分県" || $address3 eq "宮崎県" || $address3 eq "鹿児島県"){$send = $crt17;}
		if($address3 eq "沖縄県")                                                                                                                                                        {$send = $crt18;}
		if($address3 eq "その他")                                                                                                                                                        {$send = $crt18;}

		#合計金額が送料計算対象外売り上げ最低金額を下回った場合は、、送料に0を設定。
		if($crt5 ne ""){

			if($crt5 <= $in{'total'}){

				$send = 0;

			}
		}
	}
}




1;