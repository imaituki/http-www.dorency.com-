##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2009 SUNFIRST.INC ALL RIGHTS RESERVED.
#
# �\�t�g�E�F�A�g�p�����_��
#
# [SITEUP-SYSTEM](�ȉ�[�{�\�t�g�E�F�A]�ƋL��)�Ɋւ��钘�쌠���̒m�I���Y���́A
# �T���t�@�[�X�g�������(�ȉ�[����]�ƋL��)�ɋA�����A
# ���{�̒��쌠�@���̑��֘A���ēK�p�����@�����ɂ���ĕی삳��Ă��܂��B
#
# [�{�\�t�g�E�F�A]�͎��s�t�@�C�������łȂ��A
# ���[�U�f�[�^��w���v���܂ޑS�Ă̍\���t�@�C����\���܂��B
#
# ���q�l�́A�\�t�g�E�F�A�g�p�����_��(�ȉ�[�_��]�ƋL��)�̏����ɏ]���āA
# [�{�\�t�g�E�F�A]����{�����Ŏg�p����A��Ɛ�I�Ȍ�����[�_��]�Ɋ�Â��擾���܂��B
#
# [�_��]�ɖ����I�ɋ�������Ă���ꍇ�������āA
# [�{�\�t�g�E�F�A]�̎g�p�A�S�����͈ꕔ�𕡐��A���ϓ��͏o���܂���B
# [�_��]�ɖ����I�ɋ�������Ă���A[�{�\�t�g�E�F�A]�𕡐�����ꍇ�ɂ́A
# [�{�\�t�g�E�F�A]�ɕt����Ă��钘�쌠�\���y�сA���̑��̌����\���������ɕ���������̂Ƃ��܂��B
#
# [�{�\�t�g�E�F�A]�y�ъ֘A�����ɕt����Ă���A
# ���쌠�\���y�т��̑��̌����\�����������邱�Ƃ͏o���܂���B
#
# [�_��]���I�������Ƃ��́A������[�{�\�t�g�E�F�A]�y�т��̑S�Ă̕��������тɊ֘A������
# �j��������̂Ƃ��܂��B
#
# [����]�y�сA[�{�\�t�g�E�F�A]��z�z����S�Ă̎҂́A[�_��]�ɓ��ӂ����Ă����ꍇ�ł��A
# [�{�\�t�g�E�F�A]���l���p�E�Г����p�E�c���ړI�E��c���ړI���킸�A
# �S�����͈ꕔ�𕡐��A���ϓ����s�����ꍇ�̎g�p�ɂ���Đ����������鑹�Q�ɂ��āA
# �@���Ȃ�ӔC�������܂���B
# [����]�y�сA[�{�\�t�g�E�F�A]��z�z����S�Ă̎҂́A
# ���̂悤�ȑ��Q����������\���ɂ��āA���O�ɒm�炳��Ă����ꍇ�ł����l�ł��B
#
# ���ȏ�̓C���X�g�[�������ۂɕ\�������u�\�t�g�E�F�A�g�p�����_�񏑁v�𔲐��A�ǋL�������̂ł��B
#
##################################################
##################################################
# header
# �w�b�_�[�o�́B
##################################################
sub header{

print"Content-type: text/html\n\n";
print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<meta name="generator" content="SITEUP SYSTEM ver1.80.00">
<head>
EOM

	if($mode eq "wait" && $submit ne "�Ǘ���ʂ�"){

print<<"EOM";
<meta http-equiv="refresh" content="1;url=$script?mode=index&sunfirst=$sunfirst&select=$select&range=$range&ymd_file=$ymd_file&week_file=$week_file&ym_file=$ym_file&sentence1=$sentence1&cond1=$cond1&sentence2=$sentence2&cond2=$cond2&sentence3=$sentence3&cond3=$cond3&sentence4=$sentence4&cond4=$cond4&sentence5=$sentence5&cond5=$cond5&sentence6=$sentence6&cond6=$cond6&sentence7=$sentence7&cond7=$cond7&page=$page&referrer=$referrer&search_engin=$search_engin&search_keyword=$search_keyword&host_name=$host_name&os=$os&agent=$agent&type=$type&no=$no">
EOM

	}

print<<"EOM";
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>�A�N�Z�X���</title>
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

	if($mode eq "wait" && $submit ne "�Ǘ���ʂ�"){

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
<noscript>JavaScript�͎g���Ȃ���Ԃł��E�E�E</noscript>
EOM

}
##################################################
# body
# body�o�́B
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
      <font color="#FFFFFF"><strong>SITEUP SYSTEM �A�N�Z�X��̓��|�[�g</strong></font>
     </td>
    </tr>
   </table>
EOM

}
##################################################
# bodyAnalysis
# body�o�́B(��̓��[�h)
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
      <font color="#FFFFFF"><strong>SITEUP SYSTEM �A�N�Z�X��̓��|�[�g</strong></font>
     </td>
    </tr>
   </table>
EOM

}
##################################################
# login
# ���O�C����ʕ\���B
##################################################
sub login{

	#���O�C�������擾�B
	my $newlogin = time;

	#body�o�́B
	&body;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="50" nowrap>
      <strong>���Ǘ��҃p�X���[�h����͂��āu���O�C���v�{�^�����N���b�N���Ă��������B</strong>
     </td>
    </tr>
    <tr>
     <td align="center" valign="middle" height="50" nowrap>
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="login">
      <input type="hidden" name="sunfirst" value="$newlogin">
      �Ǘ��҃p�X���[�h
      <input type="password" name="pswd" size="10" value="$pswd">
      <input type="submit" value="���O�C��">
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
# ��̓��[�h��ʕ\���B
##################################################
sub index{

	#body�o�́B
	&body;

	#��̓��[�h��ʕ\���B
	&modeSelect;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="left" valign="middle" height="50" nowrap>
      <strong>���������</strong><br>
      1.��͂��������Ԃɉ����āA���O�t�@�C����I�����܂��B<br>
      2.��̓X�^�[�g�{�^�����N���b�N���܂��B
     </td>
    </tr>
    <tr>
     <td align="left" valign="middle" height="50" nowrap>
      <strong>�����ӎ���</strong><br>
      1.�Ǘ��҃p�X���[�h�́A�K���ύX���s���Ă��������B<br>
      2.�Ǘ��҃p�X���[�h�́A�Ǘ���ʂ���ύX���ł��܂��B<br>
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
# ��̓��[�h���ʑ҂��\���B
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
      <font color="#FFFFFF"><strong>SITEUP SYSTEM �A�N�Z�X��̓��|�[�g</strong></font>
     </td>
    </tr>
   </table>
   <div align="center">
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td height="300" align="center"><strong>�������܃f�[�^��ǂݍ��ݒ��ł��B<br>���΂炭���҂��������B</strong></td>
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
# ��̓��[�h���ʕ\���B
##################################################
sub putAnalysis{

	if($pv == 0){

		#body�o�́B
		&body;

		#��̓��[�h��ʕ\���B
		&modeSelect;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymd�̃A�N�Z�X��̓��|�[�g</strong>
      <hr size="1">
      <strong><font color="#990000">�L���ȃA�N�Z�X���ʂ͂���܂���ł����B</font></strong>
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

		#body�o�́B
		&bodyAnalysis;

		#��̓��[�h��ʕ\���B
		&modeSelect;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymd�̃A�N�Z�X��̓��|�[�g</strong>
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
           <td>��1���P�ʂɂ�铝�v</td>
EOM

		if($range ne "day"){

print<<"EOM";
           <td>
            <div id="day1" style="display:none"><input type="button" name="day" value="�\\���ؑ�" onclick="displayOfAllDay()"></div>
            <div id="day2" style="display:none"><input type="button" name="day" value="�\\���ؑ�" onclick="displayOfPartDay()"></div>
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

		#�O���t�\���p�f�[�^�������B
		my $graph_data_d = "";
		my $graph_data_u = "";

		#�\���J�E���g�ϐ��������B
		my $i = 0;

		#���ϒl�E���g�ϐ��������B
		my $dd = 0;

		#�g�[�^���y�[�Wpv�������B
		my $sum = 0;

		#�g�[�^���A�N�Z�Xpv�������B
		my $sumu = 0;

		#�ő�y�[�Wpv�������B
		my $max = 0;

		#�ő�A�N�Z�Xpv�������B
		my $maxu = 0;

		#�y�[�Wpv����z��ɑ���B
		my @hash = keys(%dms);

		#�ŏ��y�[�Wpv���擾�B
		my $mini = $dms{"$hash[0]"};

		#�y�[�Wpv�z����������B
		undef(@hash);

		#�A�N�Z�Xpv����z��ɑ���B
		my @hashu = keys(%uniq_user);

		#�ŏ��A�N�Z�Xpv���擾�B
		my $miniu = $uniq_user{"$hashu[0]"};

		#�A�N�Z�Xpv�z����������B
		undef(@hashu);

		foreach (sort keys %dms){

			#���ϒl�J�E���g�A�b�v�B
			$dd++;

			#�g�[�^���y�[�Wpv�B
			$sum = $sum + $dms{$_};

			#�ő�y�[�Wpv���擾�B
			if($dms{$_} > $max){$max = $dms{$_};}

			#�ŏ��y�[�Wpv���擾�B
			if($dms{$_} < $mini){$mini = $dms{$_};}

			#1���P�ʁi�y�[�W�����j�̃A�N�Z�X�������Z�o�B
			my $percent_dms = (int(10000 * ($dms{$_} / $dmp)) / 100);

			#�摜�����Z�o�B
			my $img1_width = int($bar * $percent_dms / 100);

			#�摜�̕���1�����̏ꍇ��1�ɂ���B
			if($img1_width < 1){
				$img1_width = 1;
			}

			#�g�[�^���A�N�Z�Xpv�B
			$sumu = $sumu + $uniq_user{$_};

			#�ő�A�N�Z�Xpv���擾�B
			if($uniq_user{$_} > $maxu){$maxu = $uniq_user{$_};}

			#�ŏ��A�N�Z�Xpv���擾�B
			if($uniq_user{$_} < $miniu){$miniu = $uniq_user{$_};}

			#1���P�ʁi�A�N�Z�X�����j�̃A�N�Z�X�������Z�o�B
			my $percent_upv = (int(10000 * ($uniq_user{$_} / $dmp)) / 100);

			#�摜�����Z�o�B
			my $img2_width = int($bar * $percent_upv / 100);

			#�摜�̕���1�����̏ꍇ��1�ɂ���B
			if($img2_width < 1){
				$img2_width = 1;
			}

			#�O���t�\���p�f�[�^�`���B
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

			#������15�ȏ�Ȃ�<tr>�ŋ�؂�B�i���s����j
			if($i >= 6){
				print"          </tr>\n";
				print"          <tr>\n";
				$i = 0;
			}else{
				$i++;
			}
		}

		#���σy�[�Wpv�B
		my $ave = 0;
		$ave    = $sum / $dd;
		$ave    = sprintf("%.1f",$ave);

		#���σA�N�Z�Xpv�B
		my $aveu = 0;
		$aveu    = $sumu / $dd;
		$aveu    = sprintf("%.1f",$aveu);

		#1���P�ʂɂ�铝�v���̏������B
		undef(%dms);

		#�Ō��[CR/LF]�����B
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
            StyleSet("Title","�y�[�W�\\������");
            StyleSet("Unit1","����");
            StyleSet("Unit2","��");
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
            StyleSet("Title","�A�N�Z�X����");
            StyleSet("Unit1","����");
            StyleSet("Unit2","��");
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
           <td width="50" align="left" nowrap>�y�[�W</td>
           <td width="100" align="left" nowrap>����<strong>$pv\pv</strong></td>
           <td width="100" align="left" nowrap>����<strong>$ave\pv</strong></td>
           <td width="100" align="left" nowrap>�ő�<strong>$max\pv</strong></td>
           <td width="100" align="left" nowrap>�Œ�<strong>$mini\pv</strong></td>
          </tr>
          <tr>
           <td width="10" align="left" nowrap>
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#FF9900"><img src="$imgdir/spacer.gif" width="10px" height="10px"></td>
             </tr>
            </table>
           </td>
           <td width="50" align="left" nowrap>�A�N�Z�X</td>
           <td width="100" align="left" nowrap>����<strong>$sumu�l</strong></td>
           <td width="100" align="left" nowrap>����<strong>$aveu�l</strong></td>
           <td width="100" align="left" nowrap>�ő�<strong>$maxu�l</strong></td>
           <td width="100" align="left" nowrap>�Œ�<strong>$miniu�l</strong></td>
          </tr>
         </table>
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td>���j���P�ʂɂ�铝�v</td>
           <td>
            <div id="week1" style="display:none"><input type="button" name="week" value="�\\���ؑ�" onclick="displayOfAllWeek()"></div>
            <div id="week2" style="display:none"><input type="button" name="week" value="�\\���ؑ�" onclick="displayOfPartWeek()"></div>
           </td>
          </tr>
         </table>
         <div id="weekResult1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
EOM

			#�O���t�\���p�f�[�^�������B
			my $graph_data_w = "";

			#�\���J�E���g�ϐ��������B
			my $j = 0;

			foreach (sort keys %youbis){

				#�J�E���g�A�b�v�B
				$j++;

				#�j���P�ʂ̃A�N�Z�X�������Z�o�B
				my $percent_youbis = (int(10000 * ($youbis{$_} / $youbip)) / 100);

				#�摜�����Z�o�B
				$img1_y = int($bar * $percent_youbis / 100);

				#�摜�̕���1�����̏ꍇ��1�ɂ���B
				if($img1_y < 1){
					$img1_y = 1;
				}

				#�O���t�\���p�f�[�^�`���B
				my $xpoint = 50 * $j;

				$graph_data_w .= "            XnamePush($xpoint,\"$youbi[$_]\")\;\n";
				$graph_data_w .= "            PointPush($xpoint,$youbis{$_},1,\"$youbi[$_]�j�� $youbis{$_}pv\")\;\n";

print<<"EOM";
           <td align="center" valign="bottom" nowrap>
            <div id="graph">
            <small>$youbis{$_}</small>
            <table>
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="10px" height="$img1_y\px"></td>
             </tr>
            </table>
            <small>$youbi[$_]�j</small>
            </div>
           </td>
EOM

			}

			#�j���P�ʂɂ�铝�v���̏������B
			undef(%youbis);

			#�Ō��[CR/LF]�����B
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
            StyleSet("Unit1","����");
            StyleSet("Unit2","�j��");
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
           <td width="50" align="left" nowrap>�y�[�W</td>
           <td width="100" align="left" nowrap>����<strong>$pv\pv</strong></td>
          </tr>
          <tr>
           <td width="10" align="left" nowrap>
            <table border="0" cellpadding="0" cellspacing="0">
             <tr>
              <td bgcolor="#FF9900"><img src="$imgdir/spacer.gif" width="10px" height="10px"></td>
             </tr>
            </table>
           </td>
           <td width="50" align="left" nowrap>�A�N�Z�X</td>
           <td width="100" align="left" nowrap>����<strong>$sumu�l</strong></td>
          </tr>
         </table>
EOM

		}

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
           <td>�����ԒP�ʂɂ�铝�v</td>
           <td>
            <div id="time1" style="display:none"><input type="button" name="time" value="�\\���ؑ�" onclick="displayOfAllTime()"></div>
            <div id="time2" style="display:none"><input type="button" name="time" value="�\\���ؑ�" onclick="displayOfPartTime()"></div>
           </td>
          </tr>
         </table>
         <div id="timeResult1">
         <table border="0" cellpadding="2" cellspacing="2">
          <tr>
EOM

		#�O���t�\���p�f�[�^�������B
		my $graph_data_t = "";

		#�\���J�E���g�ϐ��������B
		my $k = 0;

		foreach (sort keys %hours){

			#�J�E���g�A�b�v�B
			$k++;

			#���ԒP�ʂ̃A�N�Z�X�������Z�o�B
			my $percent_hours = (int(10000 * ($hours{$_} / $hourp)) / 100);

			#�摜�����Z�o�B
			$img1_t = int($bar * $percent_hours / 100);

			#�摜�̕���1�����̏ꍇ��1�ɂ���B
			if($img1_t < 1){
				$img1_t = 1;
			}

			#�O���t�\���p�f�[�^�`���B
			my $xpoint = 20 * $k;

			#�O���t�\���p�f�[�^�`���B
			$graph_data_t .= "            XnamePush($xpoint,\"$_\")\;\n";
			$graph_data_t .= "            PointPush($xpoint,$hours{$_},1,\"$_�� $hours{$_}pv\")\;\n";

print<<"EOM";
           <td align="center" valign="bottom" nowrap>
            <div id="graph">
            <small>$hours{$_}</small>
            <table>
             <tr>
              <td bgcolor="#990000"><img src="$imgdir/spacer.gif" width="10px" height="$img1_t\px"></td>
             </tr>
            </table>
            <small>$_��</small>
            </div>
           </td>
EOM

		}

		#���ԒP�ʂɂ�铝�v���̏������B
		undef(%hours);

		#�Ō��[CR/LF]�����B
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
            StyleSet("Unit1","����");
            StyleSet("Unit2","��");
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

		#[�y�[�W]�̕\���B
		if($page eq "on"){
			&page;
		}
		#[�����N��]�̕\���B
		if($referrer eq "on"){
			&referrerServer;
		}
		#[�����T�C�g]�̕\���B
		if($search_engin eq "on"){
			%rtitles = %engins;
			&reportPut("engin","�����T�C�g",$enginp,"");
		}
		#[�����L�[���[�h]�̕\���B
		if($search_keyword eq "on"){
			&searchWord;
		}
		#[�z�X�g��]�̕\���B
		if($host_name eq "on"){
			&hostName;
		}
		#[OS]�̕\���B
		if($os eq "on"){
			%rtitles = %os_names;
			&reportPut("os_name","OS",$os_namep,"");
		}
		#[�u���E�U]�̕\���B
		if($agent eq "on"){
			%rtitles = %agent_names;
			&reportPut("agent","�u���E�U",$agent_namep,"");
		}

		#�X�N���v�g�I�����ԁB
		$cpu_end = (times)[0];

		#�X�N���v�g�o�ߎ��ԁB
		$analysis_time = sprintf("%.3f �b",$cpu_end-$cpu_start);

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="2" align="center">
          <tr>
           <td>��͎��� $analysis_time</td>
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
# ���O�{�����[�h���ʕ\���B
##################################################
sub putLog{

	if($#lists == -1){

		#body�o�́B
		&body;

		#��̓��[�h��ʕ\���B
		&modeSelect;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymd�̃A�N�Z�X��̓��|�[�g</strong>
      <hr size="1">
      <strong><font color="#990000">�L���ȃA�N�Z�X���ʂ͂���܂���ł����B</font></strong>
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

		#body�o�́B
		&body;

		#��̓��[�h��ʕ\���B
		&modeSelect;

		#�J�n�J�E���g�v�Z�B
		my $start = $no * $pageing;

		#�I���J�E���g�v�Z�B
		my $end = ($no + 1) * $pageing;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymd�̃A�N�Z�X��̓��|�[�g</strong>
     </td>
    </tr>
   </table>
EOM

		if($#lists > $pageing){

			#�ő�y�[�W���v�Z�B
			my $max_count = int($#lists / $pageing) + 1;

			#�J�n�J�E���g�\���B
			my $start_view = $start + 1;

			#�I���J�E���g�\���B
			my $end_view = 0;

			if(($no + 1) == $max_count){
				$end_view = $#lists + 1;
			}else{
				$end_view = $end;
			}

			#�g�[�^���v�Z�B
			my $total = $#lists + 1;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>�g�[�^�� $total ���� $start_view - $end_view ����</strong>
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

			#�g�[�^���v�Z�B
			my $total = $#lists + 1;

print<<"EOM";
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>�g�[�^�� $total ��</strong>
     </td>
    </tr>
   </table>
EOM

		}

print<<"EOM";
   <table bgcolor="#CCCCCC" bordercolor="#666666" border="1" cellpadding="1" cellspacing="0" width="90%">
EOM

		#�J�E���g�ϐ��������B
		my $count = 0;

		#��r�z�X�g�ϐ��������B
		my $tmp_data = "";

		#���O���𐸍��B
		foreach my $log(@lists){

			if($count >= $start && $count < $end){

				#�Ō�́uCR/LF�v������
				chomp($log);

				#���O���𕪊��B
				my ($tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time) = split(/\,/,$log);

				#localtime�֐��Ńt�H�[�}�b�g�ύX�B�i�b�A���A���A���A���A�N�A�j���A1��1������̌o�ߔN���A�T�}�[�^�C�����Ԓ���1�j
				my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime($tmp_time);

				#�t�H�[�}�b�g�ύX�B�i2006/1/1(�j��)�j
				my $date1 = sprintf("%04d/%01d/%01d(%s)",$year + 1900,$month + 1,$mday,$youbi[$wday]);

				#�t�H�[�}�b�g�ύX�B�i12:12:12�j
				my $date2 = sprintf("%02d:%02d:%02d",$hour,$min,$sec);

				#�e���ڂ���̏ꍇ�ɂ́u---�v��������B
				if($date1 eq "")        {$date1         = "---";}
				if($date2 eq "")        {$date2         = "---";}
				if($tmp_page_name eq ""){$tmp_page_name = "---";}

				#�w�i�F�������B
				my $bgcolor1 = "";
				my $bgcolor2 = "";

				#��񂪓����ꍇ�̓J�E���g���Ȃ��B
				if($tmp_host_name eq $tmp_data){

					#���O��񐸍��t���O�𗧂Ă�B
					$equ = 1;

				}

				if($equ == 0){

					#���̎擾�B
					$tmp_data = $tmp_host_name;

					if($tmp_page_name eq "�g�b�v�y�[�W"){

						#�w�i�F�B
						$bgcolor1 = "#999999";
						$bgcolor2 = "#CCCCCC";

					}else{

						#�w�i�F�B
						$bgcolor1 = "#5C5C5C";
						$bgcolor2 = "#A5A5A5";

					}

				}else{

					#���O��񐸍��t���O���������B
					$equ = 0;

					#�w�i�F�B
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
     <td valign="top">[�����T�C�g]</td>
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
     <td valign="top">[�����N��]</td>
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
     <td valign="top">[�z�X�g]</td>
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
     <td valign="top">[�����L�[���[�h]</td>
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
     <td valign="top">[�u���E�U]</td>
     <td valign="top">$tmp_agent</td>
    </tr>
EOM

				}
			}

			#�J�E���g�A�b�v�B
			$count++;

		}

		#�X�N���v�g�I�����ԁB
		$cpu_end = (times)[0];

		#�X�N���v�g�o�ߎ��ԁB
		$analysis_time = sprintf("%.3f �b",$cpu_end-$cpu_start);

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
     <td align="center">��͎��� $analysis_time</td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}

	#���O�����������B
	undef(@lists);

	exit;
}
##################################################
# page
# �y�[�W���ʕ\���B
##################################################
sub page{

	#�y�[�W�J�E���g�B
	my $page_count = keys %pages;

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>���y�[�W [�y�[�W�����擾���邱�Ƃ��ł����L���ȃ��O�����F$pagep��/$pv\PV]</td>
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
            <input type="submit" value="�S���\\��">
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
           <td bgcolor="#999999"><font color="#FFFFFF">�y�[�W��</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">�O���t</font></td>
          </tr>
EOM

		#�\�������ϐ��̏������B
		my $i = 0;

		foreach (sort { $pages{$b} <=> $pages{$a} } keys %pages){

			#�y�[�W�̃A�N�Z�X�������Z�o�B
			my $percent = (int(10000 * ($pages{$_} / $pagep)) / 100);

			#�摜�����Z�o�B
			my $img1_p = int($bar * $percent / 100);

			#�摜�̕���1�����̏ꍇ��1�ɂ���B
			if($img1_p < 1){
				$img1_p = 1;
			}

			#�\�����u%�v�ɂ���B
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

				#$max_view�ȏ�͕\�����Ȃ��B
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		#�y�[�W���̏������B
		undef(%pages);

	}else{

print<<"EOM";
           </tr>
           <tr>
            <td>�f�[�^������܂���ł����B</td>
           </tr>
         </table>
EOM

	}
}
##################################################
# referrerServer
# �����N���T�[�o�ʕ\���B
##################################################
sub referrerServer{

	#�����N���J�E���g�B
	my $referrer_server_count = keys %referrer_servers;

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>�������N�� [�����N�����擾���邱�Ƃ��ł����L���ȃ��O�����F$referrer_serverp��/$pv\PV]</td>
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
            <input type="submit" value="�S���\\��">
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
           <td bgcolor="#999999"><font color="#FFFFFF">�����N���T�[�o</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">�O���t</font></td>
          </tr>
EOM

		#�\�������ϐ��̏������B
		my $i = 0;

		foreach (sort { $referrer_servers{$b} <=> $referrer_servers{$a} } keys %referrer_servers){

			#�����N���̃A�N�Z�X�������Z�o�B
			my $percent = (int(10000 * ($referrer_servers{$_} / $referrer_serverp)) / 100);

			#�摜�����Z�o�B
			my $img1_rs = int($bar * $percent / 100);

			#�摜�̕���1�����̏ꍇ��1�ɂ���B
			if($img1_rs < 1){
				$img1_rs = 1;
			}

			#�\�����u%�v�ɂ���B
			$percent = sprintf("%.1f",$percent);

			#�����N����\������B
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

				#$max_view�ȏ�͕\�����Ȃ��B
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		#�����N�����̏������B
		undef(%referrer_servers);

	}else{

print<<"EOM";
           </tr>
           <tr>
            <td>�f�[�^������܂���ł����B</td>
           </tr>
         </table>
EOM

	}
}
##################################################
# reportPut
# [�����T�C�g/os/�u���E�U]�ʕ\���B
##################################################
sub reportPut{

	#[�����T�C�g/os/�u���E�U]�J�E���g�B
	my $rtitles_count = keys %rtitles;

	#�\�����ڕϐ��̏������B
	my ($rtitle,$rname,$rpoint,$str) = @_;

	#�\���^�C�v�̏������B
	my $rtype = "";

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>��$rname [$rname���擾���邱�Ƃ��ł����L���ȃ��O�����F$rpoint��/$pv\PV]</td>
EOM

	if($rtitles_count > $max_view && $max_view != 0){

		if($rname eq "�����G���W��"){
			$rtype     = "search_engin";
		}elsif($rname eq "OS"){
			$rtype     = "os";
		}elsif($rname eq "�u���E�U"){
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
            <input type="submit" value="�S���\\��">
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
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">�O���t</font></td>
          </tr>
EOM

		#�\�������ϐ��̏������B
		my $i = 0;

		foreach (sort { $rtitles{$b} <=> $rtitles{$a} } keys %rtitles){

			#�A�N�Z�X�������Z�o�B
			my $percent = (int(10000 * ($rtitles{$_} / $rpoint)) / 100);

			#�摜�����Z�o�B
			my $img1_rp = int($bar * $percent / 100);

			#�摜�̕���1�����̏ꍇ��1�ɂ���B
			if($img1_rp < 1){
				$img1_rp = 1;
			}

			#�\�����u%�v�ɂ���B
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

				#$max_view�ȏ�͕\�����Ȃ��B
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
           <td>�f�[�^������܂���ł����B</td>
          </tr>
         </table>
EOM

	}
}
##################################################
# searchWord
# �����L�[���[�h�ʕ\���B
##################################################
sub searchWord{

	#�����L�[���[�h�J�E���g�B
	my $keywords_count = keys %keywords;

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>�������L�[���[�h [�����L�[���[�h���擾���邱�Ƃ��ł����L���ȃ��O�����F$keywordp��/$pv\PV]</td>
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
            <input type="submit" value="�S���\\��">
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
           <td bgcolor="#999999"><font color="#FFFFFF">�����L�[���[�h</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">�O���t</font></td>
          </tr>
EOM

		#�\�������ϐ��̏������B
		my $i = 0;

		foreach (sort { $keywords{$b} <=> $keywords{$a} } keys %keywords){

			#�����L�[���[�h�̃A�N�Z�X�������Z�o�B
			my $percent = (int(10000 * ($keywords{$_} / $keywordp)) / 100);

			#�摜�����Z�o�B
			my $img1_sw = int($bar * $percent / 100);

			#�摜�̕���1�����̏ꍇ��1�ɂ���B
			if($img1_sw < 1){
				$img1_sw = 1;
			}

			#�\�����u%�v�ɂ���B
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

				#$max_view�ȏ�͕\�����Ȃ��B
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		#�����L�[���[�h���̏������B
		undef(%keywords);

	}else{

print<<"EOM";
           </tr>
           <tr>
            <td>�f�[�^������܂���ł����B</td>
           </tr>
         </table>
EOM

	}
}
##################################################
# hostName
# �z�X�g���ʕ\���B
##################################################
sub hostName{

	#�z�X�g���J�E���g�B
	my $host_names_count = keys %host_names;

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="1">
          <tr>
           <td>���z�X�g [�z�X�g���擾���邱�Ƃ��ł����L���ȃ��O�����F$host_namep��/$pv\PV]</td>
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
            <input type="submit" value="�S���\\��">
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
           <td bgcolor="#999999"><font color="#FFFFFF">�z�X�g��</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">����</font></td>
           <td bgcolor="#999999"><font color="#FFFFFF">�O���t</font></td>
          </tr>
EOM

		#�\�������ϐ��̏������B
		my $i = 0;

		foreach (sort { $host_names{$b} <=> $host_names{$a} } keys %host_names){

			#�z�X�g���̃A�N�Z�X�������Z�o�B
			my $percent = (int(10000 * ($host_names{$_} / $host_namep)) / 100);

			#�摜�����Z�o�B
			my $img1_hn = int($bar * $percent / 100);

			#�摜�̕���1�����̏ꍇ��1�ɂ���B
			if($img1_hn < 1){
				$img1_hn = 1;
			}

			#�\�����u%�v�ɂ���B
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

				#$max_view�ȏ�͕\�����Ȃ��B
				if($i >= $max_view){
					last;
				}
			}
		}

print<<"EOM";
         </table>
EOM

		#�z�X�g�����̏������B
		undef(%host_names);

	}else{

print<<"EOM";
           </tr>
           <tr>
            <td>�f�[�^������܂���ł����B</td>
           </tr>
         </table>
EOM

	}
}
##################################################
# logView
# ��̓��[�h���ʕ\���B
##################################################
sub logView{

	my ($viewType) = @_;

	#body�o�́B
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
      <input type="button" name="submit" value="�߂�" onClick="history.go(-2);" style="width:100px">
     </td>
    </tr>
   </table>
   <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
     <td align="center" valign="middle" height="30" nowrap>
      <strong>$ymd�̃A�N�Z�X��̓��|�[�g</strong>
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

	#���O�̍ő�\�������������B
	$max_view = 0;

	#[�y�[�W]�̕\���B
	if($viewType eq "page"){
		&page;
	}
	#[�����N��]�̕\���B
	if($viewType eq "referrerServer"){
		&referrerServer;
	}
	#[�����T�C�g]�̕\���B
	if($viewType eq "search_engin"){
		%rtitles = %engins;
		&reportPut("engin","�����T�C�g",$enginp,"");
	}
	#[�����L�[���[�h]�̕\���B
	if($viewType eq "searchWord"){
		&searchWord;
	}
	#[�z�X�g��]�̕\���B
	if($viewType eq "hostName"){
		&hostName;
	}
	#[OS]�̕\���B
	if($viewType eq "os"){
		%rtitles = %os_names;
		&reportPut("os_name","OS",$os_namep,"");
	}
	#[�u���E�U]�̕\���B
	if($viewType eq "agent"){
		%rtitles = %agent_names;
		&reportPut("agent","�u���E�U",$agent_namep,"");
	}

	#�X�N���v�g�I�����ԁB
	$cpu_end = (times)[0];

	#�X�N���v�g�o�ߎ��ԁB
	$analysis_time = sprintf("%.3f �b",$cpu_end-$cpu_start);

print<<"EOM";
         <hr size="1">
         <table border="0" cellpadding="2" cellspacing="2" align="center">
          <tr>
           <td>��͎��� $analysis_time</td>
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
      <input type="button" name="submit" value="�߂�" onClick="history.go(-2);" style="width:100px">
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
# ��̓��[�h��ʕ\���B
##################################################
sub modeSelect{

	#�e�ݒ荀�ڂ̃f�t�H���g�ݒ�B
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
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">1.�\\���I��</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <select name="select">
         <option value="graph"$select1>�A�N�Z�X�����̏W�v�\\��</option>
         <option value="log"$select2>�A�N�Z�X�����̈ꗗ�\\��</option>
         </select>
        </td>
       </tr>
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">2.���ԑI��</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <input type="radio" name="range" value="day"$range1>
         ���t
         <select name="ymd_file">
EOM

	#���O�t�@�C�������Z���N�g���ڂɐݒ�B
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
         �T��
         <select name="week_file">
         <option value="0"$week_file1>�`1�T�ԑO</option>
         <option value="7"$week_file2>1�T�ԑO�`2�T�ԑO</option>
         <option value="14"$week_file3>2�T�ԑO�`3�T�ԑO</option>
         <option value="21"$week_file4>3�T�ԑO�`4�T�ԑO</option>
         </select>
         <input type="radio" name="range" value="month"$range3>
         ����
         <select name="ym_file">
EOM

	#�N�����Z���N�g���ڂɐݒ�B
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

	#�A�N�Z�X�����̈ꗗ�\���B

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
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">3.���ڑI��</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <input type="checkbox" name="search_engin" value="on"$search_engin1>�����T�C�g
         <input type="checkbox" name="referrer" value="on"$referrer1>�����N��
         <input type="checkbox" name="host_name" value="on"$host_name1>�z�X�g
         <input type="checkbox" name="search_keyword" value="on"$search_keyword1>�����L�[���[�h
         <input type="checkbox" name="os" value="on"$os1>OS
         <input type="checkbox" name="agent" value="on"$agent1>�u���E�U
        </td>
       </tr>
EOM

		if($debug_flg eq "on"){

print<<"EOM";
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">4.�L�[���[�h</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <table border="0">
          <tr>
           <td>�y�[�W���ōi����</td>
           <td>
           <input type="text" name="sentence1" value="$sentence1" size="50" maxlength="200">
           <select name="cond1">
           <option value="and"$cond11>AND</option>
           <option value="or"$cond12>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�����N���ōi����</td>
           <td>
           <input type="text" name="sentence2" value="$sentence2" size="50" maxlength="200">
           <select name="cond2">
           <option value="and"$cond21>AND</option>
           <option value="or"$cond22>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�����T�C�g���ōi����</td>
           <td>
           <input type="text" name="sentence3" value="$sentence3" size="50" maxlength="200">
           <select name="cond3">
           <option value="and"$cond31>AND</option>
           <option value="or"$cond32>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�����L�[���[�h�ōi����</td>
           <td>
           <input type="text" name="sentence4" value="$sentence4" size="50" maxlength="200">
           <select name="cond4">
           <option value="and"$cond41>AND</option>
           <option value="or"$cond42>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�z�X�g���ōi����</td>
           <td>
           <input type="text" name="sentence5" value="$sentence5" size="50" maxlength="200">
           <select name="cond5">
           <option value="and"$cond51>AND</option>
           <option value="or"$cond52>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>OS�ōi����</td>
           <td>
           <input type="text" name="sentence6" value="$sentence6" size="50" maxlength="200">
           <select name="cond6">
           <option value="and"$cond61>AND</option>
           <option value="or"$cond62>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�u���E�U�ōi����</td>
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

	#�A�N�Z�X�����̏W�v�\���B
	if($select eq "graph"){

print<<"EOM";
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">3.���ڑI��</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <input type="checkbox" name="page" value="on"$page1>�y�[�W
         <input type="checkbox" name="referrer" value="on"$referrer1>�����N��
         <input type="checkbox" name="search_engin" value="on"$search_engin1>�����T�C�g
         <input type="checkbox" name="search_keyword" value="on"$search_keyword1>�����L�[���[�h
         <input type="checkbox" name="host_name" value="on"$host_name1>�z�X�g
         <input type="checkbox" name="os" value="on"$os1>OS
         <input type="checkbox" name="agent" value="on"$agent1>�u���E�U
        </td>
       </tr>
EOM

	if($debug_flg eq "on"){

print<<"EOM";
       <tr>
        <td bgcolor="#999999" width="100" nowrap><font color="#FFFFFF">4.�L�[���[�h</font></td>
        <td bgcolor="#CCCCCC" width="500" nowrap>
         <table border="0">
          <tr>
           <td>�y�[�W���ōi����</td>
           <td>
           <input type="text" name="sentence1" value="$sentence1" size="50" maxlength="200">
           <select name="cond1">
           <option value="and"$cond11>AND</option>
           <option value="or"$cond12>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�����N���ōi����</td>
           <td>
           <input type="text" name="sentence2" value="$sentence2" size="50" maxlength="200">
           <select name="cond2">
           <option value="and"$cond21>AND</option>
           <option value="or"$cond22>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�����T�C�g���ōi����</td>
           <td>
           <input type="text" name="sentence3" value="$sentence3" size="50" maxlength="200">
           <select name="cond3">
           <option value="and"$cond31>AND</option>
           <option value="or"$cond32>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�����L�[���[�h�ōi����</td>
           <td>
           <input type="text" name="sentence4" value="$sentence4" size="50" maxlength="200">
           <select name="cond4">
           <option value="and"$cond41>AND</option>
           <option value="or"$cond42>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�z�X�g���ōi����</td>
           <td>
           <input type="text" name="sentence5" value="$sentence5" size="50" maxlength="200">
           <select name="cond5">
           <option value="and"$cond51>AND</option>
           <option value="or"$cond52>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>OS�ōi����</td>
           <td>
           <input type="text" name="sentence6" value="$sentence6" size="50" maxlength="200">
           <select name="cond6">
           <option value="and"$cond61>AND</option>
           <option value="or"$cond62>OR</option>
           </select>
           </td>
          </tr>
          <tr>
           <td>�u���E�U�ōi����</td>
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
     <td align="right" valign="middle" height="30"><input type="submit" name="submit" value="��̓X�^�[�g"></td>
     <td align="left" valign="middle" height="30"><input type="submit" name="submit" value="�Ǘ���ʂ�"></td>
    </tr>
   </table>
   </form>
EOM

}
##################################################
# admin
# �Ǘ����[�h��ʕ\���B
##################################################
sub admin{

	#body�o�́B
	&body;

print<<"EOM";
   <br>
   <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
    <tr>
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>���Ǘ��҃p�X���[�h�̕ύX</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        �A�N�Z�X��̓y�[�W�i���̃y�[�W�j��\\������ۂ̃p�X���[�h��ύX���܂��B<br>
        �V�����p�X���[�h����͂��āA�u�ύX�v�{�^�����N���b�N���Ă��������B
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="mode" value="set_pswd">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">�V�p�X���[�h</td>
           <td bgcolor="#FFFFFF" nowrap><input type="password" name="new_pswd" size="10">�i6�����ȏ�̔��p�p���j</td>
          </tr>
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">�m�F����</td>
           <td bgcolor="#FFFFFF" nowrap><input type="password" name="retype_pswd" size="10">�i�m�F�̂��ߍē��́j<input type="submit" value="�ύX"></td>
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
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>����̓��O���W�ΏۊO�z�X�g�̐ݒ�</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        ����̃z�X�g����̃A�N�Z�X�̓J�E���g���Ȃ��悤�ɐݒ肵�܂��B<br>
        �z�X�g������͂��A�u�o�^�v�{�^�����N���b�N���Ă��������B
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="mode" value="set_reject">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">�z�X�g��</td>
           <td bgcolor="#FFFFFF" nowrap><input type="text" name="reject_host" size="50"><input type="submit" value="�o�^"></td>
          </tr>
         </table>
         </form>
        </td>
       </tr>
       <tr>
        <td>
         ��͑ΏۊO�ɓo�^����Ă���z�X�g���i�폜�������ꍇ�́u�폜�v���N���b�N���Ă��������j
         <table border="0" cellpadding="1" cellspacing="1">
EOM

	#�z�X�g�����ǂݍ��݁B
	open(IN,$reject_file);
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	my @reject = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);

	#�z�X�g�����t�@�C�������݂��A���z�X�g����񂪑��݂��Ă���ꍇ�B
	if(-e $reject_file && $reject[0] ne ""){

		#�A�ԏ����������B
		my $i = 1;

		#�z�X�g�����𐸍��B
		foreach my $x(@reject){

			#�z�X�g�����𕪊��B
			my ($no,$reject_host) = split(/,/,$x);

			#���s���폜�B
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
           <input type="submit" value="�폜">
           </form>
           </td>
          </tr>
EOM

			$i++;

		}

	}else{

print<<"EOM";
          <tr>
           <td><font color="#000066">���o�^����Ă���z�X�g���͂���܂���</font></td>
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
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>�����O�t�@�C���̍폜</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        �ۑ�����Ă��郍�O�t�@�C�����폜���܂��B<br>
        �폜���錎��I�����āA�u�폜�v�{�^�����N���b�N���Ă��������B
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="mode" value="delete_file">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">���I��</td>
           <td bgcolor="#FFFFFF" nowrap>
           <select name="ym_file">
EOM

	#�N�����Z���N�g���ڂɐݒ�B
	foreach (reverse(sort @ym_files)){

		if($_ eq $ym_file){
			print"           <option value=\"$_\" selected>$_</option>\n";
		}else{
			print"           <option value=\"$_\">$_</option>\n";
		}
	}

print<<"EOM";
           </select>
           <input type="submit" value="�폜">
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
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>�����O�t�@�C���̃o�b�N�A�b�v</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        �ۑ�����Ă��郍�O�t�@�C�����o�b�N�A�b�v���܂��B<br>
        �o�b�N�A�b�v���錎��I�����āA�u�o�b�N�A�b�v��ʂցv�{�^�����N���b�N���Ă��������B
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="mode" value="download_file">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">���I��</td>
           <td bgcolor="#FFFFFF" nowrap>
           <select name="ym_file">
EOM

	#�N�����Z���N�g���ڂɐݒ�B
	foreach (reverse(sort @ym_files)){

		if($_ eq $ym_file){
			print"           <option value=\"$_\" selected>$_</option>\n";
		}else{
			print"           <option value=\"$_\">$_</option>\n";
		}
	}

print<<"EOM";
           </select>
           <input type="submit" value="�o�b�N�A�b�v��ʂ�">
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
     <td bgcolor="#999999"><font color="#FFFFFF"><strong>�����O�t�@�C���̃A�b�v���[�h</strong></font></td>
    </tr>
    <tr>
     <td bgcolor="#FFFFFF" align="center">
      <table border="0" cellpadding="1" cellspacing="1" width="90%">
       <tr>
        <td nowrap>
        �o�b�N�A�b�v�������O�t�@�C�����A�b�v���[�h���܂��B<br>
        �u�Q�Ɓv�{�^���Ń��O�t�@�C����I�����āA�u�A�b�v���[�h�v�{�^�����N���b�N���Ă��������B
        </td>
       </tr>
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0" ENCTYPE="multipart/form-data">
         <input type="hidden" name="mode" value="upload_file">
         <input type="hidden" name="sunfirst" value="$sunfirst">
         <table bgcolor="#666666" border="0" cellpadding="2" cellspacing="1" width="90%">
          <tr>
           <td bgcolor="#CCCCCC" nowrap width="100">���O�t�@�C��</td>
           <td bgcolor="#FFFFFF" nowrap>
           <input type="file" name="upFile">
           <input type="submit" value="�A�b�v���[�h">
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
     <input type="submit" value="��͉�ʂ�">
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
# �p�X���[�h�ݒ��ʁB
##################################################
sub setPswd{

	#�p�X���[�h���̓ǂݍ��݁B
	open(IN,$pswd_file);
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	my @pass = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);

	#���s���폜�B
	$pass[0] =~ s/\n//g;

	#�p�X���[�h�̃^�C�v���������B
	my $salt = 0;

	#�p�X���[�h�̃^�C�v�𔻕ʁB
	if($pass[0] =~ /^\$1\$/){$salt = 3;}

	#���̓p�X���[�h�̕������`�F�b�N�B
	if(length($in{'new_pswd'}) < 6 || $in{'new_pswd'} eq ""){
		&error("6�����ȏ�̃p�X���[�h���w�肵�Ă�������.");
	}

	#���̓p�X���[�h�̔�r�`�F�b�N�B
	if($in{'new_pswd'} ne $in{'retype_pswd'}){
		&error("�m�F�̂��ߓ��͂����p�X���[�h����v���܂���B�p�X���[�h���ē��͂��Ă��������B");
	}

	#�p�X���[�h�̈Í����B
	my ($pwd) = &makePswd($in{'new_pswd'});

	#�p�X���[�h���̕ۑ��B
	open(OUT, "> $pswd_file");		# �ǂݏ������[�h�ŊJ��
	flock(OUT, 2);				# ���b�N�m�F�B���b�N
	seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
	print OUT $pwd;				# ��������
	truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
	close(OUT);				# close����Ύ����Ń��b�N����

	#�t�@�C���p�[�~�b�V�����ݒ�B
	my $file_permission = sprintf("%04d",oct($dat_file_auth));

	#�p�[�~�b�V�����ݒ�B
	if($dat_file_auth eq ""){
		chmod(0755,$pswd_file);
	}else{
		chmod($file_permission,$pswd_file);
	}

	#body�o�́B
	&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>���Ǘ��҃p�X���[�h�͈ȉ��̃p�X���[�h�Őݒ肳��܂����B�K�������ȂǂɍT���Ă��������B</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      ���ݒ肳�ꂽ�p�X���[�h��<strong>�u$in{'new_pswd'}�v</strong>�ł��B<br>
      ���p�X���[�h��Y���ƃZ�L�����e�B�̂��߁A��x�ƃ��O�C���ł��Ȃ��Ȃ�܂��̂ł����ӂ��������B 
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
      <input type="submit" value="��͉�ʂ�">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="�Ǘ���ʂ�">
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
# ���O�擾���ہB
##################################################
sub setReject{

	#�J�E���g���Ȃ��z�X�g���o�^�B
	if($in{'delete'} eq ""){

		if($in{'reject_host'} eq ""){
			&error("�z�X�g�������͂���Ă��܂���B");
		}

		#�z�X�g�����ǂݍ��݁B
		open(IN,$reject_file);
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		my @reject = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		#�����t���O�������B
		my $match = 0;

		#�z�X�g����񐸍��B
		foreach my $x(@reject){

			#�z�X�g����񕪊��B
			local($no,$reject_host) = split(/,/,$x);

			#���s���폜�B
			$reject_host =~ s/\n//g;

			#�����z�X�g�����o�^����Ă����ꍇ�́A�t���O���u1�v�ɂ��ă��[�v�𔲂���B
			if($in{'reject_host'} eq "$reject_host"){
				$match = 1;
				last;
			}
		}

		#�����z�X�g�����o�^����Ă����ꍇ�̓G���[�B
		if($match == 1){
			&error("�w�肳�ꂽ�z�X�g���͊��ɓo�^����Ă��܂��B");
		}

		#�z�X�g�����̍ŐV�𕪊��B
		my ($no,$reject_host) = split(/,/,$reject[0]);

		#�z�X�g���ԍ���V�K�쐬�B
		$no++;

		#�z�X�g������V�K�쐬�B
		my $new = "$no,$in{'reject_host'}\n";

		#�z�X�g�����������̏��̐擪�ɒǉ��B
		unshift(@reject,$new);

		#�z�X�g������ۑ��B
		open(OUT,"> $reject_file");		# �ǂݏ������[�h�ŊJ��
		flock(OUT,2);				# ���b�N�m�F�B���b�N
		seek(OUT,0,0);				# �t�@�C���|�C���^��擪�ɃZ�b�g
		print OUT @reject;			# ��������
		truncate(OUT,tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
		close(OUT);				# close����Ύ����Ń��b�N����

		#�t�@�C���p�[�~�b�V�����ݒ�B
		my $file_permission = sprintf("%04d",oct($dat_file_auth));

		#�p�[�~�b�V�����ݒ�B
		if($dat_file_auth eq ""){
			chmod(0755,$reject_file);
		}else{
			chmod($file_permission,$reject_file);
		}

		#body�o�́B
		&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>���ȉ��̃z�X�g���̃A�N�Z�X������ۑ����Ȃ��悤�ɐݒ肵�܂����B</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      ���ݒ肳�ꂽ�z�X�g����<strong>�u$in{'reject_host'}�v</strong>�ł��B
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
      <input type="submit" value="��͉�ʂ�">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="�Ǘ���ʂ�">
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

	#�J�E���g���Ȃ��z�X�g���폜�B
	}elsif($in{'delete'} ne ""){

		#�z�X�g�����ǂݍ��݁B
		open(IN,$reject_file);
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		my @reject = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		#�폜����z�X�g���ϐ��̏������B
		my @delete = ();

		#�z�X�g�����̐����B
		foreach my $x(@reject){

			#�z�X�g�����̕����B
			my ($no,$reject_host) = split(/,/,$x);

			#�폜����z�X�g���͋�ɂ���B
			if($in{'delete'} eq "$no"){
				$x = "";
			}

			push(@delete,$x);

		}

		#�폜���ݏ���ۑ��B
		open(OUT, "> $reject_file");		# �ǂݏ������[�h�ŊJ��
		flock(OUT,2);				# ���b�N�m�F�B���b�N
		seek(OUT,0,0);				# �t�@�C���|�C���^��擪�ɃZ�b�g
		print OUT @delete;			# ��������
		truncate(OUT,tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
		close(OUT);				# close����Ύ����Ń��b�N����

		#�t�@�C���p�[�~�b�V�����ݒ�B
		my $file_permission = sprintf("%04d",oct($dat_file_auth));

		#�p�[�~�b�V�����ݒ�B
		if($dat_file_auth eq ""){
			chmod(0755,$reject_file);
		}else{
			chmod($file_permission,$reject_file);
		}

		#body�o�́B
		&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>���ȉ��̃z�X�g���̓o�^���������܂����B</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      ���������ꂽ�z�X�g����<strong>�u$in{'reject_host'}�v</strong>�ł��B
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
      <input type="submit" value="��͉�ʂ�">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="�Ǘ���ʂ�">
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
# ���O�t�@�C���폜�B
##################################################
sub deleteFile{

	if($ym_file eq ""){

		&error("�����I������Ă��܂���B");

	}elsif($ym_file ne ""){

		#���͂��ꂽ�N���𕪊��B
		my ($year,$month) = split(/\//,$ym_file);

		#�폜����t�@�C�����ϐ��̏������B
		my @delete = ();

		#���O�t�@�C�����̐����B
		foreach my $x(@log_files){

			#�Y������t�@�C�������݂����ꍇ�B
			if($x =~ /^$year$month(\d\d).cgi/){

				$list = "$logdir$x";
				push(@delete,"$list")

			}
		}

		#�t�@�C�����폜����B
		unlink @delete;

		#body�o�́B
		&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>���ȉ��̃��O�t�@�C�����폜���܂����B</strong>
     </td>
    </tr>
    <tr>
     <td height="30">
      ���폜���ꂽ���O�t�@�C����<strong>�u$year�N$month���v</strong>�ł�
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
      <input type="submit" value="��͉�ʂ�">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="�Ǘ���ʂ�">
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
# ���O�t�@�C���o�b�N�A�b�v�B
##################################################
sub downloadFile{

	if($ym_file eq ""){

		&error("�����I������Ă��܂���B ");

	}elsif($ym_file ne ""){

		#���͂��ꂽ�N���𕪊��B
		local($year,$month) = split(/\//,$ym_file);

		#body�o�́B
		&body;

print<<"EOM";
   <br>
   <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr>
     <td height="30">
      <strong>��$year�N$month���̃��O�t�@�C�����o�b�N�A�b�v���܂��B</strong>
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
        <input type="submit" name="execution" value="�_�E�����[�h">
        <input type="submit" name="execution" value="�폜">
        </td>
        <td>
        <div id="button1"><input type="button" value="���ׂđI��" onclick="boxChecked(true)"></div>
        <div id="button2"><input type="button" value="�I��������" onclick="boxChecked(false)"></div>
        </td>
       </tr>
EOM

		#���O�t�@�C�����̐����B
		foreach (@log_files){

			#�Y������t�@�C�������݂����ꍇ�B
			if($_ =~ /^$year$month(\d\d)/){

				$t_year  = substr($_,0,4);
				$t_month = substr($_,4,2);
				$t_day   = substr($_,6,2);
				print"       <tr>\n";
				print"        <td>\n";
				print"        <input type=\"checkbox\" name=\"file\" value=\"$_\">\n";
				print"        <a href=\"$script?mode=download&sunfirst=$sunfirst&file=$_\"><strong>�u$t_year�N$t_month��$t_day���v<\/b></a>\n";
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
      <input type="submit" value="��͉�ʂ�">
      </form>
     </td>
     <td align="left">
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="admin">
      <input type="hidden" name="pswd" value="$in{'new_pswd'}">
      <input type="hidden" name="sunfirst" value="$sunfirst">
      <input type="submit" value="�Ǘ���ʂ�">
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
# �G���[��ʕ\���B
##################################################
sub error{

	#body�o�́B
	&body;

print<<"EOM";
   <div align="center">
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td height="30" align="center">-----------------<strong>�G���[���b�Z�[�W</strong>-----------------</td>
    </tr>
    <tr>
     <td height="30" align="center"><font color="#FF0000" size="-1"><strong>$_[0]</strong></font></td>
    </tr>
    <tr>
     <td height="30" align="center"><input type="button" value="���͉�ʂɖ߂�" onClick="history.back();"></td>
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
