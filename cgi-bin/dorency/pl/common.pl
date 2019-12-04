##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2009 SUNFIRST.INC ALL RIGHTS RESERVED.
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
# auto_link
# 自動リンク。
##################################################
sub auto_link{
	$msg =~ s/([^=^\"]|^)(http\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
	$msg =~ s/([^=^\"]|^)(https\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
	$msg =~ s/\b([-\w.]+@[-\w.]+\.[-\w.]+)\b/<a href=\"mailto:$1\">$1<\/a>/g;
}
##################################################
# auto_cmt4
# 自動リンク。
##################################################
sub auto_cmt4{
	$cmt4 =~ s/([^=^\"]|^)(http\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
	$cmt4 =~ s/([^=^\"]|^)(https\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
	$cmt4 =~ s/\b([-\w.]+@[-\w.]+\.[-\w.]+)\b/<a href=\"mailto:$1\">$1<\/a>/g;
}
##################################################
# get_time
# 時間を取得。
##################################################
sub get_time{

	#タイムゾーンを日本時間へ。
	$ENV{'TZ'} = "JST-9";

	#時間変数設定。
	$times = time;

	#（秒、分、時、日、月、年、曜日、ダミー、ダミー）
	($sec,$min,$hour,$mday,$mon,$year,$wday,$dummy,$dummy) = localtime($times);

	#曜日の配列を設定。
	@week = ('日','月','火','水','木','金','土');

	#日時のフォーマット。[例：2000/01/01(月) 01:01:01]
	$date = sprintf("%04d\/%02d\/%02d(%s) %02d\:%02d:%02d",$year + 1900,$mon + 1,$mday,$week[$wday],$hour,$min,$sec);

	#日時のフォーマット。[例：2000/01/01]
	$date2 = sprintf("%04d\%02d\%02d",$year + 1900,$mon + 1,$mday);

}
##################################################
# decode
# デコード処理。
##################################################
sub decode{

	if($ENV{'REQUEST_METHOD'} eq "POST"){		#データ送信方法がPOSTの場合。

		#バイナリモードで読むようにする。
		binmode(STDIN);

		#POSTされたデータをバイナリでバッファに保存。
		read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});

	}else{						#データ送信方法がGETの場合。

		#パラメータ情報をバッファに保存。
		$buffer = $ENV{'QUERY_STRING'};

	}

	if($ENV{'CONTENT_TYPE'} =~ /multipart\/form-data; boundary=(.*)/){

		#送信内容がファイルの場合。
		&methodmulti;

	}else{

		#送信内容がファイルではない場合。

		#バッファを「&」別で配列に保存。
		@pairs = split(/&/,$buffer);

		#バッファデータ精査。
		foreach $pair(@pairs){

			#バッファデータをパラメータ名、データに分ける。
			local($name,$value) = split(/=/,$pair);

			#パラメータ名取得の処理。
			$value =~ tr/+/ /;
			$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

			#データ取得の処理。
			$name =~ tr/+/ /;
			$name =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

			#文字コード変換。
			&jcode'h2z_sjis(*value);
			&jcode'convert(*value,'sjis');
			&jcode'convert(*name,'sjis');

			#改行処理。
			$value =~ s/\r\n/<br>/g;
			$value =~ s/\r/<br>/g;
			$value =~ s/\n/<br>/g;

			#パラメータ名が「user_data」の場合。
			if($name eq "user_data"){
				$value =~ s/:/：/g;
				$value =~ s/;/；/g;
				$value =~ s/,/&#44;/g;
				$value =~ s/\"/&quot;/g;
				$value =~ s/</&lt;/g;
				$value =~ s/>/&gt;/g;
				push(@user_data,$value);
			}

			#パラメータ名が「delivery_address」の場合。
			if($name eq "delivery_address"){
				$value =~ s/:/：/g;
				$value =~ s/;/；/g;
				$value =~ s/,/&#44;/g;
				$value =~ s/\"/&quot;/g;
				$value =~ s/</&lt;/g;
				$value =~ s/>/&gt;/g;
				push(@delivery_address,$value);
			}

			#パラメータ名が「r_delivery_address」の場合。
			if($name eq "r_delivery_address"){
				$value =~ s/:/：/g;
				$value =~ s/;/；/g;
				$value =~ s/,/&#44;/g;
				$value =~ s/\"/&quot;/g;
				$value =~ s/</&lt;/g;
				$value =~ s/>/&gt;/g;
				push(@r_delivery_address,$value);
			}

			if($name ne "user_data" || $name ne "delivery_address" || $name ne "r_delivery_address"){

				$value =~ s/\"/&quot;/g;
				$value =~ s/</&lt;/g;
				$value =~ s/>/&gt;/g;

			}

			#パラメータ名が「item_count」の場合。
			if($name eq "item_count"){
				if($value eq ""){
					$value = "0";
				}
				push(@item_count,$value);
			}

			#パラメータ名が「clear」の場合。
			if($name eq "clear"){
				push(@clear,$value);
			}

			$flg = 0;

			#パラメータ名の先頭に「\_」がある場合。
			if($name =~ /^\_/){

				if($value eq ""){

					$flg = 1;

				}

			}

			if($temp_name ne $name){

				if($flg == 1){

					$temp_name = $name;

					#パラメータ名の先頭に「\_」がある場合は削除。
					$name =~ s/^\_//;

					#パラメータ名の先頭に３桁の数字がある場合は削除。
					$name =~ s/^[0-9][0-9][0-9]//;

					#エラー項目を配列に代入。
					push(@errorMsg,"入力項目の[$name]は必須項目です。");

				}

			}

			#パラメータ名の先頭に「\_」がある場合は削除。
			$name =~ s/^\_//;

			#データを結合して代入。
			$in{$name} .= $value;

			#パラメータ名を配列に代入。
			push(@formdata,$name);
		}
	}

	#各項目を設定。（モード、表示、コード、消去）
	$mode  = $in{'mode'};
	$view  = $in{'view'};
	$code  = $in{'code'};
	$clear = $in{'clear'};
}
##################################################
# access_check
# アクセス認証チェック。
##################################################
sub access_check{

	#ユーザー認証アカウント情報ファイル読み込み。
	open(IN,"$rootdir/option/access/page/acs.dat");
	flock(IN,1);		#ファイルを読み出しロック。
	@access_check = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);

	#ユーザー認証アカウント情報精査。
	foreach $x(@access_check){

		#ユーザー認証アカウント情報からID,PASSを取得する。
		($dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$id,$pass) = split(/,/,$x);

		#取得したID,PASSとPOST(GET)したID,PASSをマッチング。
		if($id eq "$in{'user_id'}" && $pass eq "$in{'user_pass'}"){

			#同じの場合にループを抜ける。
			last;
		}

	}

	#取得したID,PASSとPOST(GET)したID,PASSをマッチング。
	if($id eq "$in{'user_id'}" && $pass eq "$in{'user_pass'}"){

		#ユーザー情報の発行。
		&user_set;

		#ヘッダー出力。
		&header;

		if($in{'user'} eq "out"){

			if($rootdir eq '.'){
				#ログアウトの場合にはトップページにリダイレクト。
				print"<body onLoad=\"MM_goToURL('parent','$html_address');return document.MM_returnValue\">";
			}else{
				#ログアウトの場合にはトップページにリダイレクト。
				print"<body onLoad=\"MM_goToURL('parent','$script');return document.MM_returnValue\">";
			}
		}else{

			#ログインの場合にはパラメータ指定のページにリダイレクト。
			print"<body onLoad=\"MM_goToURL('parent','$script?category=$in{'category'}&page=$in{'page'}');return document.MM_returnValue\">";
		}
	}else{

		#ヘッダー出力。
		&header;

		#ログインエラーの場合にはパラメータ指定のページ(エラーページ)にリダイレクト。
		print"<body onLoad=\"MM_goToURL('parent','$script?category=$in{'category'}&page=$in{'page'}&access=error');return document.MM_returnValue\">";
	}
}
##################################################
# user_set
# ユーザー情報の発行。
##################################################
sub user_set{

	#クッキーは国際時間をキーとし、保存日数は365日間。（秒、分、時、日、月、年、曜日、1月1日からの経過年数、サマータイム期間中は1）
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#曜日名と週名を英語表示の配列で定義。
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365日後の国際時間を指定フォーマット化。[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	if($in{'user'} eq "out"){

		#ログアウトの場合には情報を空にしてクッキー発行。
		$user = "user_id\:\,user_pass\:\,save\:\,";
	}else{

		#ログインの場合には情報をセットしてクッキー発行。
		$user = "user_id\:$in{'user_id'}\,user_pass\:$in{'user_pass'}\,save\:$in{'save'}\,";
	}

	#クッキー情報を保存する。
	if($in{'save'} eq "save"){
		print"Set-Cookie: $site_folder=$user; expires=$date_gmt;\n";
	}
	if($in{'save'} ne "save"){
		print"Set-Cookie: $site_folder=$user;\n";
	}

}
##################################################
# user_get
# ユーザー情報を取得。
##################################################
sub user_get{

	#クッキー情報を取得。
	$cookie_user = $ENV{'HTTP_COOKIE'};

	#取得したクッキー情報を分解。
	@pairs = split(/;/,$cookie_user);

	#分解してクッキー情報を精査。
	foreach $pair(@pairs){

		#クッキーデータをパラメータ名、データに分ける。
		local($name,$value) = split(/=/,$pair);

		#空白文字を削除。
		$name =~ s/\s//g;

		#一時保存変数を用意。
		$DUMMY{$name} = $value;
	}

	#クッキーIDを指定。
	@pairs = split(/,/,$DUMMY{$site_folder});

	#クッキーIDを精査。
	foreach $pair(@pairs){

		#クッキーIDをパラメータ名、データに分ける。
		local($name,$value) = split(/:/,$pair);

		#クッキーIDからユーザを指定。
		$COOKIE_USER{$name} = $value;
	}

	#クッキーで得た名前、メール、URLを定義。
	$c_id   = $COOKIE_USER{'user_id'};
	$c_pass = $COOKIE_USER{'user_pass'};
	$c_save = $COOKIE_USER{'save'};
}
##################################################
# get_image
# 画像情報取得。
##################################################
sub get_image{

	$res = &get_type($target);

	if($res eq "jpg")   {($h,$w) = &jpg_getsize($target);}
	elsif($res eq "png"){($h,$w) = &png_getsize($target);}
	elsif($res eq "gif"){($h,$w) = &gif_getsize($target);}
	elsif($res eq "bmp"){($h,$w) = &bmp_getsize($target);}
	else                {($h,$w) = ("","");              }

	#エラー認識。
	if($h eq "" || $w eq ""){
		($res,$h,$w) = ("","","");
	}

	return($res,$h,$w);

}
##################################################
# get_type
# 画像タイプ取得。
##################################################
sub get_type{

	$file = $_[0];

	open(FILE,$file);
	read(FILE,$data,4);
	close(FILE);

	($type) = unpack("H4",$data);

	if($type eq "4749")   {$type = "gif";}
	elsif($type eq "424d"){$type = "bmp";}
	elsif($type eq "8950"){$type = "png";}
	elsif($type eq "ffd8"){$type = "jpg";}
	else                  {$type = "";   }

	return($type);

}
##################################################
# gif_getsize
# 画像サイズ取得。(gif)
##################################################
sub gif_getsize{

	$gif = $_[0];

	open(GIF,$gif);
	seek(GIF,6,0);
	read(GIF,$size,4);
	close(GIF);

	($width,$height) = unpack("vv",$size);

	return($height,$width);

}
##################################################
# bmp_getsize
# 画像サイズ取得。(bmp)
##################################################
sub bmp_getsize{

	$bmp = $_[0];

	open(BMP,$bmp);
	seek(BMP,18,0);
	read(BMP,$size,8);
	close(BMP);

	($width,$height) = unpack("V2", $size);

	return($height,$width);

}
##################################################
# png_getsize
# 画像サイズ取得。(png)
##################################################
sub png_getsize{

	$png = $_[0];

	open(PNG,$png);
	seek(PNG,16,0);
	read(PNG,$size,8);
	close(PNG);

	($dummy,$width,$height) = unpack("nnNN",$size);

	return($height,$width);

}
##################################################
# jpg_getsize
# 画像サイズ取得。(jpg)
##################################################
sub jpg_getsize{

	$jpg = $_[0];

	$now = 2;

	open(JPG,$jpg);
	seek(JPG,$now,0);

	while(!eof(JPG)){

		#マーカーチェック。
		read(JPG,$maker,2);

		$now += 2;

		($w1) = unpack("H4",$maker);

		if ($w1 ne "ffc2" && $w1 ne "ffc0"){

			read(JPG,$jump,2);

			$now += 2;

			($s1) = unpack("n",$jump);

			$now += $s1-2;

			seek(JPG,$now,0);

		}else{

			$now += 3;

			seek(JPG,$now,0);

			read(JPG,$size,4);

			($height,$width) = unpack("nn",$size);

			seek(JPG,0,2);

		}
	}

	close(JPG);

	return($height,$width);

}
##################################################
# errorAccess
# アクセス認証エラー。
##################################################
sub errorAccess{

print<<"EOM";
      <br>
      <br>
      <table bgcolor="#CCCCCC" border="1" cellpadding="2" cellspacing="2" width="300" align="center" bordercolor="#999999">
       <tr bordercolor="#CCCCCC" bgcolor="#000066">
        <td align="center" height="30"><font color="#FFFFFF" size="-1">認証エラー</font></td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td align="center"><font color="#FF0000" size="-1"><strong>認証できませんでした。</strong></font></td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td align="center">
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="submit" value="戻る">
        </form>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
EOM

}
##################################################
# errorSearch
# エラー画面表示。
##################################################
sub errorSearch{

	#エラーメッセージの表示。

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center">-----------------<strong>エラーメッセージ</strong>-----------------</td>
       </tr>
       <tr>
        <td align="center">
        <font color="#FF0000" size="-1"><strong>検索キーワードを設定してください。</strong></font>
        </td>
       </tr>
       <tr>
        <td align="center">
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="submit" value="検索画面に戻る">
        </form>
        </td>
       </tr>
      </table>
      </div>
EOM

}
##################################################
# errorPage
# エラー画面表示。
##################################################
sub errorPage{

	#エラーメッセージの表示。

print<<"EOM";
    <div align="center">
    <table border="0" cellpadding="1" cellspacing="1">
     <tr>
      <td height="30" align="center">-----------------<strong>エラーメッセージ</strong>-----------------</td>
     </tr>
     <tr>
      <td align="center">
      <font color="#FF0000" size="-1"><strong>ページがありません。</strong></font>
      </td>
     </tr>
     <tr>
      <td align="center"><input type="button" value="戻る" onClick="history.back()"></td>
     </tr>
    </table>
    </div>
EOM

}
##################################################
# errorSystem
# エラー画面表示。
##################################################
sub errorSystem{

	#エラーメッセージの表示。

print"Content-type: text/html\n\n";

print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<title>システムエラー</title>
</head>
<body>
<center>
<table border="0" cellpadding="1" cellspacing="1">
 <tr>
  <td valign="top">
   <div align="center">
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td height="30" align="center">-----------------<strong>エラーメッセージ</strong>-----------------</td>
    </tr>
    <tr>
     <td align="center">
     <font color="#FF0000" size="-1"><strong>システム情報がありません。</strong></font>
     </td>
    </tr>
    <tr>
     <td align="center"><input type="button" value="戻る" onClick="history.back()"></td>
    </tr>
   </table>
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td align="center"><font size="-1">COPYRIGHT(C)2004 SUNFIRST.INC ALL RIGHTS RESERVED.</font></td>
    </tr>
   </table>
   </div>
  </td>
 </tr>
</table>
</center>
</body>
</html>
EOM

}

1;
