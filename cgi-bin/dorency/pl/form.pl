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
# form_check
# 問い合わせ内容確認画面表示。
##################################################
sub form_check{

	#データチェック。
	&dataCheck;

	#エラー画面を表示。
	if($#errorMsg != -1){
		&errorForm;
	}else{

		local($t_rls7,$t_rls3,$t_rls6,$t_rls4,$t_rls5,$t_rls1,$t_rls2);
		local($t_dsn8,$t_dsn7,$t_dsn4,$t_dsn3,$t1_font1,$t1_font2);

		#記事内容情報を取得。
		@line = sort{(split(/,/,$a))[1] <=> (split(/,/,$b))[1]} @storycomment;

		#記事内容情報を分割。
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line[0]);

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
		if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
		if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}

		#[font]を形成。
		if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
		if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
		if($dsn4 ne "" || $dsn3 ne ""){$t1_font1 = "<font$t_dsn4$t_dsn3>";}
		if($dsn4 ne "" || $dsn3 ne ""){$t1_font2 = "</font>";}

print<<"EOM";
      <div align="center">
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7 align="center">
        $t1_font1ご入力頂いた内容を確認して送信ボタンを押して下さい。$t1_font2
        </td>
       </tr>
      </table>
      <br>
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
EOM

		#パラメータ番号セット。
		$n = 0;

		#記事内容情報を精査。
		foreach (@line){

			$i="";
			if($n < 10){
				$i = "00" . $n;
			}elsif($n < 100){
				$i = "0" . $n;
			}else{
				$i = $n;
			}

			#記事内容情報を分割。
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

			if($cmt8 ne "on"){

				local($t_dsn8,$t_dsn7,$t_rls9,$t_cmt5,$t_dsn1,$t_dsn2);
				local($t_dsn17,$t_dsn16,$t_rls10,$t_cmt7,$t_dsn10,$t_dsn11);
				local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);

				#[td]を形成。
				if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
				if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
				if($rls9 ne ""){$t_rls9 = " width=\"$rls9\"";}
#				if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}
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
				if($dsn4 ne "")                 {$t_dsn4   = " size=\"$dsn4\"";}
				if($dsn3 ne "")                 {$t_dsn3   = " color=\"$dsn3\"";}
				if($dsn4 ne "" || $dsn3 ne "")  {$t2_font1 = "<font$t_dsn4$t_dsn3>";}
				if($dsn4 ne "" || $dsn3 ne "")  {$t2_font2 = "</font>";}
				if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
				if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
				if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
				if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

				#パラメータ情報を精査。
				foreach (@formdata){
					next if ($bef eq "$_");
					next if ($_ eq "form");
					next if ($_ eq "mode");
					next if ($_ eq "category");
					next if ($_ eq "page");
					$paramName = $_;

					$tmp_title = "$i$title";

					if($paramName eq $tmp_title){

						$paramName =~ s/^[0-9][0-9][0-9]//;

						$in{$_} =~ s/&lt;/</g;
						$in{$_} =~ s/&gt;/>/g;
						$in{$_} =~ s/&lt;br&gt;/<br>/g;

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_rls9$t_cmt5$t_dsn1$t_dsn2>
        $t2_font1$paramName$t2_font2
        </td>
EOM

						if($in{$_} eq ""){

print<<"EOM";
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_rls10$t_cmt7$t_dsn10$t_dsn11>
        $t3_font1&nbsp;
        $t3_font2</td>
EOM

						}else{

print<<"EOM";
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_rls10$t_cmt7$t_dsn10$t_dsn11>
        $t3_font1$in{$_}
        $t3_font2</td>
EOM

						}

print<<"EOM";
       </tr>
EOM

						$hidden .= "        <input type=\"hidden\" name=\"$_\" value=\"$in{$_}\">\n";

						$bef = $_;

					}
				}

				$n++;

			}

		}

		#最後の[CR/LF]除去。
		chomp($hidden);

print<<"EOM";
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="button" value="前画面に戻る" onClick="history.back()"></td>
EOM

		#受信メールアドレスが存在する場合は[form]を表示。
		if($location eq "up" && $rls11 ne ""){

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="form" value="mail">
$hidden
        <input type="submit" value="この内容で送信する">
        </form>
        </td>
EOM

		}else{

print<<"EOM";
        <td><input type="button" value="この内容で送信する"></td>
EOM

		}

print<<"EOM";
       </tr>
      </table>
      </div>
      <br>
EOM

	}
}
##################################################
# form_mail
# 問い合わせ内容メール送信。
##################################################
sub form_mail{

	#データチェック。
	&dataCheck;

	#エラー画面表示。
	if($#errorMsg != -1){
		&errorForm;
	}else{

		#返信メールタイトルの置換。（クロスサイトスクリプティング対応）
#		$rls12 =~ s/&lt;/</g;
#		$rls12 =~ s/&gt;/>/g;
		$rls12 =~ s/&quot;/\"/g;
		$rls12 =~ s/<br>/\n/g;
		$rls12 =~ s/&lt;br&gt;/\n/g;
		$rls12 =~ s/\.\n/\. \n/g;
		$rls12 =~ s/\&\#44\;/\,/g;

		#返信メールヘッダー文章の置換。（クロスサイトスクリプティング対応）
#		$rls13 =~ s/&lt;/</g;
#		$rls13 =~ s/&gt;/>/g;
		$rls13 =~ s/&quot;/\"/g;
		$rls13 =~ s/<br>/\n/g;
		$rls13 =~ s/&lt;br&gt;/\n/g;
		$rls13 =~ s/\.\n/\. \n/g;
		$rls13 =~ s/\&\#44\;/\,/g;

		#返信メールフッター文章の置換。（クロスサイトスクリプティング対応）
#		$rls14 =~ s/&lt;/</g;
#		$rls14 =~ s/&gt;/>/g;
		$rls14 =~ s/&quot;/\"/g;
		$rls14 =~ s/<br>/\n/g;
		$rls14 =~ s/&lt;br&gt;/\n/g;
		$rls14 =~ s/\.\n/\. \n/g;
		$rls14 =~ s/\&\#44\;/\,/g;

		#受信メールアドレス設定。
		$mailto = "$rls11";

		#送信内容の形成。

$re_mailhead=<<EOM;

$rls13
EOM

$mailhead=<<EOM;

お問い合わせ内容は以下の通りです。
EOM

$re_mailfoot=<<EOM;
$rls14
EOM

		my @temp_data1 = ();
		my @temp_data2 = ();

		#パラメータ情報を精査。
		foreach (@formdata){
			next if ($bef eq $_);
			next if ($_ eq "form");
			next if ($_ eq "mode");
			next if ($_ eq "page");
			next if ($_ eq "category");

			#パラメータ情報の置換。（クロスサイトスクリプティング対応）
			my $tmp_data = $in{$_};
#			$tmp_data =~ s/&lt;/</g;
#			$tmp_data =~ s/&gt;/>/g;
			$tmp_data =~ s/&quot;/\"/g;
			$tmp_data =~ s/<br>/\n/g;
			$tmp_data =~ s/&lt;br&gt;/\n/g;
			$tmp_data =~ s/\.\n/\. \n/g;
			$sendDataName = $_;
			$sendDataName =~ s/^[0-9][0-9][0-9]//;

			#メール本文の作成。
			if($in{$_} =~ /\n/){
				$mail_body .= "◇$sendDataName \n$tmp_data\n\n";
			}else{
				$mail_body .= "◇$sendDataName \n$tmp_data\n\n";
			}

			push(@temp_data1,$sendDataName);
			push(@temp_data2,$tmp_data);

			$bef = $_;
		}

		#パラメータ番号セット。
		$n = 0;

		#送信先初期化。
		@email = ();

		#記事内容情報の精査。
		foreach (@storycomment){

			if($n < 10){
				$i = "00" . $n;
			}elsif($n < 100){
				$i = "0" . $n;
			}else{
				$i = $n;
			}

			#記事内容情報を分割。
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

			if($cmt8 ne "on"){

				#メールを取得。
				if($cmt2 eq "mail"){
					push(@email,$in{$i.$title});
				}
				$n++;

			}
		}

		#メール件名設定。
		$subject = "ホームページ「$title」からのお問い合わせ";

		#返信メールタイトル設定。
		$re_subject = "$rls12";

		#JISコード変換。
		&jcode'convert(*re_subject,'jis');
		&jcode'convert(*subject,'jis');
		&jcode'convert(*re_mailhead,'jis');
		&jcode'convert(*mailhead,'jis');
		&jcode'convert(*mail_body,'jis');
		&jcode'convert(*re_mailfoot,'jis');

		if($#email == -1){

			#メール送信。（受信メール）
			open(MAIL,"|$sendmail -t -f '$mailto'") || &error("メール送信に失敗しました");
			print MAIL "Message-Id:\n";
			print MAIL "To: $mailto\n";
			print MAIL "From: $mailto <$mailto>\n";
			print MAIL "Subject: $subject\n";
			print MAIL "MIME-Version: 1.0\n";
			print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
			print MAIL "Content-Transfer-Encoding: 7bit\n";
			print MAIL "$mailhead\n";
			print MAIL "$mail_body\n";
			close(MAIL);

		}else{

			#メール送信。（受信メール）（確認メール）
			for($i = 0 ; $i <= $#email ; $i++){

				if($email[$i] ne ""){

					open(MAIL,"|$sendmail -t -f '$email[$i]'") || &error("メール送信に失敗しました");
					print MAIL "Message-Id:\n";
					print MAIL "To: $mailto\n";
					print MAIL "From: $email[$i] <$email[$i]>\n";
					print MAIL "Subject: $subject\n";
					print MAIL "MIME-Version: 1.0\n";
					print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
					print MAIL "Content-Transfer-Encoding: 7bit\n";
					print MAIL "$mailhead\n";
					print MAIL "$mail_body\n";
					close(MAIL);

					open(MAIL,"|$sendmail -t -f '$mailto'") || &error("メール送信に失敗しました");
					print MAIL "Message-Id:\n";
					print MAIL "To: $email[$i]\n";
					print MAIL "From: $mailto <$mailto>\n";
					print MAIL "Subject: $re_subject\n";
					print MAIL "MIME-Version: 1.0\n";
					print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
					print MAIL "Content-Transfer-Encoding: 7bit\n";
					print MAIL "$re_mailhead\n";
					print MAIL "$mail_body\n";
					print MAIL "$re_mailfoot\n";
					close(MAIL);

				}
			}
		}

		#完了メッセージの表示。

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center"><font size="-1"><strong>ご入力頂いた内容の送信は完了いたしました。</strong></font></td>
       </tr>
      </table>
      </div>
EOM

		#現在時刻取得。
		&get_time;

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

		##################################################
		# ASPデータ出力
		##################################################

		my $temp1 = "";

		for (my $i = 0 ; $i <= 45 ; $i++){

			my $temp = $temp_data1[$i];

			$temp    =~ s/&lt;/</g;
			$temp    =~ s/&gt;/>/g;
			$temp    =~ s/\n/<br>/g;
			$temp    =~ s/\,/&#44;/g;

			$temp1  .= "$temp,";

		}

		my $setting = "リピート数,情報取得日,SITEUP-SYSTEMからの取得元ページ名,$temp1\n";

		#ファイルを書き出す。
		open(OUT, "> ./settingFrom$in{'category'}$in{'page'}.dat");		# 読み書きモードで開く
		flock(OUT, 2);								# ロック確認。ロック
		seek(OUT, 0, 0);							# ファイルポインタを先頭にセット
		print OUT $setting;							# 書き込む
		truncate(OUT, tell(OUT));						# ファイルサイズを書き込んだサイズにする
		close(OUT);								# closeすれば自動でロック解除

		my $temp2 = "";

		for (my $i = 0 ; $i <= 45 ; $i++){

			my $temp = $temp_data2[$i];

			$temp    =~ s/&lt;/</g;
			$temp    =~ s/&gt;/>/g;
			$temp    =~ s/\n/<br>/g;
			$temp    =~ s/\,/&#44;/g;

			$temp2  .= "$temp,";

		}

		#ファイルを読み出す。
		open(IN,"./customerFrom$in{'category'}$in{'page'}.dat");
		flock(IN,1);		# ファイルを読み出しロック。
		my @customer = <IN>;
		flock(IN,8);		# ロック解除。
		close(IN);

		$time_data = time;

		my $customer = "1,$time_data,$title,$temp2$in{'category'}$in{'page'}\n";

		#先頭に生成した要素を追加。
		unshift(@customer,$customer);

		#ファイルを書き出す。
		open(OUT, "> ./customerFrom$in{'category'}$in{'page'}.dat");		# 読み書きモードで開く
		flock(OUT, 2);								# ロック確認。ロック
		seek(OUT, 0, 0);							# ファイルポインタを先頭にセット
		print OUT @customer;							# 書き込む
		truncate(OUT, tell(OUT));						# ファイルサイズを書き込んだサイズにする
		close(OUT);								# closeすれば自動でロック解除

		##################################################

	}
}
##################################################
# dataCheck
# データチェック。
##################################################
sub dataCheck{

	#カウント変数初期化。
	$n = 0;
	$m = 0;
	$o = 0;

	#記事内容情報の精査。
	foreach (@storycomment){

		if($n < 10){
			$i = "00" . $n;
		}elsif($n < 100){
			$i = "0" . $n;
		}else{
			$i = $n;
		}

		local($paramName,$text_data);
		local($year,$mon,$day);
		local($tmp1,$tmp2,$tmp3);

		#記事内容情報を分割。
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		if($cmt8 ne "on"){

			#入力欄種類がタイプ。
			if($cmt2 eq "textarea"){

				$paramName = $i.$title;

				$text_data = $in{$paramName};

				if(length($text_data) > 1000){
					$paramName =~ s/^[0-9][0-9][0-9]//;
					push(@errorMsg,"入力項目[$paramName]の入力が多すぎます。");
				}
			}

			#入力欄種類が住所タイプ。
			if($cmt2 eq "address"){

				if($cmt6 eq "_"){

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					($tmp1,$tmp2,$tmp3) = split(/ /,$text_data);

					($tmp4,$tmp5) = split(/-/,$tmp1);

					if($tmp4 ne "" && $tmp5 ne ""){

						if(length($tmp4) != 3){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]の郵便番号（１つ目の欄）が正しく入力されていません。");
						}elsif($tmp4 =~ /[^0-9]/){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]の郵便番号（１つ目の欄）に半角数字が入力されていません。");
						}

						if(length($tmp5) != 4){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]の郵便番号（２つ目の欄）が正しく入力されていません。");
						}elsif($tmp5 =~ /[^0-9]/){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]の郵便番号（２つ目の欄）に半角数字が入力されていません。");
						}
					}

				}else{

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					($tmp1,$tmp2,$tmp3) = split(/ /,$text_data);

					($tmp4,$tmp5) = split(/-/,$tmp1);

					if($tmp4 ne "" || $tmp5 ne ""){

						if(length($tmp4) != 3){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]の郵便番号（１つ目の欄）が正しく入力されていません。");
						}elsif($tmp4 =~ /[^0-9]/){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]の郵便番号（１つ目の欄）に半角数字が入力されていません。");
						}

						if(length($tmp5) != 4){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]の郵便番号（２つ目の欄）が正しく入力されていません。");
						}elsif($tmp5 =~ /[^0-9]/){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]の郵便番号（２つ目の欄）に半角数字が入力されていません。");
						}
					}
				}
			}

			#入力欄種類が年月日タイプ（和暦）タイプ。
			if($cmt2 eq "day1"){

				$flg = 0;

				if($cmt6 eq "_"){

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					if($text_data =~ /^平成/){

						#平成は[平成元年1月8日～]まで。

						$text_data =~ s/平成//i;

						($year,$tmp1) = split(/年/,$text_data);
						($mon,$tmp2)  = split(/月/,$tmp1);
						($day,$tmp3)  = split(/日/,$tmp2);

						if($year ne "" && $mon ne "" && $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

							if($mon == 1 && $day < 8){
								$in{$paramName} = "昭和64年$mon月$day日";
							}

							$year += 1988;
						}

					}elsif($text_data =~ /^昭和/){

						#昭和は[昭和元年12月26日～64年1月7日]まで。

						$text_data =~ s/昭和//i;

						($year,$tmp1) = split(/年/,$text_data);
						($mon,$tmp2)  = split(/月/,$tmp1);
						($day,$tmp3)  = split(/日/,$tmp2);

						if($year ne "" && $mon ne "" && $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

							if($year == 64 && $mon == 1 && $day > 7){
								$in{$paramName} = "平成1年$mon月$day日";
							}elsif($year == 64 && $mon >= 2){
								$in{$paramName} = "平成1年$mon月$day日";
							}elsif($year >= 65){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
								$flg = 1;
							}

							if($year == 1 && $mon == 12 && $day < 26){
								$in{$paramName} = "大正15年$mon月$day日";
							}elsif($year == 1 && $mon <= 11){
								$in{$paramName} = "大正15年$mon月$day日";
							}

							$year += 1925;
						}

					}elsif($text_data =~ /^大正/){

						#大正は[大正元年7月31日～15年12月25日]まで。

						$text_data =~ s/大正//i;

						($year,$tmp1) = split(/年/,$text_data);
						($mon,$tmp2)  = split(/月/,$tmp1);
						($day,$tmp3)  = split(/日/,$tmp2);

						if($year ne "" && $mon ne "" && $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

							if($year == 15 && $mon == 12 && $day > 25){
								$in{$paramName} = "昭和1年$mon月$day日";
							}elsif($year >= 16){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
								$flg = 1;
							}

							if($year == 1 && $mon == 7 && $day < 31){
								$in{$paramName} = "明治45年$mon月$day日";
							}elsif($year == 1 && $mon <= 6){
								$in{$paramName} = "明治45年$mon月$day日";
							}

							$year += 1911;
						}

					}elsif($text_data =~ /^明治/){

						#明治は[明治元年～45年7月30日]まで。

						$text_data =~ s/明治//i;

						($year,$tmp1) = split(/年/,$text_data);
						($mon,$tmp2)  = split(/月/,$tmp1);
						($day,$tmp3)  = split(/日/,$tmp2);

						if($year ne "" && $mon ne "" && $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

							if($year == 45 && $mon == 7 && $day > 30){
								$in{$paramName} = "大正1年$mon月$day日";
							}elsif($year >= 46){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
								$flg = 1;
							}

							$year += 1867;
						}
					}

					if(($year ne "" && $mon ne "" && $day ne "") && $flg == 0){

						if($year !~ /[^0-9]/ && $mon !~ /[^0-9]/ && $day !~ /[^0-9]/){
							if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
							}else{
								# その月の末日を計算。(2行目は閏年の計算)
								my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));
								if($day > $lastday){
									$paramName =~ s/^[0-9][0-9][0-9]//;
									push(@errorMsg,"[$paramName]の年月日が不正です。");
								}
							}
						}
					}

				}else{

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					if($text_data =~ /^平成/){

						#平成は[平成元年1月8日～]まで。

						$text_data =~ s/平成//i;

						($year,$tmp1) = split(/年/,$text_data);
						($mon,$tmp2)  = split(/月/,$tmp1);
						($day,$tmp3)  = split(/日/,$tmp2);

						if($year ne "" || $mon ne "" || $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

							if($mon == 1 && $day < 8){
								$in{$paramName} = "昭和64年$mon月$day日";
							}

							$year += 1988;
						}

					}elsif($text_data =~ /^昭和/){

						#昭和は[昭和元年12月26日～64年1月7日]まで。

						$text_data =~ s/昭和//i;

						($year,$tmp1) = split(/年/,$text_data);
						($mon,$tmp2)  = split(/月/,$tmp1);
						($day,$tmp3)  = split(/日/,$tmp2);

						if($year ne "" || $mon ne "" || $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

							if($year == 64 && $mon == 1 && $day > 7){
								$in{$paramName} = "平成1年$mon月$day日";
							}elsif($year == 64 && $mon >= 2){
								$in{$paramName} = "平成1年$mon月$day日";
							}elsif($year >= 65){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
								$flg = 1;
							}

							if($year == 1 && $mon == 12 && $day < 26){
								$in{$paramName} = "大正15年$mon月$day日";
							}elsif($year == 1 && $mon <= 11){
								$in{$paramName} = "大正15年$mon月$day日";
							}

							$year += 1925;
						}

					}elsif($text_data =~ /^大正/){

						#大正は[大正元年7月31日～15年12月25日]まで。

						$text_data =~ s/大正//i;

						($year,$tmp1) = split(/年/,$text_data);
						($mon,$tmp2)  = split(/月/,$tmp1);
						($day,$tmp3)  = split(/日/,$tmp2);

						if($year ne "" || $mon ne "" || $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

							if($year == 15 && $mon == 12 && $day > 25){
								$in{$paramName} = "昭和1年$mon月$day日";
							}elsif($year >= 16){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
								$flg = 1;
							}

							if($year == 1 && $mon == 7 && $day < 31){
								$in{$paramName} = "明治45年$mon月$day日";
							}elsif($year == 1 && $mon <= 6){
								$in{$paramName} = "明治45年$mon月$day日";
							}

							$year += 1911;
						}

					}elsif($text_data =~ /^明治/){

						#明治は[明治元年～45年7月30日]まで。

						$text_data =~ s/明治//i;

						($year,$tmp1) = split(/年/,$text_data);
						($mon,$tmp2)  = split(/月/,$tmp1);
						($day,$tmp3)  = split(/日/,$tmp2);

						if($year ne "" || $mon ne "" || $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

							if($year == 45 && $mon == 7 && $day > 30){
								$in{$paramName} = "大正1年$mon月$day日";
							}elsif($year >= 46){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
								$flg = 1;
							}

							$year += 1867;
						}
					}

					if(($year ne "" || $mon ne "" || $day ne "") && $flg == 0){

						if($year !~ /[^0-9]/ && $mon !~ /[^0-9]/ && $day !~ /[^0-9]/){
							if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
							}else{
								# その月の末日を計算。(2行目は閏年の計算)
								my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));
								if($day > $lastday){
									$paramName =~ s/^[0-9][0-9][0-9]//;
									push(@errorMsg,"[$paramName]の年月日が不正です。");
								}
							}
						}
					}
				}
			}

			#入力欄種類が年月日タイプ（西暦）タイプ。
			if($cmt2 eq "day2"){

				if($cmt6 eq "_"){

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					$text_data =~ s/西暦//i;

					($year,$tmp1) = split(/年/,$text_data);
					($mon,$tmp2)  = split(/月/,$tmp1);
					($day,$tmp3)  = split(/日/,$tmp2);

					if($year ne "" && $mon ne "" && $day ne ""){

						if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
						if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
						if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

						if($year !~ /[^0-9]/ && $mon !~ /[^0-9]/ && $day !~ /[^0-9]/){

							if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
							}else{

								# その月の末日を計算。(2行目は閏年の計算)
								my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));

								if($day > $lastday){
									$paramName =~ s/^[0-9][0-9][0-9]//;
									push(@errorMsg,"[$paramName]の年月日が不正です。");
								}
							}
						}
					}
				}else{

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					$text_data =~ s/西暦//i;

					($year,$tmp1) = split(/年/,$text_data);
					($mon,$tmp2)  = split(/月/,$tmp1);
					($day,$tmp3)  = split(/日/,$tmp2);

					if($year ne "" || $mon ne "" || $day ne ""){

						if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"年月日（年）に半角数字が入力されていません。");}
						if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"年月日（月）に半角数字が入力されていません。");}
						if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"年月日（日）に半角数字が入力されていません。");}

						if($year !~ /[^0-9]/ && $mon !~ /[^0-9]/ && $day !~ /[^0-9]/){

							if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]の年月日が不正です。");
							}else{

								# その月の末日を計算。(2行目は閏年の計算)
								my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));

								if($day > $lastday){
									$paramName =~ s/^[0-9][0-9][0-9]//;
									push(@errorMsg,"[$paramName]の年月日が不正です。");
								}
							}
						}
					}
				}
			}

			#入力欄種類がメールアドレスタイプ。
			if($cmt2 eq "mail"){

				$paramName = $i.$title;

				$text_data = $in{$paramName};

				#メールアドレスが未入力か。
				if($text_data ne ""){

					#メールアドレスにコンマ「,」が含まれていないか。
					if($text_data =~ /\,/){
						$errorFlg  = 1;
						$paramName =~ s/^[0-9][0-9][0-9]//;
						push(@errorMsg,"メールアドレス[$paramName]にコンマ「\,」が含まれています。");
					}

					#メールアドレスにアットマーク「@」が含まれているか。
					if($text_data !~ /@/){
						$errorFlg  = 1;
						$paramName =~ s/^[0-9][0-9][0-9]//;
						push(@errorMsg,"メールアドレス[$paramName]アットマーク「@」が含まれていません。");
					}

					#メールアドレスに全角が含まれていないか。
					if($text_data =~ /[^0-9a-zA-Z\.\-\_\@]/){
						$errorFlg  = 1;
						$paramName =~ s/^[0-9][0-9][0-9]//;
						push(@errorMsg,"メールアドレス[$paramName]に全角が含まれています。");
					}

					#メールアドレスのドメイン書式が不正か。
					if($text_data !~ /\.[a-zA-Z]{2,5}$/){
						$errorFlg  = 1;
						$paramName =~ s/^[0-9][0-9][0-9]//;
						push(@errorMsg,"メールアドレス[$paramName]を正しく入力して下さい。");
					}

					#メールアドレスチェック補足。
					if(!$errorFlg){

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
						if ($text_data !~ /^$mail_regex$/o){
							$errorFlg  = 1;
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"メールアドレス[$paramName]を正しく入力して下さい。");
						}

						#メールアドレスの書式が不正か。
						if($text_data !~ /[\w\.\-]+\@[\w\.\-]+\.[a-zA-Z]{2,5}$/){
							$errorFlg  = 1;
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"メールアドレス[$paramName]の書式が不正です。");
						}
					}

					#確認メール送信先アドレスの設定。
					if(!$errorFlg){
						push(@email,$text_data);
					}

					$o++;
				}

				$m++;
			}

			$n++;
		}

	}

#	#メールアドレスが未入力か。
#	if(!$errorFlg){
#		if($m != 0){
#			if($o == 0){
#				push(@errorMsg,"メールアドレスが未入力です。");
#			}
#		}
#	}
}
##################################################
# errorForm
# エラー画面表示。
##################################################
sub errorForm{

	#エラー画面の表示。

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
        <td align="center"><input type="button" value="前画面に戻る" onClick="history.back()"></td>
       </tr>
      </table>
      </div>
EOM

}

1;

