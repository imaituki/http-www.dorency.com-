//--------------------------------------------------------------------------
//
// SITEUP-SYSTEM
//
// COPYRIGHT(C)2004-2009 SUNFIRST.INC ALL RIGHTS RESERVED.
//
// �\�t�g�E�F�A�g�p�����_��
//
// [SITEUP-SYSTEM](�ȉ�[�{�\�t�g�E�F�A]�ƋL��)�Ɋւ��钘�쌠���̒m�I���Y���́A
// �T���t�@�[�X�g�������(�ȉ�[����]�ƋL��)�ɋA�����A
// ���{�̒��쌠�@���̑��֘A���ēK�p�����@�����ɂ���ĕی삳��Ă��܂��B
//
// [�{�\�t�g�E�F�A]�͎��s�t�@�C�������łȂ��A
// ���[�U�f�[�^��w���v���܂ޑS�Ă̍\���t�@�C����\���܂��B
//
// ���q�l�́A�\�t�g�E�F�A�g�p�����_��(�ȉ�[�_��]�ƋL��)�̏����ɏ]���āA
// [�{�\�t�g�E�F�A]����{�����Ŏg�p����A��Ɛ�I�Ȍ�����[�_��]�Ɋ�Â��擾���܂��B
//
// [�_��]�ɖ����I�ɋ�������Ă���ꍇ�������āA
// [�{�\�t�g�E�F�A]�̎g�p�A�S�����͈ꕔ�𕡐��A���ϓ��͏o���܂���B
// [�_��]�ɖ����I�ɋ�������Ă���A[�{�\�t�g�E�F�A]�𕡐�����ꍇ�ɂ́A
// [�{�\�t�g�E�F�A]�ɕt����Ă��钘�쌠�\���y�сA���̑��̌����\���������ɕ���������̂Ƃ��܂��B
//
// [�{�\�t�g�E�F�A]�y�ъ֘A�����ɕt����Ă���A
// ���쌠�\���y�т��̑��̌����\�����������邱�Ƃ͏o���܂���B
//
// [�_��]���I�������Ƃ��́A������[�{�\�t�g�E�F�A]�y�т��̑S�Ă̕��������тɊ֘A������
// �j��������̂Ƃ��܂��B
//
// [����]�y�сA[�{�\�t�g�E�F�A]��z�z����S�Ă̎҂́A[�_��]�ɓ��ӂ����Ă����ꍇ�ł��A
// [�{�\�t�g�E�F�A]���l���p�E�Г����p�E�c���ړI�E��c���ړI���킸�A
// �S�����͈ꕔ�𕡐��A���ϓ����s�����ꍇ�̎g�p�ɂ���Đ����������鑹�Q�ɂ��āA
// �@���Ȃ�ӔC�������܂���B
// [����]�y�сA[�{�\�t�g�E�F�A]��z�z����S�Ă̎҂́A
// ���̂悤�ȑ��Q����������\���ɂ��āA���O�ɒm�炳��Ă����ꍇ�ł����l�ł��B
//
// ���ȏ�̓C���X�g�[�������ۂɕ\�������u�\�t�g�E�F�A�g�p�����_�񏑁v�𔲐��A�ǋL�������̂ł��B
//
//--------------------------------------------------------------------------*/
//common.js�̓��[�U�f�B���N�g���̃��[�g�����ɔz�u���܂��B
//�ŏI�X�V2010.03.24

if(!navigator.cookieEnabled)alert("�N�b�L�[�̏������݂��ł��܂���B�u���E�U�̐ݒ��ύX���Ă������B");


//������@�X�V(2010.03.05 Ver1.83)
var ua = navigator.userAgent.toLowerCase();
var isMSIE = (ua.indexOf('msie') != -1) ? true : false;
var isFF = (ua.indexOf('firefox', ua) != -1) ? true : false;
//var isSF = (ua.indexOf('safari', ua) != -1 && ua.indexOf('chrome', ua) == -1) ? true : false;
var isOP = (ua.indexOf('opera') != -1) ? true : false;
var isGC = (ua.indexOf('chrome') != -1) ? true : false;



//////////////////////////////////////////////////
// ���f�B�A���ʁB
//////////////////////////////////////////////////

var FlashPlayer = 1;

if (isMSIE) {

	FlashPlayer = 0;

	FlashPlayer = searchActiveX("ShockwaveFlash.ShockwaveFlash.6");

	if (FlashPlayer <= 0) {

		FlashPlayer = searchActiveX("ShockwaveFlash.ShockwaveFlash.7");

	}

	if (FlashPlayer <= 0) {

		FlashPlayer = searchActiveX("ShockwaveFlash.ShockwaveFlash.8");

	}

} else {

	FlashPlayer = 0;

	if (navigator.plugins) {

		if (navigator.plugins["Shockwave Flash"]) {

			FlashPlayer = navigator.plugins["Shockwave Flash"].description.substring(16, 17)

		}

	}

}

//////////////////////////////////////////////////

//////////////////////////////////////////////////
// ���f�B�A���ʁB(IE�p)
//////////////////////////////////////////////////

function searchActiveX(ActiveXName) {

	var result = false;

	if (!window.opera && document.all) {

		document.open();
		document.write('<scr'+'ipt language="VBScript"\>\n');
		document.write('On Error Resume Next\n');
		document.write('Dim ax\n');
		document.write('ax = False\n');
		document.write('ax = (IsObject(CreateObject("'+ActiveXName+'")))\n');
		document.write('<\/scr'+'ipt\>\n');
		document.close();
		result = (ax) ? true : false;

	}

	return result;

}

//////////////////////////////////////////////////

function MM_openBrWindow(theURL,winName,features){
	window.open(theURL,winName,features);
}

function MM_openBrSpecificWindow(theURL,winName,features,width,height){

	var x = (screen.width  - width) / 2;
	var y = (screen.height - height) / 2;
	window.open(theURL,winName,features + ',left='+x+',top='+y);

}

function MM_openBrForm1Window(theURL,winName,features,width,height){

	var x = (screen.width  - width) / 2;
	var y = (screen.height - height) / 2;
	window.open(theURL,winName,features + ',left='+x+',top='+y);

}

function MM_openBrCalendarWindow(obj,theURL,winName,features){

	if(window.createPopup){

		var str               = calendar('0','','');
		infoBox               = window.createPopup();
		thisBody              = infoBox.document.body;
		thisBody.style.border = "1px solid #000000";
		thisBody.innerHTML    = str;
		thisBody.onclick      = fOnclick;
		infoBox.show(obj.style.pixelWidth/2 , obj.style.pixelHeight , 270 , 260 , obj);

	}else{

		var x = (screen.width  - 270) / 2;
		var y = (screen.height - 260) / 2;
		window.open(theURL,winName,features + ',left='+x+',top='+y);

	}

}

function fOnclick(){

	var oSrcElement = infoBox.document.parentWindow.event.srcElement;

	if (oSrcElement.tagName == 'A') {
		var href = oSrcElement.href;
		var last = href.split('\/');
		var date = last[last.length - 1];
		var ym   = date.split(':');
		var str  = calendar('1',ym[0],ym[1]);
		thisBody.innerHTML = str
	} else if (oSrcElement.tagName == 'SPAN') {
		if (oSrcElement.id == 'close') {
			infoBox.hide();
		} else {
			if(oSrcElement.id){
				var str = '�z����]���F' + oSrcElement.id +  unescape("%0D%0A") + '�z����]���ԑсF�i�j';
				document.calendar.delivery_day.value = str;
			}
		}
	}

}

function calendar(mode,yyyy,mm){

	var html = "";
	//////////////////////////////////////////////////
	// ��{�f�[�^������
	//////////////////////////////////////////////////
	monstr = new Array();
	yostr  = new Array();
	//////////////////////////////////////////////////
	// ��{�ݒ�
	//////////////////////////////////////////////////
	var ndstr               = "�E";			// ���t�Ȃ����ɏo������
	var dwidth              = 25;			// ���t�E�j�����̕�
	var dheight             = 25;			// ���t�E�j�����̍���
	var bgcolor             = "#666666";		// �S�̂̔w�i�F

	var closebgcolor        = "#FF3300";		// ����̔w�i�F

	var yyyymmbgcolor       = "#999999";		// �N���̔w�i�F
	var yyyymmfncolor       = "#FFFFFF";		// �N���̕����F
	var yyyymmfnsize        = "12pt";		// �N���̕����T�C�Y

	var nichiyoubgcolor     = "#FF9966";		// ���j�̔w�i�F
	var nichiyoufncolor     = "#FFFFFF";		// ���j�̕����F
	var nichiyoufnsize      = "12pt";		// ���j�̕����T�C�Y

	var doyoubgcolor        = "#DDDDDD";		// �y�j�̔w�i�F
	var doyoufncolor        = "#666666";		// �y�j�̕����F
	var doyoufnsize         = "12pt";		// �y�j�̕����T�C�Y

	var weekbgcolor         = "#EEEEEE";		// ���̑��j���̔w�i�F
	var weekfncolor         = "#666666";		// ���̑��j���̕����F
	var weekfnsize          = "12pt";		// ���̑��j���̕����T�C�Y

	var ndnichiyoubgcolor   = "#FFCC99";		// ���t�Ȃ����̔w�i�F�i���j�j
	var ndnichiyoufncolor   = "#FFCC99";		// ���t�Ȃ����̕����F�i���j�j
	var ndnichiyoufnsize    = "12pt";		// ���t�Ȃ����̕����T�C�Y�i���j�j

	var nddoyoubgcolor      = "#FFFFFF";		// ���t�Ȃ����̔w�i�F�i�y�j�j
	var nddoyoufncolor      = "#FFFFFF";		// ���t�Ȃ����̕����F�i�y�j�j
	var nddoyoufnsize       = "12pt";		// ���t�Ȃ����̕����T�C�Y�i�y�j�j

	var ndbgcolor           = "#FFFFFF";		// ���t�Ȃ����̔w�i�F�i�����j
	var ndfncolor           = "#FFFFFF";		// ���t�Ȃ����̕����F�i�����j
	var ndfnsize            = "12pt";		// ���t�Ȃ����̕����T�C�Y�i�����j

	var backnichiyoubgcolor = "#EFEFEF";		// �ߋ��̔w�i�F�i���j�E�x���j
	var backnichiyoufncolor = "#666666";		// �ߋ��̕����F�i���j�E�x���j
	var backnichiyoufnsize  = "12pt";		// �ߋ��̕����T�C�Y�i���j�E�x���j

	var backdoyoubgcolor    = "#EFEFEF";		// �ߋ��̔w�i�F�i�y�j�j
	var backdoyoufncolor    = "#666666";		// �ߋ��̕����F�i�y�j�j
	var backdoyoufnsize     = "12pt";		// �ߋ��̕����T�C�Y�i�y�j�j

	var backbgcolor         = "#EFEFEF";		// �ߋ��̔w�i�F�i�����j
	var backfncolor         = "#666666";		// �ߋ��̕����F�i�����j
	var backfnsize          = "12pt";		// �ߋ��̕����T�C�Y�i�����j

	var tdbgcolor           = "#FFCC33";		// �{���̔w�i�F
	var tdfncolor           = "#FFFFFF";		// �{���̕����F
	var tdfnsize            = "12pt";		// �{���̕����T�C�Y

	var donichiyoubgcolor   = "#FFCC99";		// �w�i�F�i���j�E�x���j
	var donichiyoufncolor   = "#666666";		// �����F�i���j�E�x���j
	var donichiyoufnsize    = "12pt";		// �����T�C�Y�i���j�E�x���j

	var dodoyoubgcolor      = "#FFFFFF";		// �w�i�F�i�y�j�j
	var dodoyoufncolor      = "#666666";		// �����F�i�y�j�j
	var dodoyoufnsize       = "12pt";		// �����T�C�Y�i�y�j�j

	var daybgcolor          = "#FFFFFF";		// �w�i�F�i�y�j�j
	var dayfncolor          = "#666666";		// �����F�i�y�j�j
	var dayfnsize           = "12pt";		// �����T�C�Y�i�y�j�j
	//////////////////////////////////////////////////
	// ���̕\������
	//////////////////////////////////////////////////
	monstr[0]  = "1";			// 1��
	monstr[1]  = "2";			// 2��
	monstr[2]  = "3";			// 3��
	monstr[3]  = "4";			// 4��
	monstr[4]  = "5";			// 5��
	monstr[5]  = "6";			// 6��
	monstr[6]  = "7";			// 7��
	monstr[7]  = "8";			// 8��
	monstr[8]  = "9";			// 9��
	monstr[9]  = "10";			// 10��
	monstr[10] = "11";			// 11��
	monstr[11] = "12";			// 12��
	//////////////////////////////////////////////////
	// �j���̕\������
	//////////////////////////////////////////////////
	yostr[0] = "��";			// ���j
	yostr[1] = "��";			// ���j
	yostr[2] = "��";			// �Ηj
	yostr[3] = "��";			// ���j
	yostr[4] = "��";			// �ؗj
	yostr[5] = "��";			// ���j
	yostr[6] = "�y";			// �y�j
	//////////////////////////////////////////////////
	// �p�����[�^�Z�b�g
	//////////////////////////////////////////////////
	var test      = mode;			// 1:testmode on
	var testyear  = yyyy;			// year for test
	var testmonth = mm;			// month for test
	var testday   = '';			// day for test
	//////////////////////////////////////////////////
	// �{���f�[�^�擾
	//////////////////////////////////////////////////
	var nowdate  = new Date();
	var nowyear  = nowdate.getFullYear();
	var nowmonth = nowdate.getMonth() + 1;
	var nowtoday = nowdate.getDate();
	//////////////////////////////////////////////////
	// �ŏI���Z�b�g
	//////////////////////////////////////////////////
	maxday   = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
	//////////////////////////////////////////////////
	// �p�����[�^������t�Z�b�g
	//////////////////////////////////////////////////
	var date = new Date();
	if (test == 1) {
		date.setYear(testyear);
		date.setMonth(testmonth);
		date.setDate(testday);
	}
	var year  = date.getFullYear();
	var month = date.getMonth() + 1;
	var today = date.getDate();
	if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
		maxday[1]++;			// �[�N�v�Z
	}
	date.setDate(1);
	var yo1    = date.getDay();
	//////////////////////////////////////////////////
	// �e�\���f�[�^������
	//////////////////////////////////////////////////
	var flag   = 0;
	var daycnt = 1;
	var moncnt = 0;
	var yasumi, syuku, furi;
	//////////////////////////////////////////////////
	// �y�[�W���O���`��
	//////////////////////////////////////////////////
	var lastyyyy = 0;
	var lastmm   = 0;
	var nextyyyy = 0;
	var nextmm   = 0;
	if(monstr[month-1] == '1'){
		lastyyyy = year - 1;
		lastmm   = 12;
		nextyyyy = year;
		nextmm   = parseInt(monstr[month-1]) + 1;
	}else if(monstr[month-1] == '12'){
		lastyyyy = year;
		lastmm   = parseInt(monstr[month-1]) - 1;
		nextyyyy = year + 1;
		nextmm   = 1;
	}else{
		lastyyyy = year;
		lastmm   = parseInt(monstr[month-1]) - 1;
		nextyyyy = year;
		nextmm   = parseInt(monstr[month-1]) + 1;
	}
	//////////////////////////////////////////////////
	// �J�����_�[�`��
	//////////////////////////////////////////////////
	html += '<br>\n';
	html += '<table summary="0" border="0" bgcolor="' + bgcolor + '" cellpadding="1" cellspacing="1" align="center">\n';
	html += '<tr>\n';
	html += '<td align="center" bgcolor="' + yyyymmbgcolor + '" height="' + dheight + '"><b><a href="' + lastyyyy + ':' + lastmm + '" style="color:' + yyyymmfncolor + ';font-size:' + yyyymmfnsize + ';text-decoration:none;">&lt;</a></b></td>\n';
	html += '<td align="center" bgcolor="' + yyyymmbgcolor + '" colspan="4" height="' + dheight + '"><b><span style="color:' + yyyymmfncolor + ';font-size:' + yyyymmfnsize + ';">' + year + '�N' + monstr[month-1] + '��</span></b></td>\n';
	html += '<td align="center" bgcolor="' + yyyymmbgcolor + '" height="' + dheight + '"><b><a href="' + nextyyyy + ':' + nextmm + '" style="color:' + yyyymmfncolor + ';font-size:' + yyyymmfnsize + ';text-decoration:none;">&gt;</a></b></td>\n';
	html += '<td align="center" bgcolor="' + closebgcolor + '" width="' + dwidth + '" height="' + dheight + '"><b><span style="color:' + yyyymmfncolor + ';font-size:' + yyyymmfnsize + ';cursor:pointer;" id="close">�~</span></b></td>\n';
	html += '</tr>\n';
	//////////////////////////////////////////////////
	// �j����
	//////////////////////////////////////////////////
	html += '<tr>\n';

	for (var yo = 0; yo < 7; yo++) {
		if (yo == 0) {
			html += '<td align="center" bgcolor="' + nichiyoubgcolor + '" width="' + dwidth + '" height="' + dheight + '"><span style="color:' + nichiyoufncolor + ';font-size:' + nichiyoufnsize + ';">' + yostr[yo] + '</span></td>\n';
		} else if (yo == 6) {
			html += '<td align="center" bgcolor="' + doyoubgcolor + '" width="' + dwidth + '" height="' + dheight + '"><span style="color:' + doyoufncolor + ';font-size:' + doyoufnsize + ';">' + yostr[yo] + '</span></td>\n';
		} else {
			html += '<td align="center" bgcolor="' + weekbgcolor + '" width="' + dwidth + '" height="' + dheight + '"><span style="color:' + weekfncolor + ';font-size:' + weekfnsize + ';">' + yostr[yo] + '</span></td>\n';
		}
	}

	html += '</tr>\n';
	//////////////////////////////////////////////////
	// ���t��
	//////////////////////////////////////////////////
	while (flag < 2) {

		html += '<tr>\n';

		for (var yo = 0; yo < 7; yo++) {

			html += '<td width="' + dwidth + '" height="' + dheight + '" align="center"';

			if (flag == 0 && yo1 == yo) {
				flag = 1;									// 1��
			}

			if (flag == 1) {									// ���t����

				//////////////////////////////////////////////////
				// �x�݁E�j���t���O������
				//////////////////////////////////////////////////
				yasumi = 0;
				syuku  = 0;
				//////////////////////////////////////////////////
				// ���j�Ɋւ��鏈�� (Happy Monday�ƐU�֋x��)
				//////////////////////////////////////////////////
				if (yo == 1) {
					if (furi == 1) {
						yasumi = 1;
						furi   = 0;
					}
					if (++moncnt == 2) {							// ��2���j
						if (month == 1)  { syuku = 1; }					// 1�� ���l�̓�
						if (month == 10) { syuku = 1; }					// 10�� �̈�̓�
					}
					if (moncnt == 3) {							// ��3���j
						if (year >= 2003 && month == 7) { syuku = 1; }			// 7�� �C�̓� (2003�`)
						if (year >= 2003 && month == 9) { syuku = 1; }			// 9�� �h�V�̓� (2003�`)
					}
				}
				//////////////////////////////////////////////////
				// Happy Monday�ȊO�̏j���Ɋւ��鏈��
				//////////////////////////////////////////////////
				if (month == 1 && daycnt == 1)  { syuku = 1; }					// 1�� 1�� ����
				if (month == 2 && daycnt == 11) { syuku = 1; }					// 2��11�� �����L�O�̓�
				if (month == 3) {
					if (daycnt == Math.floor(20.8431+0.242194*(year-1980))-Math.floor((year-1980)/4)) {
						syuku = 1;							// �t���̓�
					}
				}
				if (month == 4 && daycnt == 29) { syuku = 1; }					// 4��29�� �݂ǂ�̓�
				if (month == 5 && daycnt == 3)  { syuku = 1; }					// 5�� 3�� ���@�L�O��
				if (month == 5 && daycnt == 4)  { syuku = 1; }					// 5�� 4�� �����̋x��
				if (month == 5 && daycnt == 5)  { syuku = 1; }					// 5�� 5�� ���ǂ��̓�
				if (month == 9) {
					if (daycnt == Math.floor(23.2488+0.242194*(year-1980))-Math.floor((year-1980)/4)) {
						syuku = 1;							// �H���̓�
					}
				}
				if (month == 11 && daycnt == 3)  { syuku = 1; }					// 11�� 3�� �����̓�
				if (month == 11 && daycnt == 23) { syuku = 1; }					// 11��23�� �ΘJ���ӂ̓�
				if (month == 12 && daycnt == 23) { syuku = 1; }					// 12��23�� �V�c�a����
				if (year < 2003 && month == 7 && daycnt == 20) { syuku = 1; }			// 7��20�� �C�̓� (�`2002)
				if (year < 2003 && month == 9 && daycnt == 15) { syuku = 1; }			// 9��15�� �h�V�̓� (�`2002)
				if (syuku == 1) { yasumi = 1; }
				if (yo == 0) {
					yasumi = 1;
					if (syuku == 1) { furi = 1; }
				}
				//////////////////////////////////////////////////
				// ��r�ϐ�������
				//////////////////////////////////////////////////
				var mm1 = 0;
				if(mm < 10){
					mm1 = "0" + mm;
				}else{
					mm1 = mm;
				}
				var mm2 = 0;
				if(nowmonth < 10){
					mm2 = "0" + nowmonth;
				}else{
					mm2 = nowmonth;
				}
				var day1 = 0;
				if(daycnt < 10){
					day1 = "0" + daycnt;
				}else{
					day1 = daycnt;
				}
				var day2 = 0;
				if(nowtoday < 10){
					day2 = "0" + nowtoday;
				}else{
					day2 = nowtoday;
				}
				var yyyymmdd1 = yyyy    + "" + mm1 + "" + day1;
				var yyyymmdd2 = nowyear + "" + mm2 + "" + day2;
				//////////////////////////////////////////////////
				// �w�i�F�E�����F
				//////////////////////////////////////////////////
				if((test == 0 && daycnt < today) || (test == 1 && parseInt(yyyymmdd1) < parseInt(yyyymmdd2))){

					if (yasumi == 1) {																// �ߋ�(���j�E�x��)
						html += 'bgcolor="' + backnichiyoubgcolor + '">';
						html += '<span style="color:' + backnichiyoufncolor + ';font-size:' + backnichiyoufnsize + ';">' + daycnt + '</span>';
					} else {
						if (yo == 6) {																// �ߋ�(�y�j)
							html += 'bgcolor="' + backdoyoubgcolor + '">';
							html += '<span style="color:' + backdoyoufncolor + ';font-size:' + backdoyoufnsize + ';">' + daycnt + '</span>';
						} else {																// �ߋ�(����)
							html += 'bgcolor="' + backbgcolor + '">';
							html += '<span style="color:' + backfncolor + ';font-size:' + backfnsize + ';">' + daycnt + '</span>';
						}
					}

				}else{

					if (yasumi == 1) {
						if ((test == 0 && daycnt == today) || (test == 1 && yyyy == nowyear && mm == nowmonth && daycnt == nowtoday)) {				// �{��
							html += 'bgcolor="' + tdbgcolor + '">';
							html += '<span style="color:' + tdfncolor + ';font-size:' + tdfnsize + ';">' + daycnt + '</span>';
						} else {																// ���j�E�x��
							html += 'bgcolor="' + donichiyoubgcolor + '">';
							html += '<span style="color:' + donichiyoufncolor + ';font-size:' + donichiyoufnsize + ';"><span id="' + year + '�N' + monstr[month-1] + '��' + daycnt + '��" style="cursor:pointer">' + daycnt + '</span></span>';
						}
					} else {
						if (yo == 6) {
							if ((test == 0 && daycnt == today) || (test == 1 && yyyy == nowyear && mm == nowmonth && daycnt == nowtoday)) {			// �{��
								html += 'bgcolor="' + tdbgcolor + '">';
								html += '<span style="color:' + tdfncolor + ';font-size:' + tdfnsize + ';">' + daycnt + '</span>';
							} else {															// �y�j
								html += 'bgcolor="' + dodoyoubgcolor + '">';
								html += '<span style="color:' + dodoyoufncolor + ';font-size:' + dodoyoufnsize + ';"><span id="' + year + '�N' + monstr[month-1] + '��' + daycnt + '��" style="cursor:pointer">' + daycnt + '</span></span>';
							}
						} else {
							if ((test == 0 && daycnt == today) || (test == 1 && yyyy == nowyear && mm == nowmonth && daycnt == nowtoday)) {			// �{��
								html += 'bgcolor="' + tdbgcolor + '">';
								html += '<span style="color:' + tdfncolor + ';font-size:' + tdfnsize + ';">' + daycnt + '</span>';
							} else {
								html += 'bgcolor="' + daybgcolor + '">';
								html += '<span style="color:' + dayfncolor + ';font-size:' + dayfnsize + ';"><span id="' + year + '�N' + monstr[month-1] + '��' + daycnt + '��" style="cursor:pointer">' + daycnt + '</span></span>';
							}
						}
					}
				}
				if (++daycnt > maxday[month - 1]) {
					flag = 2;								// �ŏI��
				}
				//////////////////////////////////////////////////
			} else {										// ���t�Ȃ�

				if (yo == 0) {

					html += 'bgcolor="' + ndnichiyoubgcolor + '">';
					html += '<span style="color:' + ndnichiyoufncolor + ';font-size:' + ndnichiyoufnsize + ';">' + ndstr + '</span>';

				} else if (yo == 6) {

					html += 'bgcolor="' + nddoyoubgcolor + '">';
					html += '<span style="color:' + nddoyoufncolor + ';font-size:' + nddoyoufnsize + ';">' + ndstr + '</span>';

				} else {

					html += 'bgcolor="' + ndbgcolor + '">';
					html += '<span style="color:' + ndfncolor + ';font-size:' + ndfnsize + ';">' + ndstr + '</span>';

				}

			}
			html += '</td>\n';
		}
		html += '</tr>\n';
	}
	html += '</table>\n';

	return html;

}

function CloseWin(){
	window.close();
}

function MM_goToURL(){ //v3.0
	var i,args = MM_goToURL.arguments;
	document.MM_returnValue = false;
	for(i = 0 ; i < (args.length-1) ; i += 2) eval(args[i]+".location = '"+args[i+1]+"'");
}

function changeButton(type){
	if((document.getElementById('step1')) && (document.getElementById('step2'))){
		if(type == '���i�z���m�F��ʂɐi��'){
			document.getElementById('step1').style.display = 'block';
			document.getElementById('step2').style.display = 'none';
		}else if(type == '�z������͉�ʂɐi��'){
			document.getElementById('step1').style.display = 'none';
			document.getElementById('step2').style.display = 'block';
		}
	}
	document.user_data.submit.value = type;
}

function changeButtonCheck(){

	var sameData  = user_data.address[0].checked;
	var otherData = user_data.address[1].checked;
	var type      = "";

	if(sameData == true){
		type = "���i�z���m�F��ʂɐi��";
	}else if(otherData == true){
		type = "�z������͉�ʂɐi��";
	}

	if((document.getElementById('step1')) && (document.getElementById('step2'))){
		if(type == '���i�z���m�F��ʂɐi��'){
			document.getElementById('step1').style.display = 'block';
			document.getElementById('step2').style.display = 'none';
		}else if(type == '�z������͉�ʂɐi��'){
			document.getElementById('step1').style.display = 'none';
			document.getElementById('step2').style.display = 'block';
		}
	}
	document.user_data.submit.value = type;
}

function changeButtonPayment(type){
	if((document.getElementById('step1')) && (document.getElementById('step2'))){
		if(type == 'ZEUS����' || type == 'NICOS����' || type == 'NICOS���C�g����'){
			document.getElementById('step1').style.display = 'none';
			document.getElementById('step2').style.display = 'block';
		}else{
			document.getElementById('step1').style.display = 'block';
			document.getElementById('step2').style.display = 'none';
		}
	}
}

function viewButton(){
	document.settlement.go.style.display = 'block'
}

function allReplace(text,sText,rText){

	// �������[�v�B
	while (true) {

		dummy = text;

		// �u���B
		text  = dummy.replace(sText, rText);

		if(text == dummy){
			// �u�����Ă��ω����Ȃ���΃��[�v�𔲂���B
			break;
		}

	}

	return text;

}

var plugin = 0;
function checkPlugin(version,swfName,swfWidth,swfHeight){

	var swfTag = '';

	if (FlashPlayer) {

		if (swfWidth.length != 0 && swfHeight.length != 0) {

			swfTag = '<embed src="' + swfName + '" type="application/x-shockwave-flash" width="' + swfWidth + '" height="' + swfHeight + '"></embed><noembed>���g���̃u���E�U���Â����߁A�Đ��o���܂���B</noembed>';

		} else if (swfWidth.length == 0 && swfHeight.length != 0) {

			swfTag = '<embed src="' + swfName + '" type="application/x-shockwave-flash" height="' + swfHeight + '"></embed><noembed>���g���̃u���E�U���Â����߁A�Đ��o���܂���B</noembed>';

		} else if (swfWidth.length != 0 && swfHeight.length == 0) {

			swfTag = '<embed src="' + swfName + '" type="application/x-shockwave-flash" width="' + swfWidth + '"></embed><noembed>���g���̃u���E�U���Â����߁A�Đ��o���܂���B</noembed>';

		} else if (swfWidth.length == 0 && swfHeight.length == 0) {

			swfTag = '<embed src="' + swfName + '" type="application/x-shockwave-flash"></embed><noembed>���g���̃u���E�U���Â����߁A�Đ��o���܂���B</noembed>';

		}

	} else {

		swfTag = '<font size="-1" color="red">Flash�v���O�C�����Ȃ��̂ŁA<br>�Đ��o���܂���B<br><a href="http://www.adobe.com/jp/downloads/" target="Flash">�_�E�����[�h</a></font>';

	}

	document.write(swfTag);

//	plugin = (navigator.mimeTypes && navigator.mimeTypes["application/x-shockwave-flash"]) ? navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin : 0;
//	if(plugin){
//		plugin = parseInt(plugin.description.substring(plugin.description.indexOf(".")-1)) >= 6;
//	}else if(navigator.userAgent && navigator.userAgent.indexOf("MSIE")>=0 && (navigator.userAgent.indexOf("Windows 95")>=0 || navigator.userAgent.indexOf("Windows 98")>=0 || navigator.userAgent.indexOf("Windows NT")>=0)){
//		document.write('<scr' + 'ipt language=VBScript'+'> \n');
//		document.write('on error resume next \n');
//		document.write('plugin = ( IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.6")))\n');
//		document.write('if ( plugin <= 0 ) then plugin = ( IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.7")))\n');
//		document.write('if ( plugin <= 0 ) then plugin = ( IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.8")))\n');
//		document.write('if ( plugin <= 0 ) then plugin = ( IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.9")))\n');
//		document.write('<'+'/scr' + 'ipt'+'> \n');
//	}
//	if(plugin){
//		var swfTag;
//		if(width.length != 0 && height.length != 0){
//			swfTag = '<embed src="'+swfName+'" width='+width+' height='+height+'></embed>';
//		}else if(width.length == 0 && height.length != 0){
//			swfTag = '<embed src="'+swfName+'" height='+height+'></embed>';
//		}else if(width.length != 0 && height.length == 0){
//			swfTag = '<embed src="'+swfName+'" width='+width+'></embed>';
//		}else if(width.length == 0 && height.length == 0){
//			swfTag = '<embed src="'+swfName+'"></embed>';
//		}
//		document.write(swfTag);
//	}else{
//		document.write("<font size=\"-1\" color=\"red\">Flash�v���O�C�������݂��Ȃ��ׁAFlash��\�����邱�Ƃ��o���܂���B</font>");
//	}

}

function selectData(name_data,type,cmt9){

	if(isMSIE){

		//////////////////////////////////////////////////
		// ��r�ϐ�������
		//////////////////////////////////////////////////
		var flg = 0;
		//////////////////////////////////////////////////
		// ���i�N�b�L�[�擾
		//////////////////////////////////////////////////
		var theData   = "";
		var theName   = "COMMODITY=";
		var theCookie = document.cookie+";";
		var start     = theCookie.indexOf(theName);

		if (start != -1){
			var end = theCookie.indexOf(";",start);
			theData = unescape(theCookie.substring(start+theName.length,end));
		}

		var data = theData.split(",");
		//////////////////////////////////////////////////
		// �J�e�S���[ID
		//////////////////////////////////////////////////
		var category = document.getElementById(name_data).category.value;
		//////////////////////////////////////////////////
		// �y�[�WID
		//////////////////////////////////////////////////
		var page = document.getElementById(name_data).page.value;
		//////////////////////////////////////////////////
		// ���iID
		//////////////////////////////////////////////////
		var id = document.getElementById(name_data).id.value;
		//////////////////////////////////////////////////
		// �I���x1
		//////////////////////////////////////////////////
		// ���ڔԍ�
		var data11 = '';
		if(document.getElementById(name_data).unit_price 
		&& document.getElementById(name_data).unit_price.options){
			data11 = document.getElementById(name_data).unit_price.selectedIndex;
		}else if(document.getElementById(name_data).unit_price_data){
			data11 = 0;
		}
		// ���ڃf�[�^
		var data12 = '';
		if(document.getElementById(name_data).unit_price 
		&& document.getElementById(name_data).unit_price.options){
			data12 = document.getElementById(name_data).unit_price.options[data11].text;
		}else if(document.getElementById(name_data).unit_price_data){
			data12 = document.getElementById(name_data).unit_price_data.value;
		}
		// ���ڃf�[�^�𔼊p�X�y�[�X�ŕ���
		var data130 = '';
		var data131 = '';
		if(data12.search(/ /i) != -1){
			var data13 = data12.split(" ");
			data130    = data13[0];//���z���
			data131    = data13[1];
		}else{
			data130 = data12;
		}
		// �J���}���폜
		data130  = allReplace(data130,"\,","");
		// �~���폜
		data130  = allReplace(data130,"�~","");
		//////////////////////////////////////////////////
		// �I���x2
		//////////////////////////////////////////////////
		// ���ڔԍ�
		var data21 = '';
		if(document.getElementById(name_data).other1 
		&& document.getElementById(name_data).other1.options){
			data21 = document.getElementById(name_data).other1.selectedIndex;
		}else if(document.getElementById(name_data).other1_data){
			data21 = 0;
		}
		// ���ڃf�[�^
		var data22 = '';
		if(document.getElementById(name_data).other1 
		&& document.getElementById(name_data).other1.options){
			data22 = document.getElementById(name_data).other1.options[data21].text;
		}else if(document.getElementById(name_data).other1_data){
			data22 = document.getElementById(name_data).other1_data.value;
		}
		//////////////////////////////////////////////////
		// �I���x3
		//////////////////////////////////////////////////
		// ���ڔԍ�
		var data31 = '';
		if(document.getElementById(name_data).other2 
		&& document.getElementById(name_data).other2.options){
			data31 = document.getElementById(name_data).other2.selectedIndex;
		}else if(document.getElementById(name_data).other2_data){
			data31 = 0;
		}
		// ���ڃf�[�^
		var data32 = '';
		if(document.getElementById(name_data).other2 
		&& document.getElementById(name_data).other2.options){
			data32 = document.getElementById(name_data).other2.options[data31].text;
		}else if(document.getElementById(name_data).other2_data){
			data32 = document.getElementById(name_data).other2_data.value;
		}
		//////////////////////////////////////////////////
		// �݌ɐ��擾
		//////////////////////////////////////////////////
		var param = data130 + ',' + data131 + ',' + data22 + ',' + data32;
		//////////////////////////////////////////////////
		// �݌ɐ�����
		//////////////////////////////////////////////////
		if(document.getElementById(name_data)(param)){

			//////////////////////////////////////////////////
			// ���i�N�b�L�[����
			// category:page:code:id:unit:unit_price:other1:other2
			//////////////////////////////////////////////////
			var param_data = document.getElementById(name_data)(param).value;

			if(param_data != ''){

				if(param_data <= 0){

					flg = 1;

				}else{

					if((data.length - 1) >= 1){

						data11 = data11 + 1;
						data21 = data21 + 1;
						data31 = data31 + 1;

						if(isNaN(data11)){
							data11 = 0;
						}

						if(isNaN(data21)){
							data21 = 0;
						}

						if(isNaN(data31)){
							data31 = 0;
						}

						for(var i = 0 ; i < data.length - 1 ; i++){

							var temp_data = data[i].split(":");

							if(temp_data[0] == category 
							&& temp_data[1] == page 
							&& temp_data[3] == id 
							&& temp_data[5] == data11 
							&& temp_data[6] == data21 
							&& temp_data[7] == data31){

								if(parseFloat(param_data) <= 0){

									flg = 1;

								}else{

									if(parseFloat(temp_data[4]) >= parseFloat(param_data)){

										flg = 1;

									}

								}

							}

						}

					}

				}

			}
			//////////////////////////////////////////////////
			// �{�^����ԕύX
			//////////////////////////////////////////////////
			var pageType = document.getElementById(name_data).pageType.value;

			if(pageType == 'shop1'){

				if(document.getElementById(name_data).submit.value){

					if(param_data == ""){

						if(flg == 0){
							var submit_data = document.getElementById(name_data).submit_data.value;
							document.getElementById(name_data).submit.disabled = false;
							document.getElementById(name_data).submit.value    = submit_data;
						}else{
							var zaiko_data = document.getElementById(name_data).zaiko_data.value;
							document.getElementById(name_data).submit.disabled = true;
							document.getElementById(name_data).submit.value    = zaiko_data;
						}

					}else if(param_data == 0){

						var zaiko_data = document.getElementById(name_data).zaiko_data.value;
						document.getElementById(name_data).submit.disabled = true;
						document.getElementById(name_data).submit.value    = zaiko_data;

					}else{

						if(flg == 0){
							var submit_data = document.getElementById(name_data).submit_data.value;
							document.getElementById(name_data).submit.disabled = false;
							document.getElementById(name_data).submit.value    = submit_data;
						}else{
							var zaiko_data = document.getElementById(name_data).zaiko_data.value;
							document.getElementById(name_data).submit.disabled = true;
							document.getElementById(name_data).submit.value    = zaiko_data;
						}

					}

				}

			}else if(pageType == 'shop2'){

				if(document.getElementById('data_submit')){

					if(param_data == ""){

						if(flg == 0){
							var submit_data = document.getElementById(name_data).submit_data.value;
							document.getElementById('data_submit').disabled = false;
							document.getElementById('data_submit').value    = submit_data;
						}else{
							var zaiko_data = document.getElementById(name_data).zaiko_data.value;
							document.getElementById('data_submit').disabled = true;
							document.getElementById('data_submit').value    = zaiko_data;
						}

					}else if(param_data == 0){

						var zaiko_data = document.getElementById(name_data).zaiko_data.value;
						document.getElementById('data_submit').disabled = true;
						document.getElementById('data_submit').value    = zaiko_data;

					}else{

						if(flg == 0){
							var submit_data = document.getElementById(name_data).submit_data.value;
							document.getElementById('data_submit').disabled = false;
							document.getElementById('data_submit').value    = submit_data;
						}else{
							var zaiko_data = document.getElementById(name_data).zaiko_data.value;
							document.getElementById('data_submit').disabled = true;
							document.getElementById('data_submit').value    = zaiko_data;
						}

					}

				}

			}

		}else{

			if(document.getElementById(name_data).pageType){

				var pageType = document.getElementById(name_data).pageType.value;

				if(pageType == 'shop1'){

					if(document.getElementById(name_data).submit.value){
						var submit_data = document.getElementById(name_data).submit_data.value;
						document.getElementById(name_data).submit.disabled = false;
						document.getElementById(name_data).submit.value    = submit_data;
					}

				}else if(pageType == 'shop2'){
					if(document.getElementById('data_submit')){
						var submit_data = document.getElementById(name_data).submit_data.value;
						document.getElementById('data_submit').disabled = false;
						document.getElementById('data_submit').value    = submit_data;
					}
				}

			}

		}
////////////////////////////////////////////////////////////////////////////////////////////////////

//IE�ȊO�̃u���E�U�̑Ή����[�`��  Firefox,Google Chrome,Opera

////////////////////////////////////////////////////////////////////////////////////////////////////
	}else if(isFF || isGC || isOP){

		//////////////////////////////////////////////////
		// ��r�ϐ�������
		//////////////////////////////////////////////////
		var flg = 0;
		//////////////////////////////////////////////////
		// ���i�N�b�L�[�擾
		//////////////////////////////////////////////////
		var theData   = "";
		var theName   = "COMMODITY=";
		var theCookie = document.cookie+";";
		var start     = theCookie.indexOf(theName);

		if (start != -1){
			var end = theCookie.indexOf(";",start);
			theData = unescape(theCookie.substring(start+theName.length,end));
		}

		var data = theData.split(",");
		//////////////////////////////////////////////////
		// �J�e�S���[ID
		//////////////////////////////////////////////////
		var category = document.forms[name_data].category.value;
		//////////////////////////////////////////////////
		// �y�[�WID
		//////////////////////////////////////////////////
		var page = document.forms[name_data].page.value;
		//////////////////////////////////////////////////
		// ���iID
		//////////////////////////////////////////////////
		var id = document.forms[name_data].id.value;
		//////////////////////////////////////////////////
		// �I���x1
		//////////////////////////////////////////////////
		// ���ڔԍ�
		var data11 = '';
		if(document.forms[name_data].unit_price 
		&& document.forms[name_data].unit_price.options){
			data11 = document.forms[name_data].unit_price.selectedIndex;
		}else if(document.forms[name_data].unit_price_data){
			data11 = 0;
		}
		// ���ڃf�[�^
		var data12 = '';
		if(document.forms[name_data].unit_price 
		&& document.forms[name_data].unit_price.options){
			data12 = document.forms[name_data].unit_price.options[data11].text;
		}else if(document.forms[name_data].unit_price_data){
			data12 = document.forms[name_data].unit_price_data.value;
		}
		// ���ڃf�[�^�𔼊p�X�y�[�X�ŕ���
		var data130 = '';
		var data131 = '';
		if(data12.search(/ /i) != -1){
			var data13 = data12.split(" ");
			data130    = data13[0];//���z����
			data131    = data13[1];
		}else{
			data130 = data12;
		}
		// �J���}���폜
		data130  = allReplace(data130,"\,","");
		// �~���폜
		data130  = allReplace(data130,"�~","");
		//////////////////////////////////////////////////
		// �I���x2
		//////////////////////////////////////////////////
		// ���ڔԍ�
		var data21 = '';
		if(document.forms[name_data].other1 
		&& document.forms[name_data].other1.options){
			data21 = document.forms[name_data].other1.selectedIndex;
		}else if(document.forms[name_data].other1_data){
			data21 = 0;
		}
		// ���ڃf�[�^
		var data22 = '';
		if(document.forms[name_data].other1 
		&& document.forms[name_data].other1.options){
			data22 = document.forms[name_data].other1.options[data21].text;
		}else if(document.forms[name_data].other1_data){
			data22 = document.forms[name_data].other1_data.value;
		}
		//////////////////////////////////////////////////
		// �I���x3
		//////////////////////////////////////////////////
		// ���ڔԍ�
		var data31 = '';
		if(document.forms[name_data].other2 
		&& document.forms[name_data].other2.options){
			data31 = document.forms[name_data].other2.selectedIndex;
		}else if(document.forms[name_data].other2_data){
			data31 = 0;
		}
		// ���ڃf�[�^
		var data32 = '';
		if(document.forms[name_data].other2 
		&& document.forms[name_data].other2.options){
			data32 = document.forms[name_data].other2.options[data31].text;
		}else if(document.forms[name_data].other2_data){
			data32 = document.forms[name_data].other2_data.value;
		}
		//////////////////////////////////////////////////
		// �݌ɐ��擾
		//////////////////////////////////////////////////
		var param = data130 + ',' + data131 + ',' + data22 + ',' + data32;
		var temp_prm = param;
		//////////////////////////////////////////////////
		// �݌ɐ�����
		//////////////////////////////////////////////////
		var hidden_data = '';
		hidden_data = document.forms[name_data];

		var param_flg = 0;

		var param_data = '';

		for (var i = 0 ; i < hidden_data.length ; i++){

			if(hidden_data[i].name == param){

				param_flg = 1;

				param_data = hidden_data[i].value;

			}

		}

		if(param_flg == 1){

			//////////////////////////////////////////////////
			// ���i�N�b�L�[����
			// category:page:code:id:unit:unit_price:other1:other2
			//////////////////////////////////////////////////
			if(param_data != ''){

				if(param_data <= 0){

					flg = 1;

				}else{

					if((data.length - 1) >= 1){

						data11 = data11 + 1;
						data21 = data21 + 1;
						data31 = data31 + 1;

						if(isNaN(data11)){
							data11 = 0;
						}

						if(isNaN(data21)){
							data21 = 0;
						}

						if(isNaN(data31)){
							data31 = 0;
						}

						for(var i = 0 ; i < data.length - 1 ; i++){

							var temp_data = data[i].split(":");

							if(temp_data[0] == category 
							&& temp_data[1] == page 
							&& temp_data[3] == id 
							&& temp_data[5] == data11 
							&& temp_data[6] == data21 
							&& temp_data[7] == data31){

								if(parseFloat(param_data) <= 0){

									flg = 1;

								}else{

									if(parseFloat(temp_data[4]) >= parseFloat(param_data)){

										flg = 1;

									}

								}

							}

						}

					}

				}

			}
			//////////////////////////////////////////////////
			// �{�^����ԕύX
			//////////////////////////////////////////////////
			var pageType = document.forms[name_data].pageType.value;
			
			var submit_data = '';
			var zaiko_data =  '';

			if(pageType == 'shop1'){

				if(document.forms[name_data].submit.value){

					if(param_data == ""){//�f�[�^����Ȃ�

						if(flg == 0){//�f�[�^����Ȃ�
							submit_data = document.forms[name_data].submit_data.value;
							document.forms[name_data].submit.disabled = false; //disable���L�����Z��������
							document.forms[name_data].submit.value    = submit_data;
						}else{
							zaiko_data = document.forms[name_data].zaiko_data.value;
							document.forms[name_data].submit.disabled = true; //disable�����̂܂ܐ�����
							document.forms[name_data].submit.value    = zaiko_data;
						}

					}else if(param_data == 0){//�݌ɂ��������

						zaiko_data = document.forms[name_data].zaiko_data.value;
						document.forms[name_data].submit.disabled = true;//disable�����̂܂ܐ�����
						document.forms[name_data].submit.value    = zaiko_data;

					}else{//�݌ɂ������

						if(flg == 0){
							submit_data = document.forms[name_data].submit_data.value;
							document.forms[name_data].submit.disabled = false; //disable���L�����Z��������
							document.forms[name_data].submit.value    = submit_data;
						}else{
							zaiko_data = document.forms[name_data].zaiko_data.value;
							document.forms[name_data].submit.disabled = true; //disable�����̂܂ܐ�����
							document.forms[name_data].submit.value    = zaiko_data;
						}

					}
						flg = 0;
				}

			}else if(pageType == 'shop2'){

				if(document.getElementById('data_submit')){

					if(param_data == ""){

						if(flg == 0){
							submit_data = document.forms[name_data].submit_data.value;
							document.getElementById('data_submit').disabled = false;
							document.getElementById('data_submit').value    = submit_data;
						}else{
							zaiko_data = document.forms[name_data].zaiko_data.value;
							document.getElementById('data_submit').disabled = true;
							document.getElementById('data_submit').value    = zaiko_data;
						}

					}else if(param_data == 0){

						zaiko_data = document.forms[name_data].zaiko_data.value;
						document.getElementById('data_submit').disabled = true;
						document.getElementById('data_submit').value    = zaiko_data;

					}else{

						if(flg == 0){
							submit_data = document.forms[name_data].submit_data.value;
							document.getElementById('data_submit').disabled = false;
							document.getElementById('data_submit').value    = submit_data;
						}else{
							zaiko_data = document.forms[name_data].zaiko_data.value;
							document.getElementById('data_submit').disabled = true;
							document.getElementById('data_submit').value    = zaiko_data;
						}

					}

				}

			}

		}else{

			if(document.forms[name_data].pageType){

				var pageType = document.forms[name_data].pageType.value;
				var submit_data = '';
				var zaiko_data =  '';

				if(pageType == 'shop1'){

					if(document.forms[name_data].submit.value){
						submit_data = document.forms[name_data].submit_data.value;
						document.forms[name_data].submit.disabled = false;
						document.forms[name_data].submit.value    = submit_data;
					}

				}else if(pageType == 'shop2'){
					if(document.getElementById('data_submit')){
						submit_data = document.forms[name_data].submit_data.value;
						document.getElementById('data_submit').disabled = false;
						document.getElementById('data_submit').value    = submit_data;
					}
				}

			}

		}


////////////////////////////////////////////////////////////////////////////////////////////////////
//Safari�Ƃ��̑��ΏۊO�̃u���E�U
////////////////////////////////////////////////////////////////////////////////////////////////////
	}else{

		if(document.getElementById(name_data).pageType){

			var pageType = document.getElementById(name_data).pageType.value;
			var submit_data = '';
			var zaiko_data =  '';

			if(pageType == 'shop1'){

				if(document.getElementById(name_data).submit.value){
					submit_data = document.getElementById(name_data).submit_data.value;
					document.getElementById(name_data).submit.disabled = false;
					document.getElementById(name_data).submit.value    = submit_data;
				}

			}else if(pageType == 'shop2'){
				if(document.getElementById('data_submit')){
					submit_data = document.getElementById(name_data).submit_data.value;
					document.getElementById('data_submit').disabled = false;
					document.getElementById('data_submit').value    = submit_data;
				}
			}

		}

	}

}
////////////////////////////////////////////////////////////////////////////////////////////////////
//�u���E�U�ʃ{�^������֘A�����܂�
////////////////////////////////////////////////////////////////////////////////////////////////////
window.onload = init;

function init(){

	var forms_length = document.forms.length;

	for(no = 0 ; no <= forms_length ; no++){

		if(document.forms[no]){

			if((document.forms[no].pageType) && (document.forms[no].cart) && (document.forms[no].submit)){

				var pageType = document.forms[no].pageType.value;
				var cart     = document.forms[no].cart.value;

				if((pageType == 'shop1') && (cart == 'select')){

					selectData(document.forms[no].name,pageType);

				}else if((pageType == 'shop2') && (cart == 'select')){

					selectData('item_1',pageType);

				}

			}

		}

	}

	if(isMSIE){

		if(document.getElementById('page_end') && document.getElementById('page_end').address_go){

			var cName = "COMMODITY="; // �폜����N�b�L�[��
			var dTime = new Date();
			dTime.setYear(dTime.getYear() - 1);
			document.cookie = cName + ";expires=" + dTime.toGMTString();

			var address_go = document.getElementById('page_end').address_go.value;

			if(address_go == 'other'){

				if(document.getElementById('page_end').address_save_go){

					var address_save_go = document.getElementById('page_end').address_save_go.value;

					//�z�����ۑ����Ȃ��ꍇ�B
					if(address_save_go == ''){

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY1=;";

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY2=;";

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY3=;";

					}else{

						var item1 = 'DELIVERY1';
						var item2 = 'DELIVERY2';
						var item3 = 'DELIVERY3';

						var d        = new Date();
						var previsit = d.toGMTString();
						d.setTime(d.getTime() + 365*24*60*60*1000);
						var expire   = d.toGMTString();

						var arr = document.cookie.split(";");

						for(var i = 0; i < arr.length; i++) {

							var index = arr[i].indexOf("=");

							if(arr[i].substring(0, index) == item1 || arr[i].substring(0, index) == " " + item1){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY1=" + temp + "; expires=" + expire + ";";

							}else if(arr[i].substring(0, index) == item2 || arr[i].substring(0, index) == " " + item2){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY2=" + temp + "; expires=" + expire + ";";

							}else if(arr[i].substring(0, index) == item3 || arr[i].substring(0, index) == " " + item3){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY2=" + temp + "; expires=" + expire + ";";

							}

						}

					}

				}

			}

			if(!window.opener || window.opener.closed){ 

			}else{

				var parent_url = document.parentWindow.location;

				window.opener.location.href = parent_url + '?view=payment_nicos';

			}

		}

	}else if(isFF || isOP || isGC){

		if(document.forms['page_end'] && document.forms['page_end'].address_go){

			var cName = "COMMODITY="; // �폜����N�b�L�[��
			var dTime = new Date();
			dTime.setYear(dTime.getYear() - 1);
			document.cookie = cName + ";expires=" + dTime.toGMTString();

			var address_go = document.forms['page_end'].address_go.value;

			if(address_go == 'other'){

				if(document.forms['page_end'].address_save_go){

					var address_save_go = document.forms['page_end'].address_save_go.value;

					//�z�����ۑ����Ȃ��ꍇ�B
					if(address_save_go == ''){

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY1=;";

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY2=;";

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY3=;";

					}else{

						var item1 = 'DELIVERY1';
						var item2 = 'DELIVERY2';
						var item3 = 'DELIVERY3';

						var d        = new Date();
						var previsit = d.toGMTString();
						d.setTime(d.getTime() + 365*24*60*60*1000);
						var expire   = d.toGMTString();

						var arr = document.cookie.split(";");

						for(var i = 0; i < arr.length; i++) {

							var index = arr[i].indexOf("=");

							if(arr[i].substring(0, index) == item1 || arr[i].substring(0, index) == " " + item1){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY1=" + temp + "; expires=" + expire + ";";

							}else if(arr[i].substring(0, index) == item2 || arr[i].substring(0, index) == " " + item2){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY2=" + temp + "; expires=" + expire + ";";

							}else if(arr[i].substring(0, index) == item3 || arr[i].substring(0, index) == " " + item3){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY2=" + temp + "; expires=" + expire + ";";

							}

						}

					}

				}

			}

			if(!window.opener || window.opener.closed){ 

			}else{

				var parent_url = parent.location.href;

				window.opener.location.href = parent_url + '?view=payment_nicos';

			}

		}

	}else{

		if(document.getElementById('page_end') && document.getElementById('page_end').address_go){

			var cName = "COMMODITY="; // �폜����N�b�L�[��
			var dTime = new Date();
			dTime.setYear(dTime.getYear() - 1);
			document.cookie = cName + ";expires=" + dTime.toGMTString();

			var address_go = document.getElementById('page_end').address_go.value;

			if(address_go == 'other'){

				if(document.getElementById('page_end').address_save_go){

					var address_save_go = document.getElementById('page_end').address_save_go.value;

					//�z�����ۑ����Ȃ��ꍇ�B
					if(address_save_go == ''){

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY1=;";

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY2=;";

						//�N�b�L�[��ݒ�B
						document.cookie = "DELIVERY3=;";

					}else{

						var item1 = 'DELIVERY1';
						var item2 = 'DELIVERY2';
						var item3 = 'DELIVERY3';

						var d        = new Date();
						var previsit = d.toGMTString();
						d.setTime(d.getTime() + 365*24*60*60*1000);
						var expire   = d.toGMTString();

						var arr = document.cookie.split(";");

						for(var i = 0; i < arr.length; i++) {

							var index = arr[i].indexOf("=");

							if(arr[i].substring(0, index) == item1 || arr[i].substring(0, index) == " " + item1){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY1=" + temp + "; expires=" + expire + ";";

							}else if(arr[i].substring(0, index) == item2 || arr[i].substring(0, index) == " " + item2){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY2=" + temp + "; expires=" + expire + ";";

							}else if(arr[i].substring(0, index) == item3 || arr[i].substring(0, index) == " " + item3){

								var temp = arr[i].substring(index + 1);

								temp = allReplace(temp,"&quot;","&quot");
								temp = allReplace(temp,"&lt;","&lt");
								temp = allReplace(temp,"&gt;","&gt");
								temp = allReplace(temp,"&#44;","&#44");

								//address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
								document.cookie = "DELIVERY2=" + temp + "; expires=" + expire + ";";

							}

						}

					}

				}

			}

			if(!window.opener || window.opener.closed){ 

			}else{

				var parent_url = document.parentWindow.location;

				window.opener.location.href = parent_url + '?view=payment_nicos';

			}

		}

	}

}
//////////////////////////////////////////////////
// �@�\���FHTML�\�[�X�\��t��
// �֐����FAjaxReqExecPost(url,directry)
// �^�C�v�F����
//////////////////////////////////////////////////
function AjaxReqExecPost(url){

	var html  = '';

	var param = '';

	if(window.location.search){
		param = window.location.search.substring(1);
	}

	var xmlhttp = false;

	try{
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}catch(e){
		xmlhttp = false;
	}

	if(!xmlhttp && typeof XMLHttpRequest!='undefined'){
		xmlhttp = new XMLHttpRequest();
	}

	if(xmlhttp){

		xmlhttp.open('post',url,true);

		xmlhttp.onreadystatechange = function(){
			if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
				html = xmlhttp.responseText;
			}
		}

		var data = "";

		xmlhttp.send(data);

	}

	return html;

}
