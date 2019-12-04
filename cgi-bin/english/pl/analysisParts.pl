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
# header
# ヘッダー出力。
##################################################
sub header{

print"Content-type: text/html\n\n";
print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<meta name="generator" content="SITEUP SYSTEM ver1.80.00">
<head>
EOM

	if($mode eq "wait" && $submit ne "管理画面へ"){

print<<"EOM";
<meta http-equiv="refresh" content="1;url=$script?mode=index&sunfirst=$sunfirst&select=$select&range=$range&ymd_file=$ymd_file&week_file=$week_file&ym_file=$ym_file&sentence1=$sentence1&cond1=$cond1&sentence2=$sentence2&cond2=$cond2&sentence3=$sentence3&cond3=$cond3&sentence4=$sentence4&cond4=$cond4&sentence5=$sentence5&cond5=$cond5&sentence6=$sentence6&cond6=$cond6&sentence7=$sentence7&cond7=$cond7&page=$page&referrer=$referrer&search_engin=$search_engin&search_keyword=$search_keyword&host_name=$host_name&os=$os&agent=$agent&type=$type&no=$no">
EOM

	}

print<<"EOM";
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>アクセス解析</title>
EOM

	if($imgdir =~ /^http/){

print<<"EOM";
<script language="javascript" type="text/javascript" src="$html_address/graph-line.js"></script>
EOM

	}else{

print<<"EOM";
<script language="javascript" type="text/javascript" src="http://localhost:11213/$site_folder/up/graph-line.js"></script>
EOM

	}

	if($mode eq "wait" && $submit ne "管理画面へ"){

print<<"EOM";
<STYLE TYPE="text/css">
<!--
body{
	background-color:#CCCCCC;
	color:#000000;
	margin-top:0;
}
tr,td{
	font-size:12px;
}
-->
</STYLE>
EOM

	}else{

print<<"EOM";
<STYLE TYPE="text/css">
<!--
body{
	background-color:#CCCCCC;
	color:#000000;
	margin-top:0;
}
tr,td{
	font-size:12px;
}
#graph table{
	border:0;
	padding:0;
	border-collapse:collapse;
}
#graph td{
	text-align:center;
	vertical-align:bottom;
}
#day2,#dayResult2,#week2,#weekResult2,#time2,#timeResult2,#button2{
	display:none
}
-->
</STYLE>
EOM

	}

print<<"EOM";
<script language="JavaScript">
<!--
function viewButton(type){
	if(type == "week" || type == "month"){
		document.getElementById("day1").style.display        = "block";
		document.getElementById("dayResult1").style.display  = "block";
		document.getElementById("week1").style.display       = "block";
		document.getElementById("weekResult1").style.display = "block";
		document.getElementById("time1").style.display       = "block";
		document.getElementById("timeResult1").style.display = "block";
	}else{
		document.getElementById("time1").style.display       = "block";
		document.getElementById("timeResult1").style.display = "block";
	}
}
function displayOfAllDay(){
	document.getElementById("day1").style.display       = "none";
	document.getElementById("day2").style.display       = "block";
	document.getElementById("dayResult1").style.display = "none";
	document.getElementById("dayResult2").style.display = "block";
}
function displayOfPartDay(){
	document.getElementById("day1").style.display       = "block";
	document.getElementById("day2").style.display       = "none";
	document.getElementById("dayResult1").style.display = "block";
	document.getElementById("dayResult2").style.display = "none";
}
function displayOfAllWeek(){
	document.getElementById("week1").style.display       = "none";
	document.getElementById("week2").style.display       = "block";
	document.getElementById("weekResult1").style.display = "none";
	document.getElementById("weekResult2").style.display = "block";
}
function displayOfPartWeek(){
	document.getElementById("week1").style.display       = "block";
	document.getElementById("week2").style.display       = "none";
	document.getElementById("weekResult1").style.display = "block";
	document.getElementById("weekResult2").style.display = "none";
}
function displayOfAllTime(){
	document.getElementById("time1").style.display       = "none";
	document.getElementById("time2").style.display       = "block";
	document.getElementById("timeResult1").style.display = "none";
	document.getElementById("timeResult2").style.display = "block";
}
function displayOfPartTime(){
	document.getElementById("time1").style.display       = "block";
	document.getElementById("time2").style.display       = "none";
	document.getElementById("timeResult1").style.display = "block";
	document.getElementById("timeResult2").style.display = "none";
}
function send(){

	document.myFORM.submit();
	getCount();
}
myColCnt = 0;
myColTbl = new Array("#FF0000","#0000FF","#00FF00","#FF00FF","#00FFFF","#FFFF00");
function getCount(){
	if(myColCnt == 5){
		myColCnt = 0;
	}else{
		myColCnt++;
	}
	document.all("myIDstr").style.color = myColTbl[myColCnt];
	setTimeout("getCount()",1000);
}
function boxChecked(check){
	if(check == true){
		document.getElementById("button1").style.display = "none";
		document.getElementById("button2").style.display = "block";
	}else if (check == false){
		document.getElementById("button1").style.display = "block";
		document.getElementById("button2").style.display = "none";
	}
	for (i = 0 ; i < document.download.file.length ; i++){
		document.download.file[i].checked = check;
	}
}
//-->
</script>
</head>
<noscript>JavaScriptは使えない状態です・・・</noscript>
EOM

}
##################################################
# body
# body出力。
##################################################
sub body{

print<<"EOM";
<body>
<table bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
 <tr>
  <td align="center" valign="top">
   <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
     <td bgcolor="#990000" align="center" valign="middle" height="30" nowrap>
      <font color="#FFFFFF"><strong>SITEUP SYSTEM アクセス解析レポート</strong></font>
     </td>
    </tr>
   </table>
EOM

}
##################################################
# bodyAnalysis
# body出力。(解析モード)
##################################################
sub bodyAnalysis{

print<<"EOM";
<body onload="viewButton('$range')">
<table bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
 <tr>
  <td align="center" valign="top">
   <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
     <td bgcolor="#990000" align="center" valign="middle" height="30" nowrap>
      <font color="#FFFFFF"><strong>SITEUP SYSTEM アクセス解析レポート</strong></font>
     </td>
    </tr>
   </table>
EOM

}
##################################################
# login
# ログイン画面表示。
##################################################
sub login{

	#ログイン日時取得。
	my $newlogin = time;

	#body出力。
	&body;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="50" nowrap>
      <strong>■管理者パスワードを入力して「ログイン」ボタンをクリックしてください。</strong>
     </td>
    </tr>
    <tr>
     <td align="center" valign="middle" height="50" nowrap>
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="login">
      <input type="hidden" name="sunfirst" value="$newlogin">
      管理者パスワード
      <input type="password" name="pswd" size="10" value="$pswd">
      <input type="submit" value="ログイン">
      </form>
     </td>
    </tr>
    <tr>
     <td align="center" valign="middle" height="50" nowrap>
      <hr size="1">
     </td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	exit;
}
##################################################
# index
# 解析モード画面表示。
##################################################
sub index{

	#body出力。
	&body;

	#解析モード画面表示。
	&modeSelect;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="left" valign="middle" height="50" nowrap>
      <strong>■操作説明</strong><br>
      1.解析したい期間に応じて、ログファイルを選択します。<br>
      2.解析スタートボタンをクリックします。
     </td>
    </tr>
    <tr>
     <td align="left" valign="middle" height="50" nowrap>
      <strong>■注意事項</strong><br>
      1.管理者パスワードは、必ず変更を行ってください。<br>
      2.管理者パスワードは、管理画面から変更ができます。<br>
     </td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	exit;
}
##################################################
# putWait
# 解析モード結果待ち表示。
##################################################
sub putWait{

print<<"EOM";
<body onload="send()">
<table bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
 <tr>
  <td align="center" valign="top">
   <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
     <td bgcolor="#990000" align="center" valign="middle" height="30" nowrap>
      <font color="#FFFFFF"><strong>SITEUP SYSTEM アクセス解析レポート</strong></font>
     </td>
    </tr>
   </table>
   <div align="center">
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td height="300" align="center"><strong>ただいまデータを読み込み中です。<br>しばらくお待ち下さい。</strong></td>
    </tr>
   </table>
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td><div id="myIDstr">NOW LOADING..</div></td>
    </tr>
   </table>
   </div>
   <form action="$script" method="post" style="margin-bottom:0" name="myFORM">
   <input type="hidden" name="mode" value="index">
   <input type="hidden" name="sunfirst" value="$sunfirst">
   <input type="hidden" name="select" value="$select">
   <input type="hidden" name="range" value="$range">
   <input type="hidden" name="ymd_file" value="$ymd_file">
   <input type="hidden" name="week_file" value="$week_file">
   <input type="hidden" name="ym_file" value="$ym_file">
   <input type="hidden" name="sentence1" value="$sentence1">
   <input type="hidden" name="cond1" value="$cond1">
   <input type="hidden" name="sentence2" value="$sentence2">
   <input type="hidden" name="cond2" value="$cond2">
   <input type="hidden" name="sentence3" value="$sentence3">
   <input type="hidden" name="cond3" value="$cond3">
   <input type="hidden" name="sentence4" value="$sentence4">
   <input type="hidden" name="cond4" value="$cond4">
   <input type="hidden" name="sentence5" value="$sentence5">
   <input type="hidden" name="cond5" value="$cond5">
   <input type="hidden" name="sentence6" value="$sentence6">
   <input type="hidden" name="cond6" value="$cond6">
   <input type="hidden" name="sentence7" value="$sentence7">
   <input type="hidden" name="cond7" value="$cond7">
   <input type="hidden" name="page" value="$page">
   <input type="hidden" name="referrer" value="$referrer">
   <input type="hidden" name="search_engin" value="$search_engin">
   <input type="hidden" name="search_keyword" value="$search_keyword">
   <input type="hidden" name="host_name" value="$host_name">
   <input type="hidden" name="os" value="$os">
   <input type="hidden" name="agent" value="$agent">
   <input type="hidden" name="type" value="$type">
   <input type="hidden" name="no" value="$no">
   </form>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	exit;
}
##################################################
# putAnalysis
# 解析モード結果表示。
##################################################
sub putAnalysis{

	if($pv == 0){

		#body出力。
		&body;

		#解析モード画面表示。
		&modeSelect;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymdのアクセス解析レポート</strong>
      <hr size="1">
      <strong><font color="#990000">有効なアクセス結果はありませんでした。</font></strong>
      <hr size="1">
     </td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}else{

		#body出力。
		&bodyAnalysis;

		#解析モード画面表示。
		&modeSelect;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymdのアクセス解析レポート</strong>
     </td>
    </tr>
   </table>
   <table bgcolor="#666666" border="0" cellpadding="3" cellspacing="1" width="90%">
    <tr>
     <td bgcolor="#CCCCCC" align="center" valign="middle" height="30" nowrap>
      <table bgcolor="#FFFFFF" border="0" cellpadding="3" cellspacing="1" width="100%">
       <tr>
        <td>
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td>■1日単位による統計</td>
EOM

		if($range ne "day"){

print<<"EOM";
           <td>
            <div id="day1" style="display:none"><input type="button" name="day" value="表\示切替" onclick="displayOfAllDay()"></div>
            <div id="day2" style="display:none"><input type="button" name="day" value="表\示切替" onclick="displayOfPartDay()"></div>
           </td>
EOM

		}

print<<"EOM";
          </tr>
         </table>
         <div id="dayResult1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
EOM

		#グラフ表示用データ初期化。
		my $graph_data_d = "";
		my $graph_data_u = "";

		#表示カウント変数初期化。
		my $i = 0;

		#平均値ウント変数初期化。
		my $dd = 0;

		#トータルページpv初期化。
		my $sum = 0;

		#トータルアクセスpv初期化。
		my $sumu = 0;

		#最大ページpv初期化。
		my $max = 0;

		#最大アクセスpv初期化。
		my $maxu = 0;

		#ページpv情報を配列に代入。
		my @hash = keys(%dms);

		#最小ページpvを取得。
		my $mini = $dms{"$hash[0]"};

		#ページpv配列を初期化。
		undef(@hash);

		#アクセスpv情報を配列に代入。
		my @hashu = keys(%uniq_user);

		#最小アクセスpvを取得。
		my $miniu = $uniq_user{"$hashu[0]"};

		#アクセスpv配列を初期化。
		undef(@hashu);

		foreach (sort keys %dms){

			#平均値カウントアップ。
			$dd++;

			#トータルページpv。
			$sum = $sum + $dms{$_};

			#最大ページpvを取得。
			if($dms{$_} > $max){$max = $dms{$_};}

			#最小ページpvを取得。
			if($dms{$_} < $mini){$mini = $dms{$_};}

			#1日単位（ページ総数）のアクセス割合を算出。
			my $percent_dms = (int(10000 * ($dms{$_} / $dmp)) / 100);

			#画像幅を算出。
			my $img1_width = int($bar * $percent_dms / 100);

			#画像の幅が1未満の場合は1にする。
			if($img1_width < 1){
				$img1_width = 1;
			}

			#トータルアクセスpv。
			$sumu = $sumu + $uniq_user{$_};

			#最大アクセスpvを取得。
			if($uniq_user{$_} > $maxu){$maxu = $uniq_user{$_};}

			#最小アクセスpvを取得。
			if($uniq_user{$_} < $miniu){$miniu = $uniq_user{$_};}

			#1日単位（アクセス総数）のアクセス割合を算出。
			my $percent_upv = (int(10000 * ($uniq_user{$_} / $dmp)) / 100);

			#画像幅を算出。
			my $img2_width = int($bar * $percent_upv / 100);

			#画像の幅が1未満の場合は1にする。
			if($img2_width < 1){
				$img2_width = 1;
			}

			#グラフ表示用データ形成。
			my $xpoint = 0;

			if($range eq "week"){
				$xpoint = 50 * $dd;
			}elsif($range eq "month"){
				$xpoint = 15 * $dd;
			}

			my($mm_tmp,$dd_tmp) = split(/\//,$_);

			$graph_data_d .= "            XnamePush($xpoint,$dd_tmp)\;\n";
			$graph_data_d .= "            PointPush($xpoint,$dms{$_},1,\"$_ $dms{$_}pv\")\;\n";

			$graph_data_u .= "            XnamePush($xpoint,$dd_tmp)\;\n";
			$graph_data_u .= "            PointPush($xpoint,$uniq_user{$_},1,\"$_ $uniq_user{$_}pv\")\;\n";

print<<"EOM";
           <td align="center" valign="bottom" nowrap>
            <div id="graph">
            <table>
             <tr>
              <td>
               <small>$dms{$_}</small>
               <table>
                <tr>
                 <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="10px" height="$img1_width\px"></td>
                </tr>
               </table>
              </td>
              <td>
               <small>$uniq_user{$_}</small>
               <table>
                <tr>
                 <td bgcolor="#FF9900"><img src="$imgdir/spacer.gif" width="10px" height="$img2_width\px"></td>
                </tr>
               </table>
              </td>
             </tr>
             <tr>
              <td colspan="2">$_</td>
             </tr>
            </table>
            </div>
           </td>
EOM

			#件数が15以上なら<tr>で区切る。（改行する）
			if($i >= 6){
				print"          </tr>\n";
				print"          <tr>\n";
				$i = 0;
			}else{
				$i++;
			}
		}

		#平均ページpv。
		my $ave = 0;
		$ave    = $sum / $dd;
		$ave    = sprintf("%.1f",$ave);

		#平均アクセスpv。
		my $aveu = 0;
		$aveu    = $sumu / $dd;
		$aveu    = sprintf("%.1f",$aveu);

		#1日単位による統計情報の初期化。
		undef(%dms);

		#最後の[CR/LF]除去。
		chomp($graph_data_d);

print<<"EOM";
          </tr>
         </table>
         </div>
EOM

		if($range ne "day"){

print<<"EOM";
         <div id="dayResult2">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td align="center" valign="bottom" nowrap>
            <script>
            PointReset();
            XnameReset();
            StyleSet("GraphX",500);
            StyleSet("GraphY",100);
            StyleSet("GraphBG","whitesmoke");
            StyleSet("GraphColor","blue");
            StyleSet("MarginTop",30);
            StyleSet("MarginBottom",25);
            StyleSet("MarginLeft",60);
            StyleSet("MarginRight",25);
            StyleSet("Title","ページ表\示件数");
            StyleSet("Unit1","件数");
            StyleSet("Unit2","日");
            StyleSet("BaseFS",12);
            StyleSet("TitleFS","12px");
            StyleSet("MarkerSize",10);
            StyleSet("MarkerColor","#990000");
            BaselineSet(null);
$graph_data_d
            GraphShow();
            </script>
           </td>
          </tr>
         </table>
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td align="center" valign="bottom" nowrap>
            <script>
            PointReset();
            XnameReset();
            StyleSet("GraphX",500);
            StyleSet("GraphY",100);
            StyleSet("GraphBG","whitesmoke");
            StyleSet("GraphColor","blue");
            StyleSet("MarginTop",30);
            StyleSet("MarginBottom",25);
            StyleSet("MarginLeft",60);
            StyleSet("MarginRight",25);
            StyleSet("Title","アクセス件数");
            StyleSet("Unit1","件数");
            StyleSet("Unit2","日");
            StyleSet("BaseFS",12);
            StyleSet("TitleFS","12px");
            StyleSet("MarkerSize",10);
            StyleSet("MarkerColor","#FF9900");
            BaselineSet(null);
$graph_data_u
            GraphShow();
            </script>
           </td>
          </tr>
         </table>
         </div>
EOM

		}

		if($in{'range'} eq "week" || $in{'range'} eq "month"){

print<<"EOM";
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td width="10" align="left" nowrap>
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="10px" height="10px"></td>
             </tr>
            </table>
           </td>
           <td width="50" align="left" nowrap>ページ</td>
           <td width="100" align="left" nowrap>総数<strong>$pv\pv</strong></td>
           <td width="100" align="left" nowrap>平均<strong>$ave\pv</strong></td>
           <td width="100" align="left" nowrap>最大<strong>$max\pv</strong></td>
           <td width="100" align="left" nowrap>最低<strong>$mini\pv</strong></td>
          </tr>
          <tr>
           <td width="10" align="left" nowrap>
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#FF9900"><img src="$imgdir/spacer.gif" width="10px" height="10px"></td>
             </tr>
            </table>
           </td>
           <td width="50" align="left" nowrap>アクセス</td>
           <td width="100" align="left" nowrap>総数<strong>$sumu人</strong></td>
           <td width="100" align="left" nowrap>平均<strong>$aveu人</strong></td>
           <td width="100" align="left" nowrap>最大<strong>$maxu人</strong></td>
           <td width="100" align="left" nowrap>最低<strong>$miniu人</strong></td>
          </tr>
         </table>
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td>■曜日単位による統計</td>
           <td>
            <div id="week1" style="display:none"><input type="button" name="week" value="表\示切替" onclick="displayOfAllWeek()"></div>
            <div id="week2" style="display:none"><input type="button" name="week" value="表\示切替" onclick="displayOfPartWeek()"></div>
           </td>
          </tr>
         </table>
         <div id="weekResult1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
EOM

			#グラフ表示用データ初期化。
			my $graph_data_w = "";

			#表示カウント変数初期化。
			my $j = 0;

			foreach (sort keys %youbis){

				#カウントアップ。
				$j++;

				#曜日単位のアクセス割合を算出。
				my $percent_youbis = (int(10000 * ($youbis{$_} / $youbip)) / 100);

				#画像幅を算出。
				$img1_y = int($bar * $percent_youbis / 100);

				#画像の幅が1未満の場合は1にする。
				if($img1_y < 1){
					$img1_y = 1;
				}

				#グラフ表示用データ形成。
				my $xpoint = 50 * $j;

				$graph_data_w .= "            XnamePush($xpoint,\"$youbi[$_]\")\;\n";
				$graph_data_w .= "            PointPush($xpoint,$youbis{$_},1,\"$youbi[$_]曜日 $youbis{$_}pv\")\;\n";

print<<"EOM";
           <td align="center" valign="bottom" nowrap>
            <div id="graph">
            <small>$youbis{$_}</small>
            <table>
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="10px" height="$img1_y\px"></td>
             </tr>
            </table>
            <small>$youbi[$_]曜</small>
            </div>
           </td>
EOM

			}

			#曜日単位による統計情報の初期化。
			undef(%youbis);

			#最後の[CR/LF]除去。
			chomp($graph_data_w);

print<<"EOM";
          </tr>
         </table>
         </div>
         <div id="weekResult2">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td align="center" valign="bottom" nowrap>
            <script>
            PointReset();
            XnameReset();
            StyleSet("GraphX",500);
            StyleSet("GraphY",100);
            StyleSet("GraphBG","whitesmoke");
            StyleSet("GraphColor","blue");
            StyleSet("MarginTop",30);
            StyleSet("MarginBottom",25);
            StyleSet("MarginLeft",60);
            StyleSet("MarginRight",25);
            StyleSet("Title","");
            StyleSet("Unit1","件数");
            StyleSet("Unit2","曜日");
            StyleSet("BaseFS",12);
            StyleSet("TitleFS","12px");
            StyleSet("MarkerSize",10);
            StyleSet("MarkerColor","#990000");
            BaselineSet(null);
$graph_data_w
            GraphShow();
            </script>
           </td>
          </tr>
         </table>
         </div>
EOM

		}elsif($in{'range'} eq "day"){

print<<"EOM";
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td width="10" align="left" nowrap>
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="10px" height="10px"></td>
             </tr>
            </table>
           </td>
           <td width="50" align="left" nowrap>ページ</td>
           <td width="100" align="left" nowrap>総数<strong>$pv\pv</strong></td>
          </tr>
          <tr>
           <td width="10" align="left" nowrap>
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#FF9900"><img src="$imgdir/spacer.gif" width="10px" height="10px"></td>
             </tr>
            </table>
           </td>
           <td width="50" align="left" nowrap>アクセス</td>
           <td width="100" align="left" nowrap>総数<strong>$sumu人</strong></td>
          </tr>
         </table>
EOM

		}

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td>■時間単位による統計</td>
           <td>
            <div id="time1" style="display:none"><input type="button" name="time" value="表\示切替" onclick="displayOfAllTime()"></div>
            <div id="time2" style="display:none"><input type="button" name="time" value="表\示切替" onclick="displayOfPartTime()"></div>
           </td>
          </tr>
         </table>
         <div id="timeResult1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
EOM

		#グラフ表示用データ初期化。
		my $graph_data_t = "";

		#表示カウント変数初期化。
		my $k = 0;

		foreach (sort keys %hours){

			#カウントアップ。
			$k++;

			#時間単位のアクセス割合を算出。
			my $percent_hours = (int(10000 * ($hours{$_} / $hourp)) / 100);

			#画像幅を算出。
			$img1_t = int($bar * $percent_hours / 100);

			#画像の幅が1未満の場合は1にする。
			if($img1_t < 1){
				$img1_t = 1;
			}

			#グラフ表示用データ形成。
			my $xpoint = 20 * $k;

			#グラフ表示用データ形成。
			$graph_data_t .= "            XnamePush($xpoint,\"$_\")\;\n";
			$graph_data_t .= "            PointPush($xpoint,$hours{$_},1,\"$_時 $hours{$_}pv\")\;\n";

print<<"EOM";
           <td align="center" valign="bottom" nowrap>
            <div id="graph">
            <small>$hours{$_}</small>
            <table>
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="10px" height="$img1_t\px"></td>
             </tr>
            </table>
            <small>$_時</small>
            </div>
           </td>
EOM

		}

		#時間単位による統計情報の初期化。
		undef(%hours);

		#最後の[CR/LF]除去。
		chomp($graph_data_t);

print<<"EOM";
          </tr>
         </table>
         </div>
         <div id="timeResult2">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td align="center" valign="bottom" nowrap>
            <script>
            PointReset();
            XnameReset();
            StyleSet("GraphX",500);
            StyleSet("GraphY",100);
            StyleSet("GraphBG","whitesmoke");
            StyleSet("GraphColor","blue");
            StyleSet("MarginTop",30);
            StyleSet("MarginBottom",25);
            StyleSet("MarginLeft",60);
            StyleSet("MarginRight",25);
            StyleSet("Title","");
            StyleSet("Unit1","件数");
            StyleSet("Unit2","時");
            StyleSet("BaseFS",12);
            StyleSet("TitleFS","12px");
            StyleSet("MarkerSize",10);
            StyleSet("MarkerColor","#990000");
            BaselineSet(null);
$graph_data_t
            GraphShow();
            </script>
           </td>
          </tr>
         </table>
         </div>
EOM

		#[ページ]の表示。
		if($page eq "on"){
			&page;
		}
		#[リンク元]の表示。
		if($referrer eq "on"){
			&referrerServer;
		}
		#[検索サイト]の表示。
		if($search_engin eq "on"){
			%rtitles = %engins;
			&reportPut("engin","検索サイト",$enginp,"");
		}
		#[検索キーワード]の表示。
		if($search_keyword eq "on"){
			&searchWord;
		}
		#[ホスト名]の表示。
		if($host_name eq "on"){
			&hostName;
		}
		#[OS]の表示。
		if($os eq "on"){
			%rtitles = %os_names;
			&reportPut("os_name","OS",$os_namep,"");
		}
		#[ブラウザ]の表示。
		if($agent eq "on"){
			%rtitles = %agent_names;
			&reportPut("agent","ブラウザ",$agent_namep,"");
		}

		#スクリプト終了時間。
		$cpu_end = (times)[0];

		#スクリプト経過時間。
		$analysis_time = sprintf("%.3f 秒",$cpu_end-$cpu_start);

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="2" align="center">
          <tr>
           <td>解析時間 $analysis_time</td>
          </tr>
         </table>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
   <br>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}

	exit;
}
##################################################
# putLog
# ログ閲覧モード結果表示。
##################################################
sub putLog{

	if($#lists == -1){

		#body出力。
		&body;

		#解析モード画面表示。
		&modeSelect;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymdのアクセス解析レポート</strong>
      <hr size="1">
      <strong><font color="#990000">有効なアクセス結果はありませんでした。</font></strong>
      <hr size="1">
     </td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}else{

		#body出力。
		&body;

		#解析モード画面表示。
		&modeSelect;

		#開始カウント計算。
		my $start = $no * $pageing;

		#終了カウント計算。
		my $end = ($no + 1) * $pageing;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymdのアクセス解析レポート</strong>
     </td>
    </tr>
   </table>
EOM

		if($#lists > $pageing){

			#最大ページ数計算。
			my $max_count = int($#lists / $pageing) + 1;

			#開始カウント表示。
			my $start_view = $start + 1;

			#終了カウント表示。
			my $end_view = 0;

			if(($no + 1) == $max_count){
				$end_view = $#lists + 1;
			}else{
				$end_view = $end;
			}

			#トータル計算。
			my $total = $#lists + 1;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>トータル $total 件中 $start_view - $end_view 件目</strong>
     </td>
    </tr>
   </table>
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
EOM

			if($no != 0){

				my $page_count = $no - 1;

print<<"EOM";
      <a href="$script?mode=wait&sunfirst=$sunfirst&select=$select&range=$range&ymd_file=$ymd_file&week_file=$week_file&ym_file=$ym_file&sentence1=$sentence1&cond1=$cond1&sentence2=$sentence2&cond2=$cond2&sentence3=$sentence3&cond3=$cond3&sentence4=$sentence4&cond4=$cond4&sentence5=$sentence5&cond5=$cond5&sentence6=$sentence6&cond6=$cond6&sentence7=$sentence7&cond7=$cond7&page=$page&referrer=$referrer&search_engin=$search_engin&search_keyword=$search_keyword&host_name=$host_name&os=$os&agent=$agent&type=$type&no=$page_count">&lt;&lt;</a>
EOM

			}

			my $count_start = 0;
			my $count_end   = 0;

			if($no <= 10){

				$count_start = 0;

				if($max_count > $no + 10){
					$count_end = $no + 10;
				}else{
					$count_end = $max_count;
				}

			}elsif($no > 10){

				$count_start = $no - 10;

				if($max_count > $no + 10){
					$count_end = $no + 10;
				}else{
					$count_end = $max_count;
				}

			}

			for($i = $count_start ; $i < $count_end ; $i++){

				my $page_count = $i + 1;

				if($no != $i){

print<<"EOM";
      <a href="$script?mode=wait&sunfirst=$sunfirst&select=$select&range=$range&ymd_file=$ymd_file&week_file=$week_file&ym_file=$ym_file&sentence1=$sentence1&cond1=$cond1&sentence2=$sentence2&cond2=$cond2&sentence3=$sentence3&cond3=$cond3&sentence4=$sentence4&cond4=$cond4&sentence5=$sentence5&cond5=$cond5&sentence6=$sentence6&cond6=$cond6&sentence7=$sentence7&cond7=$cond7&page=$page&referrer=$referrer&search_engin=$search_engin&search_keyword=$search_keyword&host_name=$host_name&os=$os&agent=$agent&type=$type&no=$i">$page_count</a>
EOM

				}else{

print<<"EOM";
      <strong>$page_count</strong>
EOM

				}

			}

			if(($no + 1) != $max_count){

				my $page_count = $no + 1;

print<<"EOM";
      <a href="$script?mode=wait&sunfirst=$sunfirst&select=$select&range=$range&ymd_file=$ymd_file&week_file=$week_file&ym_file=$ym_file&sentence1=$sentence1&cond1=$cond1&sentence2=$sentence2&cond2=$cond2&sentence3=$sentence3&cond3=$cond3&sentence4=$sentence4&cond4=$cond4&sentence5=$sentence5&cond5=$cond5&sentence6=$sentence6&cond6=$cond6&sentence7=$sentence7&cond7=$cond7&page=$page&referrer=$referrer&search_engin=$search_engin&search_keyword=$search_keyword&host_name=$host_name&os=$os&agent=$agent&type=$type&no=$page_count">&gt;&gt;</a>
EOM

			}

print<<"EOM";
     </td>
    </tr>
   </table>
EOM

		}else{

			#トータル計算。
			my $total = $#lists + 1;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>トータル $total 件</strong>
     </td>
    </tr>
   </table>
EOM

		}

print<<"EOM";
   <table bgcolor="#CCCCCC" bordercolor="#666666" border="1" cellpadding="1" cellspacing="0" width="90%">
EOM

		#カウント変数初期化。
		my $count = 0;

		#比較ホスト変数初期化。
		my $tmp_data = "";

		#ログ情報を精査。
		foreach my $log(@lists){

			if($count >= $start && $count < $end){

				#最後の「CR/LF」を除去
				chomp($log);

				#ログ情報を分割。
				my ($tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time) = split(/\,/,$log);

				#localtime関数でフォーマット変更。（秒、分、時、日、月、年、曜日、1月1日からの経過年数、サマータイム期間中は1）
				my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime($tmp_time);

				#フォーマット変更。（2006/1/1(曜日)）
				my $date1 = sprintf("%04d/%01d/%01d(%s)",$year + 1900,$month + 1,$mday,$youbi[$wday]);

				#フォーマット変更。（12:12:12）
				my $date2 = sprintf("%02d:%02d:%02d",$hour,$min,$sec);

				#各項目が空の場合には「---」を代入する。
				if($date1 eq "")        {$date1         = "---";}
				if($date2 eq "")        {$date2         = "---";}
				if($tmp_page_name eq ""){$tmp_page_name = "---";}

				#背景色初期化。
				my $bgcolor1 = "";
				my $bgcolor2 = "";

				#情報が同じ場合はカウントしない。
				if($tmp_host_name eq $tmp_data){

					#ログ情報精査フラグを立てる。
					$equ = 1;

				}

				if($equ == 0){

					#情報の取得。
					$tmp_data = $tmp_host_name;

					if($tmp_page_name eq "トップページ"){

						#背景色。
						$bgcolor1 = "#999999";
						$bgcolor2 = "#CCCCCC";

					}else{

						#背景色。
						$bgcolor1 = "#5C5C5C";
						$bgcolor2 = "#A5A5A5";

					}

				}else{

					#ログ情報精査フラグを初期化。
					$equ = 0;

					#背景色。
					$bgcolor1 = "#5C5C5C";
					$bgcolor2 = "#A5A5A5";

				}

print<<"EOM";
    <tr bgcolor="$bgcolor1" bordercolor="$bgcolor1">
     <td valign="top"><font color="#FFFFFF">$date1 $date2</font></td>
     <td valign="top"><font color="#FFFFFF">$tmp_page_name</font></td>
    </tr>
EOM

				if($search_engin eq "on"){

					if($tmp_engin eq ""){
						$tmp_engin = "---";
					}

print<<"EOM";
    <tr bgcolor="$bgcolor2" bordercolor="$bgcolor2">
     <td valign="top">[検索サイト]</td>
     <td valign="top">$tmp_engin</td>
    </tr>
EOM

				}

				if($referrer eq "on"){

					if($tmp_referrer_server eq ""){
						$tmp_referrer_server = "---";
					}

print<<"EOM";
    <tr bgcolor="$bgcolor2" bordercolor="$bgcolor2">
     <td valign="top">[リンク元]</td>
     <td valign="top">$tmp_referrer_server</td>
    </tr>
EOM

				}

				if($host_name eq "on"){

					if($tmp_host_name eq ""){
						$tmp_host_name = "---";
					}

print<<"EOM";
    <tr bgcolor="$bgcolor2" bordercolor="$bgcolor2">
     <td valign="top">[ホスト]</td>
     <td valign="top">$tmp_host_name</td>
    </tr>
EOM

				}

				if($search_keyword eq "on"){

					if($tmp_keyword eq ""){
						$tmp_keyword = "---";
					}

print<<"EOM";
    <tr bgcolor="$bgcolor2" bordercolor="$bgcolor2">
     <td valign="top">[検索キーワード]</td>
     <td valign="top">$tmp_keyword</td>
    </tr>
EOM

				}

				if($os eq "on"){

					if($tmp_os eq ""){
						$tmp_os = "---";
					}

print<<"EOM";
    <tr bgcolor="$bgcolor2" bordercolor="$bgcolor2">
     <td valign="top">[OS]</td>
     <td valign="top">$tmp_os</td>
    </tr>
EOM

				}

				if($agent eq "on"){

					if($tmp_agent eq ""){
						$tmp_agent = "---";
					}

print<<"EOM";
    <tr bgcolor="$bgcolor2" bordercolor="$bgcolor2">
     <td valign="top">[ブラウザ]</td>
     <td valign="top">$tmp_agent</td>
    </tr>
EOM

				}
			}

			#カウントアップ。
			$count++;

		}

		#スクリプト終了時間。
		$cpu_end = (times)[0];

		#スクリプト経過時間。
		$analysis_time = sprintf("%.3f 秒",$cpu_end-$cpu_start);

print<<"EOM";
   </table>
EOM

		if($#lists > $pageing){

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
EOM

			my $max_count = int($#lists / $pageing) + 1;

			if($no != 0){

				my $page_count = $no - 1;

print<<"EOM";
      <a href="$script?mode=wait&sunfirst=$sunfirst&select=$select&range=$range&ymd_file=$ymd_file&week_file=$week_file&ym_file=$ym_file&sentence1=$sentence1&cond1=$cond1&sentence2=$sentence2&cond2=$cond2&sentence3=$sentence3&cond3=$cond3&sentence4=$sentence4&cond4=$cond4&sentence5=$sentence5&cond5=$cond5&sentence6=$sentence6&cond6=$cond6&sentence7=$sentence7&cond7=$cond7&page=$page&referrer=$referrer&search_engin=$search_engin&search_keyword=$search_keyword&host_name=$host_name&os=$os&agent=$agent&type=$type&no=$page_count">&lt;&lt;</a>
EOM

			}

			my $count_start = 0;
			my $count_end   = 0;

			if($no <= 10){

				$count_start = 0;

				if($max_count > $no + 10){
					$count_end = $no + 10;
				}else{
					$count_end = $max_count;
				}

			}elsif($no > 10){

				$count_start = $no - 10;

				if($max_count > $no + 10){
					$count_end = $no + 10;
				}else{
					$count_end = $max_count;
				}

			}

			for($i = $count_start ; $i < $count_end ; $i++){

				my $page_count = $i + 1;

				if($no != $i){

print<<"EOM";
      <a href="$script?mode=wait&sunfirst=$sunfirst&select=$select&range=$range&ymd_file=$ymd_file&week_file=$week_file&ym_file=$ym_file&sentence1=$sentence1&cond1=$cond1&sentence2=$sentence2&cond2=$cond2&sentence3=$sentence3&cond3=$cond3&sentence4=$sentence4&cond4=$cond4&sentence5=$sentence5&cond5=$cond5&sentence6=$sentence6&cond6=$cond6&sentence7=$sentence7&cond7=$cond7&page=$page&referrer=$referrer&search_engin=$search_engin&search_keyword=$search_keyword&host_name=$host_name&os=$os&agent=$agent&type=$type&no=$i">$page_count</a>
EOM

				}else{

print<<"EOM";
      <strong>$page_count</strong>
EOM

				}

			}

			if(($no + 1) != $max_count){

				my $page_count = $no + 1;

print<<"EOM";
      <a href="$script?mode=wait&sunfirst=$sunfirst&select=$select&range=$range&ymd_file=$ymd_file&week_file=$week_file&ym_file=$ym_file&sentence1=$sentence1&cond1=$cond1&sentence2=$sentence2&cond2=$cond2&sentence3=$sentence3&cond3=$cond3&sentence4=$sentence4&cond4=$cond4&sentence5=$sentence5&cond5=$cond5&sentence6=$sentence6&cond6=$cond6&sentence7=$sentence7&cond7=$cond7&page=$page&referrer=$referrer&search_engin=$search_engin&search_keyword=$search_keyword&host_name=$host_name&os=$os&agent=$agent&type=$type&no=$page_count">&gt;&gt;</a>
EOM

			}

print<<"EOM";
     </td>
    </tr>
   </table>
EOM

		}

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%" height="30">
    <tr>
     <td align="center">解析時間 $analysis_time</td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}

	#ログ情報を初期化。
	undef(@lists);

	exit;
}
##################################################
# page
# ページ名別表示。
##################################################
sub page{

	#ページカウント。
	my $page_count = keys %pages;

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>■ページ [ページ名を取得することができた有効なログ件数：$pagep件/$pv\PV]</td>
EOM

	if($page_count > $max_view && $max_view != 0){

print<<"EOM";
           <td>
            <form action="$script" method="post" style="margin-bottom:0">
            <input type="hidden" name="mode" value="wait">
            <input type="hidden" name="sunfirst" value="$sunfirst">
            <input type="hidden" name="select" value="$select">
            <input type="hidden" name="range" value="$range">
            <input type="hidden" name="ymd_file" value="$ymd_file">
            <input type="hidden" name="week_file" value="$week_file">
            <input type="hidden" name="ym_file" value="$ym_file">
            <input type="hidden" name="sentence1" value="$sentence1">
            <input type="hidden" name="cond1" value="$cond1">
            <input type="hidden" name="sentence2" value="$sentence2">
            <input type="hidden" name="cond2" value="$cond2">
            <input type="hidden" name="sentence3" value="$sentence3">
            <input type="hidden" name="cond3" value="$cond3">
            <input type="hidden" name="sentence4" value="$sentence4">
            <input type="hidden" name="cond4" value="$cond4">
            <input type="hidden" name="sentence5" value="$sentence5">
            <input type="hidden" name="cond5" value="$cond5">
            <input type="hidden" name="sentence6" value="$sentence6">
            <input type="hidden" name="cond6" value="$cond6">
            <input type="hidden" name="sentence7" value="$sentence7">
            <input type="hidden" name="cond7" value="$cond7">
            <input type="hidden" name="type" value="page">
            <input type="hidden" name="page" value="$page">
            <input type="hidden" name="referrer" value="$referrer">
            <input type="hidden" name="search_engin" value="$search_engin">
            <input type="hidden" name="search_keyword" value="$search_keyword">
            <input type="hidden" name="host_name" value="$host_name">
            <input type="hidden" name="os" value="$os">
            <input type="hidden" name="agent" value="$agent">
            <input type="submit" value="全件表\示">
            </form>
           </td>
EOM

	}

print<<"EOM";
          </tr>
         </table>
EOM

	if($pagep ne ""){

print<<"EOM";
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td bgcolor="#999999"><font color="#FFFFFF">ページ名</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">件数</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">割合</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">グラフ</font></td>
          </tr>
EOM

		#表示件数変数の初期化。
		my $i = 0;

		foreach (sort { $pages{$b} <=> $pages{$a} } keys %pages){

			#ページのアクセス割合を算出。
			my $percent = (int(10000 * ($pages{$_} / $pagep)) / 100);

			#画像幅を算出。
			my $img1_p = int($bar * $percent / 100);

			#画像の幅が1未満の場合は1にする。
			if($img1_p < 1){
				$img1_p = 1;
			}

			#表示を「%」にする。
			$percent = sprintf("%.1f",$percent);

print<<"EOM";
          <tr>
           <td bgcolor="#CCCCCC">$_</td>
           <td bgcolor="#CCCCCC">$pages{$_}</td>
           <td bgcolor="#CCCCCC">$percent\%</td>
           <td bgcolor="#CCCCCC">
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="$img1_p\px" height="10px"></td>
             </tr>
            </table>
           </td>
          </tr>
EOM

			if($max_view != 0){

				$i++;

				#$max_view以上は表示しない。
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		#ページ情報の初期化。
		undef(%pages);

	}else{

print<<"EOM";
           </tr>
           <tr>
            <td>データがありませんでした。</td>
           </tr>
         </table>
EOM

	}
}
##################################################
# referrerServer
# リンク元サーバ別表示。
##################################################
sub referrerServer{

	#リンク元カウント。
	my $referrer_server_count = keys %referrer_servers;

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>■リンク元 [リンク元を取得することができた有効なログ件数：$referrer_serverp件/$pv\PV]</td>
EOM

	if($referrer_server_count > $max_view && $max_view != 0){

print<<"EOM";
           <td>
            <form action="$script" method="post" style="margin-bottom:0">
            <input type="hidden" name="mode" value="wait">
            <input type="hidden" name="sunfirst" value="$sunfirst">
            <input type="hidden" name="select" value="$select">
            <input type="hidden" name="range" value="$range">
            <input type="hidden" name="ymd_file" value="$ymd_file">
            <input type="hidden" name="week_file" value="$week_file">
            <input type="hidden" name="ym_file" value="$ym_file">
            <input type="hidden" name="sentence1" value="$sentence1">
            <input type="hidden" name="cond1" value="$cond1">
            <input type="hidden" name="sentence2" value="$sentence2">
            <input type="hidden" name="cond2" value="$cond2">
            <input type="hidden" name="sentence3" value="$sentence3">
            <input type="hidden" name="cond3" value="$cond3">
            <input type="hidden" name="sentence4" value="$sentence4">
            <input type="hidden" name="cond4" value="$cond4">
            <input type="hidden" name="sentence5" value="$sentence5">
            <input type="hidden" name="cond5" value="$cond5">
            <input type="hidden" name="sentence6" value="$sentence6">
            <input type="hidden" name="cond6" value="$cond6">
            <input type="hidden" name="sentence7" value="$sentence7">
            <input type="hidden" name="cond7" value="$cond7">
            <input type="hidden" name="type" value="referrerServer">
            <input type="hidden" name="page" value="$page">
            <input type="hidden" name="referrer" value="$referrer">
            <input type="hidden" name="search_engin" value="$search_engin">
            <input type="hidden" name="search_keyword" value="$search_keyword">
            <input type="hidden" name="host_name" value="$host_name">
            <input type="hidden" name="os" value="$os">
            <input type="hidden" name="agent" value="$agent">
            <input type="submit" value="全件表\示">
            </form>
           </td>
EOM

	}

print<<"EOM";
          </tr>
         </table>
EOM

	if($referrer_serverp ne ""){

print<<"EOM";
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td bgcolor="#999999"><font color="#FFFFFF">リンク元サーバ</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">件数</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">割合</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">グラフ</font></td>
          </tr>
EOM

		#表示件数変数の初期化。
		my $i = 0;

		foreach (sort { $referrer_servers{$b} <=> $referrer_servers{$a} } keys %referrer_servers){

			#リンク元のアクセス割合を算出。
			my $percent = (int(10000 * ($referrer_servers{$_} / $referrer_serverp)) / 100);

			#画像幅を算出。
			my $img1_rs = int($bar * $percent / 100);

			#画像の幅が1未満の場合は1にする。
			if($img1_rs < 1){
				$img1_rs = 1;
			}

			#表示を「%」にする。
			$percent = sprintf("%.1f",$percent);

			#リンク元を表示する。
			my $sn = $_;

			if($sn =~ /^s?https?:\/\//){
				$sn = "<a href=\"$_\" target=\"_blank\">$sn</a>";
			}

print<<"EOM";
          <tr>
           <td bgcolor="#CCCCCC">$sn</td>
           <td bgcolor="#CCCCCC">$referrer_servers{$_}</td>
           <td bgcolor="#CCCCCC">$percent\%</td>
           <td bgcolor="#CCCCCC">
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="$img1_rs\px" height="10px"></td>
             </tr>
            </table>
           </td>
          </tr>
EOM

			if($max_view != 0){

				$i++;

				#$max_view以上は表示しない。
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		#リンク元情報の初期化。
		undef(%referrer_servers);

	}else{

print<<"EOM";
           </tr>
           <tr>
            <td>データがありませんでした。</td>
           </tr>
         </table>
EOM

	}
}
##################################################
# reportPut
# [検索サイト/os/ブラウザ]別表示。
##################################################
sub reportPut{

	#[検索サイト/os/ブラウザ]カウント。
	my $rtitles_count = keys %rtitles;

	#表示項目変数の初期化。
	my ($rtitle,$rname,$rpoint,$str) = @_;

	#表示タイプの初期化。
	my $rtype = "";

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>■$rname [$rnameを取得することができた有効なログ件数：$rpoint件/$pv\PV]</td>
EOM

	if($rtitles_count > $max_view && $max_view != 0){

		if($rname eq "検索エンジン"){
			$rtype     = "search_engin";
		}elsif($rname eq "OS"){
			$rtype     = "os";
		}elsif($rname eq "ブラウザ"){
			$rtype     = "agent";
		}

print<<"EOM";
           <td>
            <form action="$script" method="post" style="margin-bottom:0">
            <input type="hidden" name="mode" value="wait">
            <input type="hidden" name="sunfirst" value="$sunfirst">
            <input type="hidden" name="select" value="$select">
            <input type="hidden" name="range" value="$range">
            <input type="hidden" name="ymd_file" value="$ymd_file">
            <input type="hidden" name="week_file" value="$week_file">
            <input type="hidden" name="ym_file" value="$ym_file">
            <input type="hidden" name="sentence1" value="$sentence1">
            <input type="hidden" name="cond1" value="$cond1">
            <input type="hidden" name="sentence2" value="$sentence2">
            <input type="hidden" name="cond2" value="$cond2">
            <input type="hidden" name="sentence3" value="$sentence3">
            <input type="hidden" name="cond3" value="$cond3">
            <input type="hidden" name="sentence4" value="$sentence4">
            <input type="hidden" name="cond4" value="$cond4">
            <input type="hidden" name="sentence5" value="$sentence5">
            <input type="hidden" name="cond5" value="$cond5">
            <input type="hidden" name="sentence6" value="$sentence6">
            <input type="hidden" name="cond6" value="$cond6">
            <input type="hidden" name="sentence7" value="$sentence7">
            <input type="hidden" name="cond7" value="$cond7">
            <input type="hidden" name="type" value="$rtype">
            <input type="hidden" name="page" value="$page">
            <input type="hidden" name="referrer" value="$referrer">
            <input type="hidden" name="search_engin" value="$search_engin">
            <input type="hidden" name="search_keyword" value="$search_keyword">
            <input type="hidden" name="host_name" value="$host_name">
            <input type="hidden" name="os" value="$os">
            <input type="hidden" name="agent" value="$agent">
            <input type="submit" value="全件表\示">
            </form>
           </td>
EOM

	}

print<<"EOM";
          </tr>
         </table>
EOM

	if($rpoint ne ""){

print<<"EOM";
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td bgcolor="#999999"><font color="#FFFFFF">$rname</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">件数</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">割合</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">グラフ</font></td>
          </tr>
EOM

		#表示件数変数の初期化。
		my $i = 0;

		foreach (sort { $rtitles{$b} <=> $rtitles{$a} } keys %rtitles){

			#アクセス割合を算出。
			my $percent = (int(10000 * ($rtitles{$_} / $rpoint)) / 100);

			#画像幅を算出。
			my $img1_rp = int($bar * $percent / 100);

			#画像の幅が1未満の場合は1にする。
			if($img1_rp < 1){
				$img1_rp = 1;
			}

			#表示を「%」にする。
			$percent = sprintf("%.1f",$percent);

print<<"EOM";
          <tr>
           <td bgcolor="#CCCCCC">$_</td>
           <td bgcolor="#CCCCCC">$rtitles{$_}</td>
           <td bgcolor="#CCCCCC">$percent\%</td>
           <td bgcolor="#CCCCCC">
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="$img1_rp\px" height="10px"></td>
             </tr>
            </table>
           </td>
          </tr>
EOM

			if($max_view != 0){

				$i++;

				#$max_view以上は表示しない。
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		undef(%rtitles);

	}else{

print<<"EOM";
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>データがありませんでした。</td>
          </tr>
         </table>
EOM

	}
}
##################################################
# searchWord
# 検索キーワード別表示。
##################################################
sub searchWord{

	#検索キーワードカウント。
	my $keywords_count = keys %keywords;

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>■検索キーワード [検索キーワードを取得することができた有効なログ件数：$keywordp件/$pv\PV]</td>
EOM

	if($keywords_count > $max_view && $max_view != 0){

print<<"EOM";
           <td>
            <form action="$script" method="post" style="margin-bottom:0">
            <input type="hidden" name="mode" value="wait">
            <input type="hidden" name="sunfirst" value="$sunfirst">
            <input type="hidden" name="select" value="$select">
            <input type="hidden" name="range" value="$range">
            <input type="hidden" name="ymd_file" value="$ymd_file">
            <input type="hidden" name="week_file" value="$week_file">
            <input type="hidden" name="ym_file" value="$ym_file">
            <input type="hidden" name="sentence1" value="$sentence1">
            <input type="hidden" name="cond1" value="$cond1">
            <input type="hidden" name="sentence2" value="$sentence2">
            <input type="hidden" name="cond2" value="$cond2">
            <input type="hidden" name="sentence3" value="$sentence3">
            <input type="hidden" name="cond3" value="$cond3">
            <input type="hidden" name="sentence4" value="$sentence4">
            <input type="hidden" name="cond4" value="$cond4">
            <input type="hidden" name="sentence5" value="$sentence5">
            <input type="hidden" name="cond5" value="$cond5">
            <input type="hidden" name="sentence6" value="$sentence6">
            <input type="hidden" name="cond6" value="$cond6">
            <input type="hidden" name="sentence7" value="$sentence7">
            <input type="hidden" name="cond7" value="$cond7">
            <input type="hidden" name="type" value="searchWord">
            <input type="hidden" name="page" value="$page">
            <input type="hidden" name="referrer" value="$referrer">
            <input type="hidden" name="search_engin" value="$search_engin">
            <input type="hidden" name="search_keyword" value="$search_keyword">
            <input type="hidden" name="host_name" value="$host_name">
            <input type="hidden" name="os" value="$os">
            <input type="hidden" name="agent" value="$agent">
            <input type="submit" value="全件表\示">
            </form>
           </td>
EOM

	}

print<<"EOM";
          </tr>
         </table>
EOM

	if($keywordp ne ""){

print<<"EOM";
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td bgcolor="#999999"><font color="#FFFFFF">検索キーワード</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">件数</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">割合</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">グラフ</font></td>
          </tr>
EOM

		#表示件数変数の初期化。
		my $i = 0;

		foreach (sort { $keywords{$b} <=> $keywords{$a} } keys %keywords){

			#検索キーワードのアクセス割合を算出。
			my $percent = (int(10000 * ($keywords{$_} / $keywordp)) / 100);

			#画像幅を算出。
			my $img1_sw = int($bar * $percent / 100);

			#画像の幅が1未満の場合は1にする。
			if($img1_sw < 1){
				$img1_sw = 1;
			}

			#表示を「%」にする。
			$percent = sprintf("%.1f",$percent);

print<<"EOM";
          <tr>
           <td bgcolor="#CCCCCC">$_</td>
           <td bgcolor="#CCCCCC">$keywords{$_}</td>
           <td bgcolor="#CCCCCC">$percent\%</td>
           <td bgcolor="#CCCCCC">
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="$img1_sw\px" height="10px"></td>
             </tr>
            </table>
           </td>
          </tr>
EOM

			if($max_view != 0){

				$i++;

				#$max_view以上は表示しない。
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		#検索キーワード情報の初期化。
		undef(%keywords);

	}else{

print<<"EOM";
           </tr>
           <tr>
            <td>データがありませんでした。</td>
           </tr>
         </table>
EOM

	}
}
##################################################
# hostName
# ホスト名別表示。
##################################################
sub hostName{

	#ホスト名カウント。
	my $host_names_count = keys %host_names;

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>■ホスト [ホストを取得することができた有効なログ件数：$host_namep件/$pv\PV]</td>
EOM

	if($host_names_count > $max_view && $max_view != 0){

print<<"EOM";
           <td>
            <form action="$script" method="post" style="margin-bottom:0">
            <input type="hidden" name="mode" value="wait">
            <input type="hidden" name="sunfirst" value="$sunfirst">
            <input type="hidden" name="select" value="$select">
            <input type="hidden" name="range" value="$range">
            <input type="hidden" name="ymd_file" value="$ymd_file">
            <input type="hidden" name="week_file" value="$week_file">
            <input type="hidden" name="ym_file" value="$ym_file">
            <input type="hidden" name="sentence1" value="$sentence1">
            <input type="hidden" name="cond1" value="$cond1">
            <input type="hidden" name="sentence2" value="$sentence2">
            <input type="hidden" name="cond2" value="$cond2">
            <input type="hidden" name="sentence3" value="$sentence3">
            <input type="hidden" name="cond3" value="$cond3">
            <input type="hidden" name="sentence4" value="$sentence4">
            <input type="hidden" name="cond4" value="$cond4">
            <input type="hidden" name="sentence5" value="$sentence5">
            <input type="hidden" name="cond5" value="$cond5">
            <input type="hidden" name="sentence6" value="$sentence6">
            <input type="hidden" name="cond6" value="$cond6">
            <input type="hidden" name="sentence7" value="$sentence7">
            <input type="hidden" name="cond7" value="$cond7">
            <input type="hidden" name="type" value="hostName">
            <input type="hidden" name="page" value="$page">
            <input type="hidden" name="referrer" value="$referrer">
            <input type="hidden" name="search_engin" value="$search_engin">
            <input type="hidden" name="search_keyword" value="$search_keyword">
            <input type="hidden" name="host_name" value="$host_name">
            <input type="hidden" name="os" value="$os">
            <input type="hidden" name="agent" value="$agent">
            <input type="submit" value="全件表\示">
            </form>
           </td>
EOM

	}

print<<"EOM";
          </tr>
         </table>
EOM

	if($host_namep ne ""){

print<<"EOM";
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td bgcolor="#999999"><font color="#FFFFFF">ホスト名</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">件数</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">割合</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">グラフ</font></td>
          </tr>
EOM

		#表示件数変数の初期化。
		my $i = 0;

		foreach (sort { $host_names{$b} <=> $host_names{$a} } keys %host_names){

			#ホスト名のアクセス割合を算出。
			my $percent = (int(10000 * ($host_names{$_} / $host_namep)) / 100);

			#画像幅を算出。
			my $img1_hn = int($bar * $percent / 100);

			#画像の幅が1未満の場合は1にする。
			if($img1_hn < 1){
				$img1_hn = 1;
			}

			#表示を「%」にする。
			$percent = sprintf("%.1f",$percent);

print<<"EOM";
          <tr>
           <td bgcolor="#CCCCCC">$_</td>
           <td bgcolor="#CCCCCC">$host_names{$_}</td>
           <td bgcolor="#CCCCCC">$percent\%</td>
           <td bgcolor="#CCCCCC">
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="$img1_hn\px" height="10px"></td>
             </tr>
            </table>
           </td>
          </tr>
EOM

			if($max_view != 0){

				$i++;

				#$max_view以上は表示しない。
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		#ホスト名情報の初期化。
		undef(%host_names);

	}else{

print<<"EOM";
           </tr>
           <tr>
            <td>データがありませんでした。</td>
           </tr>
         </table>
EOM

	}
}
##################################################
# logView
# 解析モード結果表示。
##################################################
sub logView{

	my ($viewType) = @_;

	#body出力。
	&body;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30">
      <input type="hidden" name="mode" value="wait">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="hidden" name="select" value="$select">
      <input type="hidden" name="range" value="$range">
      <input type="hidden" name="ymd_file" value="$ymd_file">
      <input type="hidden" name="week_file" value="$week_file">
      <input type="hidden" name="ym_file" value="$ym_file">
      <input type="hidden" name="sentence1" value="$sentence1">
      <input type="hidden" name="cond1" value="$cond1">
      <input type="hidden" name="sentence2" value="$sentence2">
      <input type="hidden" name="cond2" value="$cond2">
      <input type="hidden" name="sentence3" value="$sentence3">
      <input type="hidden" name="cond3" value="$cond3">
      <input type="hidden" name="sentence4" value="$sentence4">
      <input type="hidden" name="cond4" value="$cond4">
      <input type="hidden" name="sentence5" value="$sentence5">
      <input type="hidden" name="cond5" value="$cond5">
      <input type="hidden" name="sentence6" value="$sentence6">
      <input type="hidden" name="cond6" value="$cond6">
      <input type="hidden" name="sentence7" value="$sentence7">
      <input type="hidden" name="cond7" value="$cond7">
      <input type="hidden" name="page" value="$page">
      <input type="hidden" name="referrer" value="$referrer">
      <input type="hidden" name="search_engin" value="$search_engin">
      <input type="hidden" name="search_keyword" value="$search_keyword">
      <input type="hidden" name="host_name" value="$host_name">
      <input type="hidden" name="os" value="$os">
      <input type="hidden" name="agent" value="$agent">
      <input type="button" name="submit" value="戻る" onClick="history.go(-2);" style="width:100px">
     </td>
    </tr>
   </table>
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymdのアクセス解析レポート</strong>
     </td>
    </tr>
   </table>
   <table bgcolor="#666666" border="0" cellpadding="3" cellspacing="1" width="90%">
    <tr>
     <td bgcolor="#CCCCCC" align="center" valign="middle" height="30" nowrap>
      <table bgcolor="#FFFFFF" border="0" cellpadding="3" cellspacing="1" width="100%">
       <tr>
        <td>
EOM

	#ログの最大表示数を初期化。
	$max_view = 0;

	#[ページ]の表示。
	if($viewType eq "page"){
		&page;
	}
	#[リンク元]の表示。
	if($viewType eq "referrerServer"){
		&referrerServer;
	}
	#[検索サイト]の表示。
	if($viewType eq "search_engin"){
		%rtitles = %engins;
		&reportPut("engin","検索サイト",$enginp,"");
	}
	#[検索キーワード]の表示。
	if($viewType eq "searchWord"){
		&searchWord;
	}
	#[ホスト名]の表示。
	if($viewType eq "hostName"){
		&hostName;
	}
	#[OS]の表示。
	if($viewType eq "os"){
		%rtitles = %os_names;
		&reportPut("os_name","OS",$os_namep,"");
	}
	#[ブラウザ]の表示。
	if($viewType eq "agent"){
		%rtitles = %agent_names;
		&reportPut("agent","ブラウザ",$agent_namep,"");
	}

	#スクリプト終了時間。
	$cpu_end = (times)[0];

	#スクリプト経過時間。
	$analysis_time = sprintf("%.3f 秒",$cpu_end-$cpu_start);

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="2" align="center">
          <tr>
           <td>解析時間 $analysis_time</td>
          </tr>
         </table>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30">
      <input type="hidden" name="mode" value="wait">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="hidden" name="select" value="$select">
      <input type="hidden" name="range" value="$range">
      <input type="hidden" name="ymd_file" value="$ymd_file">
      <input type="hidden" name="week_file" value="$week_file">
      <input type="hidden" name="ym_file" value="$ym_file">
      <input type="hidden" name="sentence1" value="$sentence1">
      <input type="hidden" name="cond1" value="$cond1">
      <input type="hidden" name="sentence2" value="$sentence2">
      <input type="hidden" name="cond2" value="$cond2">
      <input type="hidden" name="sentence3" value="$sentence3">
      <input type="hidden" name="cond3" value="$cond3">
      <input type="hidden" name="sentence4" value="$sentence4">
      <input type="hidden" name="cond4" value="$cond4">
      <input type="hidden" name="sentence5" value="$sentence5">
      <input type="hidden" name="cond5" value="$cond5">
      <input type="hidden" name="sentence6" value="$sentence6">
      <input type="hidden" name="cond6" value="$cond6">
      <input type="hidden" name="sentence7" value="$sentence7">
      <input type="hidden" name="cond7" value="$cond7">
      <input type="hidden" name="page" value="$page">
      <input type="hidden" name="referrer" value="$referrer">
      <input type="hidden" name="search_engin" value="$search_engin">
      <input type="hidden" name="search_keyword" value="$search_keyword">
      <input type="hidden" name="host_name" value="$host_name">
      <input type="hidden" name="os" value="$os">
      <input type="hidden" name="agent" value="$agent">
      <input type="button" name="submit" value="戻る" onClick="history.go(-2);" style="width:100px">
     </td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

}
##################################################
# modeSelect
# 解析モード画面表示。
##################################################
sub modeSelect{

	#各設定項目のデフォルト設定。
	if($select eq "")          {$select1         = " selected";}
	if($select eq "graph")     {$select1         = " selected";}
	if($select eq "log")       {$select2         = " selected";}
	if($range eq "")           {$range1          = " checked";}
	if($range eq "day")        {$range1          = " checked";}
	if($range eq "week")       {$range2          = " checked";}
	if($range eq "month")      {$range3          = " checked";}
	if($week_file eq "")       {$week_file1      = " selected";}
	if($week_file eq "0")      {$week_file1      = " selected";}
	if($week_file eq "7")      {$week_file2      = " selected";}
	if($week_file eq "14")     {$week_file3      = " selected";}
	if($week_file eq "21")     {$week_file4      = " selected";}
	if($page eq "on")          {$page1           = " checked";}
	if($referrer eq "on")      {$referrer1       = " checked";}
	if($search_engin eq "on")  {$search_engin1   = " checked";}
	if($search_keyword eq "on"){$search_keyword1 = " checked";}
	if($host_name eq "on")     {$host_name1      = " checked";}
	if($os eq "on")            {$os1             = " checked";}
	if($agent eq "on")         {$agent1          = " checked";}
	if($cond1 eq "")           {$cond11          = " selected";}
	if($cond1 eq "and")        {$cond11          = " selected";}
	if($cond1 eq "or")         {$cond12          = " selected";}
	if($cond2 eq "")           {$cond21          = " selected";}
	if($cond2 eq "and")        {$cond21          = " selected";}
	if($cond2 eq "or")         {$cond22          = " selected";}
	if($cond3 eq "")           {$cond31          = " selected";}
	if($cond3 eq "and")        {$cond31          = " selected";}
	if($cond3 eq "or")         {$cond32          = " selected";}
	if($cond4 eq "")           {$cond41          = " selected";}
	if($cond4 eq "and")        {$cond41          = " selected";}
	if($cond4 eq "or")         {$cond42          = " selected";}
	if($cond5 eq "")           {$cond51          = " selected";}
	if($cond5 eq "and")        {$cond51          = " selected";}
	if($cond5 eq "or")         {$cond52          = " selected";}
	if($cond6 eq "")           {$cond61          = " selected";}
	if($cond6 eq "and")        {$cond61          = " selected";}
	if($cond6 eq "or")         {$cond62          = " selected";}
	if($cond7 eq "")           {$cond71          = " selected";}
	if($cond7 eq "and")        {$cond71          = " selected";}
	if($cond7 eq "or")         {$cond72          = " selected";}

print<<"EOM";
   <form action="$script" method="post" style="margin-bottom:0">
   <input type="hidden" name="mode" value="wait">
   <input type="hidden" name="sunfirst" value="$sunfirst">
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" nowrap>
      <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="600">
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">1.表\示選択</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <select name="select">
         <option value="graph"$select1>アクセス履歴の集計表\示</option>
         <option value="log"$select2>アクセス履歴の一覧表\示</option>
         </select>
        </td>
       </tr>
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">2.期間選択</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <input type="radio" name="range" value="day"$range1>
         日付
         <select name="ymd_file">
EOM

	#ログファイル名をセレクト項目に設定。
	foreach (reverse(sort @ymd_files)){
		if($_ eq $ymd_file){
			print"         <option value=\"$_\" selected>$_</option>\n";
		}else{
			print"         <option value=\"$_\">$_</option>\n";
		}
	}

print<<"EOM";
         </select>
         <input type="radio" name="range" value="week"$range2>
         週間
         <select name="week_file">
         <option value="0"$week_file1>～1週間前</option>
         <option value="7"$week_file2>1週間前～2週間前</option>
         <option value="14"$week_file3>2週間前～3週間前</option>
         <option value="21"$week_file4>3週間前～4週間前</option>
         </select>
         <input type="radio" name="range" value="month"$range3>
         月間
         <select name="ym_file">
EOM

	#年月をセレクト項目に設定。
	foreach (reverse(sort @ym_files)){
		if($_ eq $ym_file){
			print"         <option value=\"$_\" selected>$_</option>\n";
		}else{
			print"         <option value=\"$_\">$_</option>\n";
		}
	}

print<<"EOM";
         </select>
        </td>
       </tr>
EOM

	#アクセス履歴の一覧表示。

	if($select eq ""){

print<<"EOM";
      </table>
     </td>
    </tr>
   </table>
   <input type="hidden" name="page" value="on">
   <input type="hidden" name="referrer" value="on">
   <input type="hidden" name="search_engin" value="on">
   <input type="hidden" name="search_keyword" value="on">
   <input type="hidden" name="host_name" value="on">
   <input type="hidden" name="os" value="on">
   <input type="hidden" name="agent" value="on">
EOM
	}

	if($select eq "log"){

print<<"EOM";
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">3.項目選択</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <input type="checkbox" name="search_engin" value="on"$search_engin1>検索サイト
         <input type="checkbox" name="referrer" value="on"$referrer1>リンク元
         <input type="checkbox" name="host_name" value="on"$host_name1>ホスト
         <input type="checkbox" name="search_keyword" value="on"$search_keyword1>検索キーワード
         <input type="checkbox" name="os" value="on"$os1>OS
         <input type="checkbox" name="agent" value="on"$agent1>ブラウザ
        </td>
       </tr>
EOM

		if($debug_flg eq "on"){

print<<"EOM";
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">4.キーワード</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <table border="0">
          <tr>
           <td>ページ名で絞込み</td>
           <td>
           <input type="text" name="sentence1" value="$sentence1" size="50" maxlength="200">
           <select name="cond1">
           <option value="and"$cond11>AND</option>
           <option value="or"$cond12>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>リンク元で絞込み</td>
           <td>
           <input type="text" name="sentence2" value="$sentence2" size="50" maxlength="200">
           <select name="cond2">
           <option value="and"$cond21>AND</option>
           <option value="or"$cond22>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>検索サイト名で絞込み</td>
           <td>
           <input type="text" name="sentence3" value="$sentence3" size="50" maxlength="200">
           <select name="cond3">
           <option value="and"$cond31>AND</option>
           <option value="or"$cond32>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>検索キーワードで絞込み</td>
           <td>
           <input type="text" name="sentence4" value="$sentence4" size="50" maxlength="200">
           <select name="cond4">
           <option value="and"$cond41>AND</option>
           <option value="or"$cond42>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>ホスト名で絞込み</td>
           <td>
           <input type="text" name="sentence5" value="$sentence5" size="50" maxlength="200">
           <select name="cond5">
           <option value="and"$cond51>AND</option>
           <option value="or"$cond52>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>OSで絞込み</td>
           <td>
           <input type="text" name="sentence6" value="$sentence6" size="50" maxlength="200">
           <select name="cond6">
           <option value="and"$cond61>AND</option>
           <option value="or"$cond62>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>ブラウザで絞込み</td>
           <td>
           <input type="text" name="sentence7" value="$sentence7" size="50" maxlength="200">
           <select name="cond7">
           <option value="and"$cond71>AND</option>
           <option value="or"$cond72>OR</option>
           </select>
           </td>
          </tr>
         </table>
        </td>
       </tr>
EOM

		}

print<<"EOM";
      </table>
     </td>
    </tr>
   </table>
   <input type="hidden" name="page" value="on">
EOM

	}

	#アクセス履歴の集計表示。
	if($select eq "graph"){

print<<"EOM";
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">3.項目選択</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <input type="checkbox" name="page" value="on"$page1>ページ
         <input type="checkbox" name="referrer" value="on"$referrer1>リンク元
         <input type="checkbox" name="search_engin" value="on"$search_engin1>検索サイト
         <input type="checkbox" name="search_keyword" value="on"$search_keyword1>検索キーワード
         <input type="checkbox" name="host_name" value="on"$host_name1>ホスト
         <input type="checkbox" name="os" value="on"$os1>OS
         <input type="checkbox" name="agent" value="on"$agent1>ブラウザ
        </td>
       </tr>
EOM

	if($debug_flg eq "on"){

print<<"EOM";
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">4.キーワード</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <table border="0">
          <tr>
           <td>ページ名で絞込み</td>
           <td>
           <input type="text" name="sentence1" value="$sentence1" size="50" maxlength="200">
           <select name="cond1">
           <option value="and"$cond11>AND</option>
           <option value="or"$cond12>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>リンク元で絞込み</td>
           <td>
           <input type="text" name="sentence2" value="$sentence2" size="50" maxlength="200">
           <select name="cond2">
           <option value="and"$cond21>AND</option>
           <option value="or"$cond22>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>検索サイト名で絞込み</td>
           <td>
           <input type="text" name="sentence3" value="$sentence3" size="50" maxlength="200">
           <select name="cond3">
           <option value="and"$cond31>AND</option>
           <option value="or"$cond32>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>検索キーワードで絞込み</td>
           <td>
           <input type="text" name="sentence4" value="$sentence4" size="50" maxlength="200">
           <select name="cond4">
           <option value="and"$cond41>AND</option>
           <option value="or"$cond42>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>ホスト名で絞込み</td>
           <td>
           <input type="text" name="sentence5" value="$sentence5" size="50" maxlength="200">
           <select name="cond5">
           <option value="and"$cond51>AND</option>
           <option value="or"$cond52>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>OSで絞込み</td>
           <td>
           <input type="text" name="sentence6" value="$sentence6" size="50" maxlength="200">
           <select name="cond6">
           <option value="and"$cond61>AND</option>
           <option value="or"$cond62>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>ブラウザで絞込み</td>
           <td>
           <input type="text" name="sentence7" value="$sentence7" size="50" maxlength="200">
           <select name="cond7">
           <option value="and"$cond71>AND</option>
           <option value="or"$cond72>OR</option>
           </select>
           </td>
          </tr>
         </table>
        </td>
       </tr>
EOM

	}

print<<"EOM";
      </table>
     </td>
    </tr>
   </table>
EOM

	}

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="right" valign="middle" height="30"><input type="submit" name="submit" value="解析スタート"></td>
     <td align="left" valign="middle" height="30"><input type="submit" name="submit" value="管理画面へ"></td>
    </tr>
   </table>
   </form>
EOM

}
##################################################
# admin
# 管理モード画面表示。
##################################################
sub admin{

	#body出力。
	&body;

print<<"EOM";
   <br>
   <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
    <tr>
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>■管理者パスワードの変更</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        アクセス解析ページ（このページ）を表\示する際のパスワードを変更します。<br>
        新しいパスワードを入力して、「変更」ボタンをクリックしてください。
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="mode" value="set_pswd">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">新パスワード</td>
           <td bgcolor="#FFFFFF" nowrap><input type="password" name="new_pswd" size="10">（6文字以上の半角英数）</td>
          </tr>
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">確認入力</td>
           <td bgcolor="#FFFFFF" nowrap><input type="password" name="retype_pswd" size="10">（確認のため再入力）<input type="submit" value="変更"></td>
          </tr>
         </table>
         </form>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
   <br>
   <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
    <tr>
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>■解析ログ収集対象外ホストの設定</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        特定のホストからのアクセスはカウントしないように設定します。<br>
        ホスト名を入力し、「登録」ボタンをクリックしてください。
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="mode" value="set_reject">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">ホスト名</td>
           <td bgcolor="#FFFFFF" nowrap><input type="text" name="reject_host" size="50"><input type="submit" value="登録"></td>
          </tr>
         </table>
         </form>
        </td>
       </tr>
       <tr>
        <td>
         解析対象外に登録されているホスト名（削除したい場合は「削除」をクリックしてください）
         <table border="0" cellpadding="1" cellspacing="1">
EOM

	#ホスト名情報読み込み。
	open(IN,$reject_file);
	flock(IN,1);		#ファイルを読み出しロック。
	my @reject = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);

	#ホスト名情報ファイルが存在し、かつホスト名情報が存在している場合。
	if(-e $reject_file && $reject[0] ne ""){

		#連番情報を初期化。
		my $i = 1;

		#ホスト名情報を精査。
		foreach my $x(@reject){

			#ホスト名情報を分割。
			my ($no,$reject_host) = split(/,/,$x);

			#改行を削除。
			$reject_host =~ s/\n//g;

print<<"EOM";
          <tr>
           <td valign="top">$i.$reject_host</td>
           <td>
           <form action="$script" method="post" style="margin-bottom:0">
           <input type="hidden" name="mode" value="set_reject">
           <input type="hidden" name="sunfirst" value="$sunfirst">
           <input type="hidden" name="delete" value="$no">
           <input type="hidden" name="reject_host" value="$reject_host">
           <input type="submit" value="削除">
           </form>
           </td>
          </tr>
EOM

			$i++;

		}

	}else{

print<<"EOM";
          <tr>
           <td><font color="#000066">※登録されているホスト名はありません</font></td>
          </tr>
EOM

	}

print<<"EOM";
         </table>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
   <br>
   <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
    <tr>
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>■ログファイルの削除</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        保存されているログファイルを削除します。<br>
        削除する月を選択して、「削除」ボタンをクリックしてください。
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="mode" value="delete_file">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">月選択</td>
           <td bgcolor="#FFFFFF" nowrap>
           <select name="ym_file">
EOM

	#年月をセレクト項目に設定。
	foreach (reverse(sort @ym_files)){

		if($_ eq $ym_file){
			print"           <option value=\"$_\" selected>$_</option>\n";
		}else{
			print"           <option value=\"$_\">$_</option>\n";
		}
	}

print<<"EOM";
           </select>
           <input type="submit" value="削除">
           </td>
          </tr>
         </table>
         </form>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
   <br>
EOM

	if($debug_flg eq "on"){

print<<"EOM";
   <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
    <tr>
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>■ログファイルのバックアップ</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        保存されているログファイルをバックアップします。<br>
        バックアップする月を選択して、「バックアップ画面へ」ボタンをクリックしてください。
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="mode" value="download_file">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">月選択</td>
           <td bgcolor="#FFFFFF" nowrap>
           <select name="ym_file">
EOM

	#年月をセレクト項目に設定。
	foreach (reverse(sort @ym_files)){

		if($_ eq $ym_file){
			print"           <option value=\"$_\" selected>$_</option>\n";
		}else{
			print"           <option value=\"$_\">$_</option>\n";
		}
	}

print<<"EOM";
           </select>
           <input type="submit" value="バックアップ画面へ">
           </td>
          </tr>
         </table>
         </form>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
   <br>
   <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
    <tr>
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>■ログファイルのアップロード</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        バックアップしたログファイルをアップロードします。<br>
        「参照」ボタンでログファイルを選択して、「アップロード」ボタンをクリックしてください。
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0" ENCTYPE="multipart/form-data">
         <input type="hidden" name="mode" value="upload_file">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">ログファイル</td>
           <td bgcolor="#FFFFFF" nowrap>
           <input type="file" name="upFile">
           <input type="submit" value="アップロード">
           </td>
          </tr>
         </table>
         </form>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
   <br>
EOM

	}

print<<"EOM";
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td>
     <form action="$script" method="post" style="margin-bottom:0">
     <input type="hidden" name="mode" value="index">
     <input type="hidden" name="sunfirst" value="$sunfirst">
     <input type="submit" value="解析画面へ">
     </form>
     </td>
    </tr>
   </table>
   <br>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	exit;
}
##################################################
# setPswd
# パスワード設定画面。
##################################################
sub setPswd{

	#パスワード情報の読み込み。
	open(IN,$pswd_file);
	flock(IN,1);		#ファイルを読み出しロック。
	my @pass = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);

	#改行を削除。
	$pass[0] =~ s/\n//g;

	#パスワードのタイプを初期化。
	my $salt = 0;

	#パスワードのタイプを判別。
	if($pass[0] =~ /^\$1\$/){$salt = 3;}

	#入力パスワードの文字数チェック。
	if(length($in{'new_pswd'}) < 6 || $in{'new_pswd'} eq ""){
		&error("6文字以上のパスワードを指定してください.");
	}

	#入力パスワードの比較チェック。
	if($in{'new_pswd'} ne $in{'retype_pswd'}){
		&error("確認のため入力したパスワードが一致しません。パスワードを再入力してください。");
	}

	#パスワードの暗号化。
	my ($pwd) = &makePswd($in{'new_pswd'});

	#パスワード情報の保存。
	open(OUT, "> $pswd_file");		# 読み書きモードで開く
	flock(OUT, 2);				# ロック確認。ロック
	seek(OUT, 0, 0);			# ファイルポインタを先頭にセット
	print OUT $pwd;				# 書き込む
	truncate(OUT, tell(OUT));		# ファイルサイズを書き込んだサイズにする
	close(OUT);				# closeすれば自動でロック解除

	#ファイルパーミッション設定。
	my $file_permission = sprintf("%04d",oct($dat_file_auth));

	#パーミッション設定。
	if($dat_file_auth eq ""){
		chmod(0755,$pswd_file);
	}else{
		chmod($file_permission,$pswd_file);
	}

	#body出力。
	&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>■管理者パスワードは以下のパスワードで設定されました。必ずメモなどに控えてください。</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      ※設定されたパスワードは<strong>「$in{'new_pswd'}」</strong>です。<br>
      ※パスワードを忘れるとセキュリティのため、二度とログインできなくなりますのでご注意ください。 
     </td>
    </tr>
   </table>
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td align="right">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="mode" value="index">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="解析画面へ">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="管理画面へ">
      </form>
     </td>
    </tr>
   </table>
   <br>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	exit;
}
##################################################
# setReject
# ログ取得拒否。
##################################################
sub setReject{

	#カウントしないホスト名登録。
	if($in{'delete'} eq ""){

		if($in{'reject_host'} eq ""){
			&error("ホスト名が入力されていません。");
		}

		#ホスト名情報読み込み。
		open(IN,$reject_file);
		flock(IN,1);		#ファイルを読み出しロック。
		my @reject = <IN>;
		flock(IN,8);		# ロック解除。
		close(IN);

		#検索フラグ初期化。
		my $match = 0;

		#ホスト名情報精査。
		foreach my $x(@reject){

			#ホスト名情報分割。
			local($no,$reject_host) = split(/,/,$x);

			#改行を削除。
			$reject_host =~ s/\n//g;

			#同じホスト名が登録されていた場合は、フラグを「1」にしてループを抜ける。
			if($in{'reject_host'} eq "$reject_host"){
				$match = 1;
				last;
			}
		}

		#同じホスト名が登録されていた場合はエラー。
		if($match == 1){
			&error("指定されたホスト名は既に登録されています。");
		}

		#ホスト名情報の最新を分割。
		my ($no,$reject_host) = split(/,/,$reject[0]);

		#ホスト名番号を新規作成。
		$no++;

		#ホスト名情報を新規作成。
		my $new = "$no,$in{'reject_host'}\n";

		#ホスト名情報を既存の情報の先頭に追加。
		unshift(@reject,$new);

		#ホスト名情報を保存。
		open(OUT,"> $reject_file");		# 読み書きモードで開く
		flock(OUT,2);				# ロック確認。ロック
		seek(OUT,0,0);				# ファイルポインタを先頭にセット
		print OUT @reject;			# 書き込む
		truncate(OUT,tell(OUT));		# ファイルサイズを書き込んだサイズにする
		close(OUT);				# closeすれば自動でロック解除

		#ファイルパーミッション設定。
		my $file_permission = sprintf("%04d",oct($dat_file_auth));

		#パーミッション設定。
		if($dat_file_auth eq ""){
			chmod(0755,$reject_file);
		}else{
			chmod($file_permission,$reject_file);
		}

		#body出力。
		&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>■以下のホスト名のアクセス履歴を保存しないように設定しました。</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      ※設定されたホスト名は<strong>「$in{'reject_host'}」</strong>です。
     </td>
    </tr>
   </table>
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td align="right">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="mode" value="index">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="解析画面へ">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="管理画面へ">
      </form>
     </td>
    </tr>
   </table>
   <br>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	#カウントしないホスト名削除。
	}elsif($in{'delete'} ne ""){

		#ホスト名情報読み込み。
		open(IN,$reject_file);
		flock(IN,1);		#ファイルを読み出しロック。
		my @reject = <IN>;
		flock(IN,8);		# ロック解除。
		close(IN);

		#削除するホスト名変数の初期化。
		my @delete = ();

		#ホスト名情報の精査。
		foreach my $x(@reject){

			#ホスト名情報の分割。
			my ($no,$reject_host) = split(/,/,$x);

			#削除するホスト名は空にする。
			if($in{'delete'} eq "$no"){
				$x = "";
			}

			push(@delete,$x);

		}

		#削除ずみ情報を保存。
		open(OUT, "> $reject_file");		# 読み書きモードで開く
		flock(OUT,2);				# ロック確認。ロック
		seek(OUT,0,0);				# ファイルポインタを先頭にセット
		print OUT @delete;			# 書き込む
		truncate(OUT,tell(OUT));		# ファイルサイズを書き込んだサイズにする
		close(OUT);				# closeすれば自動でロック解除

		#ファイルパーミッション設定。
		my $file_permission = sprintf("%04d",oct($dat_file_auth));

		#パーミッション設定。
		if($dat_file_auth eq ""){
			chmod(0755,$reject_file);
		}else{
			chmod($file_permission,$reject_file);
		}

		#body出力。
		&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>■以下のホスト名の登録を解除しました。</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      ※解除されたホスト名は<strong>「$in{'reject_host'}」</strong>です。
     </td>
    </tr>
   </table>
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td align="right">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="mode" value="index">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="解析画面へ">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="管理画面へ">
      </form>
     </td>
    </tr>
   </table>
   <br>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}

	exit;
}
##################################################
# deleteFile
# ログファイル削除。
##################################################
sub deleteFile{

	if($ym_file eq ""){

		&error("月が選択されていません。");

	}elsif($ym_file ne ""){

		#入力された年月を分割。
		my ($year,$month) = split(/\//,$ym_file);

		#削除するファイル名変数の初期化。
		my @delete = ();

		#ログファイル名の精査。
		foreach my $x(@log_files){

			#該当するファイルが存在した場合。
			if($x =~ /^$year$month(\d\d).cgi/){

				$list = "$logdir$x";
				push(@delete,"$list")

			}
		}

		#ファイルを削除する。
		unlink @delete;

		#body出力。
		&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>■以下のログファイルを削除しました。</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      ※削除されたログファイルは<strong>「$year年$month月」</strong>です
     </td>
    </tr>
   </table>
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td align="right">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="mode" value="index">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="解析画面へ">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="管理画面へ">
      </form>
     </td>
    </tr>
   </table>
   <br>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}

	exit;
}
##################################################
# downloadFile
# ログファイルバックアップ。
##################################################
sub downloadFile{

	if($ym_file eq ""){

		&error("月が選択されていません。 ");

	}elsif($ym_file ne ""){

		#入力された年月を分割。
		local($year,$month) = split(/\//,$ym_file);

		#body出力。
		&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>■$year年$month月のログファイルをバックアップします。</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      <form action="$script" method="post" style="margin-bottom:0" name="download">
      <input type="hidden" name="mode" value="download">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="hidden" name="ym_file" value="$ym_file">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <input type="submit" name="execution" value="ダウンロード">
        <input type="submit" name="execution" value="削除">
        </td>
        <td>
        <div id="button1"><input type="button" value="すべて選択" onclick="boxChecked(true)"></div>
        <div id="button2"><input type="button" value="選択を解除" onclick="boxChecked(false)"></div>
        </td>
       </tr>
EOM

		#ログファイル名の精査。
		foreach (@log_files){

			#該当するファイルが存在した場合。
			if($_ =~ /^$year$month(\d\d)/){

				$t_year  = substr($_,0,4);
				$t_month = substr($_,4,2);
				$t_day   = substr($_,6,2);
				print"       <tr>\n";
				print"        <td>\n";
				print"        <input type=\"checkbox\" name=\"file\" value=\"$_\">\n";
				print"        <a href=\"$script?mode=download&sunfirst=$sunfirst&file=$_\"><strong>「$t_year年$t_month月$t_day日」<\/b></a>\n";
				print"        </td>\n";
				print"       </tr>\n";

			}
		}

print<<"EOM";
      </table>
      </form>
     </td>
    </tr>
   </table>
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td align="right">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="mode" value="index">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="解析画面へ">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="管理画面へ">
      </form>
     </td>
    </tr>
   </table>
   <br>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}

	exit;
}
##################################################
# error
# エラー画面表示。
##################################################
sub error{

	#body出力。
	&body;

print<<"EOM";
   <div align="center">
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td height="30" align="center">-----------------<strong>エラーメッセージ</strong>-----------------</td>
    </tr>
    <tr>
     <td height="30" align="center"><font color="#FF0000" size="-1"><strong>$_[0]</strong></font></td>
    </tr>
    <tr>
     <td height="30" align="center"><input type="button" value="入力画面に戻る" onClick="history.back();"></td>
    </tr>
   </table>
   </div>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	exit;
}

1;
