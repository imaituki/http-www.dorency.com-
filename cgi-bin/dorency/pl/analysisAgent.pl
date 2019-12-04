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
#	最終更新ver1.80用				(09/06/23)
#		IE8を追加
#		IE9を追加（将来用）
#			IE9以降はver情報無しで表示処理
#
#		WinVistaを追加
#		Win７を追加
#
#		FireFoxをバージョン別に変更
#			ver.4.0まで表記。
#			それ以降はver名無しで表示処理
#
#		GoogleChromeを追加+バージョン別に変更
#			ver.3.0まで表記
#			それ以降はver名無しで表示処理
#
#		現在のシェア
#			ＩＥ		66％
#			FireFox		21％
#			Chrome		12％
#			その他		 1％
##################################################
##################################################
#	最終更新ver1.83用				(10/03/12)
#		FireFox
#			マイナーバージョンの表記を排除
#			ver.5まで表記
#			それ以降はver名無しで表示処理
#
#		GoogleChrome
#			マイナーバージョンの表記を排除
#			ver.6まで表記
#			それ以降はver名無しで表示処理
#
#		現在のシェア
#(参照サイト ： http://gs.statcounter.com/#browser-ww-daily-20090501-20100201-bar)
#			2010/02の全世界のデータ
#			IE			57.69％
#			FireFox		31.21％
#			Chrome		 4.14％
#			Safari		 3.33％
#			Opera		 2.43％
#			その他		 0.94％
##################################################
# getAgentName
# [ブラウザ/OS]名取得。(ver1.00)
##################################################
sub getAgentName{

	my($user_agent) = @_;

##################################################
#DoCoMo
	if($user_agent =~ /^DoCoMo\/1\.0/i){
		if($user_agent =~ /Google/i){
			$platform = 'Google imode';
			$browser  = 'DoCoMo';
		}else{
			@agetPart = split(/\//,$user_agent);
			$platform = $agetPart[2];
			$browser  = 'DoCoMo';
		}
	}elsif($user_agent =~ /^DoCoMo\/2\.0/i){
		if($user_agent =~ /Google/i){
			$platform = 'Google imode';
			$browser  = 'DoCoMo';
		}else{
			@agetPart = split(/ /,$user_agent);
			$tmp      = $agetPart[1];
			@tmp      = split(/\(/,$tmp);
			$platform = $tmp[0];
			$browser  = 'DoCoMo';
		}
##################################################
#KDDI
	}elsif($user_agent =~ /^KDDI/i){
		@agetPart = split(/ /,$user_agent);
		$tmp      = $agetPart[0];
		@tmp      = split(/-/,$tmp);
		$platform = $tmp[1];
		$browser  = 'KDDI\/$agetPart[1]';
	}elsif($user_agent =~ /^UP\.Browser/i){
		@agetPart = split(/ /,$user_agent);
		$tmp      = $agetPart[0];
		@tmp      = split(/-/,$tmp);
		$platform = $tmp[1];
		if($platform =~ /D2/i){
			$browser  = 'DoCoMo';
		}elsif($platform =~ /P-PAT/i){
			$browser  = 'DoCoMo';
		}else{
			$browser  = 'KDDI\/$tmp[0]';
		}
##################################################
#J-PHONE,Vodafone
	}elsif($user_agent =~ /^J-PHONE\/2\.0/i){
		@agetPart = split(/\//,$user_agent);
		$platform = $agetPart[2];
		$browser  = 'J-PHONE';
	}elsif($user_agent =~ /^J-PHONE\/3\.0/i){
		@agetPart = split(/\//,$user_agent);
		$platform = $agetPart[2];
		$browser  = 'J-PHONE';
	}elsif($user_agent =~ /^J-PHONE\/4/i){
		@agetPart = split(/\//,$user_agent);
		$platform = $agetPart[2];
		$platform =~ s/\[//;
		$browser  = 'J-PHONE';
	}elsif($user_agent =~ /^Vodafone/i){
		@agetPart = split(/\//,$user_agent);
		$platform = $agetPart[2];
		$browser  = 'Vodafone';
##################################################
#ASTEL
	}elsif($user_agent =~ /^ASTEL/i){
		@agetPart = split(/\//,$user_agent);
		$platform = $agetPart[2];
		$browser  = 'ASTEL';
##################################################
#H",AirH"
	}elsif($user_agent =~ /^PDXGW/i){
		@agetPart = split(/\//,$user_agent);
		$platform = 'H\"';
		$browser  = 'DDIポケット';
	}elsif($user_agent =~ /^Mozilla\/.+\(DDIPOCKET/i){
		@agetPart = split(/\//,$user_agent);
		$platform = $agetPart[2];
		$browser  = 'DDIポケット';
##################################################
#検索エンジン
	}elsif($user_agent =~ /^msnbot/i){
		$platform = 'msn';
		$browser  = 'ロボット(msn検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(compatible\; Yahoo\! Slurp\;/i){
		$platform = 'Yahoo';
		$browser  = 'ロボット(Yahoo検索エンジン)';
	}elsif($user_agent =~ /^Down Site Checker/i){
		$platform = 'Yahoo';
		$browser  = 'ロボット(Yahoo検索エンジン)';
	}elsif($user_agent =~ /^indexpert/i){
		$platform = 'フレッシュアイ';
		$browser  = 'ロボット(フレッシュアイ検索エンジン)';
	}elsif($user_agent =~ /^FreshGet/i){
		$platform = 'フレッシュアイ';
		$browser  = 'ロボット(フレッシュアイ検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(Slurp\/cat\; slurp\@inktomi\.com/i){
		$platform = 'Inktomi';
		$browser  = 'ロボット(Inktomi検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(Slurp\/si\; slurp\@inktomi\.com/i){
		$platform = 'Inktomi';
		$browser  = 'ロボット(Inktomi検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(Slurp-TOCC\/si\; slurp\@inktomi\.com/i){
		$platform = 'Inktomi';
		$browser  = 'ロボット(Inktomi検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(Slurp.so\/TOCC\; slurp\@inktomi\.com/i){
		$platform = 'Inktomi';
		$browser  = 'ロボット(Inktomi検索エンジン)';
	}elsif($user_agent =~ /^Googlebot/i){
		$platform = 'google';
		$browser  = 'ロボット(google検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(Slurp\/Goo\; slurp\@inktomi\.com/i){
		$platform = 'goo';
		$browser  = 'ロボット(goo検索エンジン)';
	}elsif($user_agent =~ /^moget/i){
		$platform = 'goo';
		$browser  = 'ロボット(goo検索エンジン)';
	}elsif($user_agent =~ /^mogimogi/i){
		$platform = 'goo';
		$browser  = 'ロボット(goo検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ compatible ZyBrog/i){
		$platform = 'WiseNut';
		$browser  = 'ロボット(WiseNut検索エンジン)';
	}elsif($user_agent =~ /^Robot\/www\.pj-search\.com/i){
		$platform = 'PopJapan';
		$browser  = 'ロボット(PopJapan検索エンジン)';
	}elsif($user_agent =~ /^NettuhanCom/i){
		$platform = 'ネット通販.com';
		$browser  = 'ロボット(検索エンジン)';
	}elsif($user_agent =~ /^FAST/i){
		$platform = 'FastSearch';
		$browser  = 'ロボット(FastSearch検索エンジン)';
	}elsif($user_agent =~ /^libwww-perl/i){
		$platform = 'SINET学術ネットワーク';
		$browser  = 'ロボット(SINET検索エンジン)';
	}elsif($user_agent =~ /^NetResearchServer/i){
		$platform = 'IncyWincy';
		$browser  = 'ロボット(IncyWincy検索エンジン)';
	}elsif($user_agent =~ /^Mercator/i){
		$platform = 'HP(Conpaq)巡回ロボット';
		$browser  = 'ロボット(HP検索エンジン)';
	}elsif($user_agent =~ /^AllAboutJapan LinkChecker/i){
		$platform = 'オールアバウトJ';
		$browser  = 'ロボット(オールアバウト検索エンジン)';
	}elsif($user_agent =~ /^Robozilla/i){
		$platform = 'dmoz';
		$browser  = 'ロボット(dmoz検索エンジン)';
	}elsif($user_agent =~ /^proodleBot/i){
		$platform = 'proodle';
		$browser  = 'ロボット(proodle検索エンジン)';
	}elsif($user_agent =~ /^psbot/i){
		$platform = 'picsearch';
		$browser  = 'ロボット(picsearch検索エンジン)';
	}elsif($user_agent =~ /^ScSpider/i){
		$platform = 'ScSpider';
		$browser  = 'ロボット(ScSpider検索エンジン)';
	}elsif($user_agent =~ /^TutorGigBot/i){
		$platform = 'tutorgig';
		$browser  = 'ロボット(tutorgig検索エンジン)';
	}elsif($user_agent =~ /^YottaShopping_Bot/i){
		$platform = 'yottashopping';
		$browser  = 'ロボット(yottashopping検索エンジン)';
	}elsif($user_agent =~ /^Faxobot/i){
		$platform = 'Faxobot';
		$browser  = 'ロボット(Faxobot検索エンジン)';
	}elsif($user_agent =~ /^Gigabot/i){
		$platform = 'Gigabot';
		$browser  = 'ロボット(Gigabot検索エンジン)';
	}elsif($user_agent =~ /^MJ12bot/i){
		$platform = 'majestic12';
		$browser  = 'ロボット(majestic12検索エンジン)';
	}elsif($user_agent =~ /^Syndic/i){
		$platform = 'Syndic';
		$browser  = 'ロボット(Syndic検索エンジン)';
	}elsif($user_agent =~ /^ia_archive/i){
		$platform = 'Internet Archive';
		$browser  = 'ロボット(Internet Archive検索エンジン)';
	}elsif($user_agent =~ /^infoseek/i){
		$platform = 'infoseek';
		$browser  = 'ロボット(infoseek検索エンジン)';
	}elsif($user_agent =~ /^SlySearch/i){
		$platform = 'SlySearch';
		$browser  = 'ロボット(SlySearch検索エンジン)';
	}elsif($user_agent =~ /^TurnitinBot/i){
		$platform = 'SlySearch';
		$browser  = 'ロボット(SlySearch検索エンジン)';
	}elsif($user_agent =~ /^Openfind/i){
		$platform = 'OpenFind';
		$browser  = 'ロボット(OpenFind検索エンジン)';
	}elsif($user_agent =~ /^sitecheck/i){
		$platform = 'Internet Seer';
		$browser  = 'ロボット(Seer検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(aruyo\/.+\;http:\/\/www\.aaacafe\.ne\.jp/i){
		$platform = 'AAACafe';
		$browser  = 'ロボット(AAACafe検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(compatibl\; Ask Jeeves/i){
		$platform = 'Ask Jeeves';
		$browser  = 'ロボット(Ask Jeeves検索エンジン)';
	}elsif($user_agent =~ /^Mozilla\/.+ \(compatible\; Indy Library\)/i){
		$platform = 'spam用メールアドレス収集ロボット';
		$browser  = 'ロボット(spam用)';
	}elsif($user_agent =~ /^Steeler/i){
		$platform = 'Steeler';
		$browser  = 'ロボット(Steeler検索エンジン)';
	}elsif($user_agent =~ /^larbin/i){
		$platform = 'larbin';
		$browser  = 'ロボット(larbin検索エンジン)';
	}elsif($user_agent =~ /^Tkensaku/i){
		$platform = 'Tkensaku';
		$browser  = 'ロボット(Tkensaku検索エンジン)';
	}elsif($user_agent =~ /^TAGENT/i){
		$platform = 'TAGENT';
		$browser  = 'ロボット(TAGENT検索エンジン)';
	}elsif($user_agent =~ /^Java/i){
		$platform = 'WebSense調査用ロボット';
		$browser  = 'ロボット(WebSense検索エンジン)';
	}elsif($user_agent =~ /^http:\/\/www.almaden.ibm.com/i){
		$platform = 'IBM The Clever Project';
		$browser  = 'ロボット(IBM検索エンジン)';
	}elsif($user_agent =~ /^RaBot/i){
		$platform = 'Daum';
		$browser  = 'ロボット(Daum検索エンジン)';
	}elsif($user_agent =~ /^Nutch/i){
		$platform = 'Nutch';
		$browser  = 'ロボット(Nutch検索エンジン)';
	}elsif($user_agent =~ /^Lycos_Spider/i){
		$platform = 'Lycos';
		$browser  = 'ロボット(Lycos検索エンジン)';
	}elsif($user_agent =~ /^ArchitextSpider/i){
		$platform = 'Excite';
		$browser  = 'ロボット(Excite検索エンジン)';
	}elsif($user_agent =~ /^Cowbot/i){
		$platform = 'Naver';
		$browser  = 'ロボット(Naver検索エンジン)';
	}elsif($user_agent =~ /^dloader/i){
		$platform = 'Naver';
		$browser  = 'ロボット(Naver検索エンジン)';
	}elsif($user_agent =~ /^minibot/i){
		$platform = 'Naver';
		$browser  = 'ロボット(検索エンジン)';
	}elsif($user_agent =~ /^DiaGem/i){
		$platform = '三菱電機(株) 情報通信システム開発センター';
		$browser  = 'ロボット(三菱検索エンジン)';
	}elsif($user_agent =~ /^Voyager/i){
		$platform = 'Lisa';
		$browser  = 'ロボット(Lisa検索エンジン)';
	}elsif($user_agent =~ /SearchHippo\.com/i){
		$platform = 'SearchHippo\.com';
		$browser  = 'ロボット(SearchHippo検索エンジン)';
	}elsif($user_agent =~ /T-H-U-N-D-E-R-S-T-O-N-E/i){
		$platform = 'thunderstone\.com';
		$browser  = 'ロボット(thunderstone検索エンジン)';
##################################################
#アンテナソフト
	}elsif($user_agent =~ /^Mozilla\/.+ \(LINKS ARoMATIZED/i){
		$platform = 'LINKS ARoMATIZED';
		$browser  = 'アンテナソフト'
	}elsif($user_agent =~ /^hatena/i){
		$platform = 'はてなアンテナ';
		$browser  = 'アンテナソフト';
	}elsif($user_agent =~ /^Bookmark/i){
		$platform = 'BOOKま～く';
		$browser  = 'アンテナソフト';
	}elsif($user_agent =~ /^NATSU-MICAN/i){
		$platform = 'なつみかん';
		$browser  = 'アンテナソフト';
##################################################
#Web巡回ソフト
	}elsif($user_agent =~ /^Mozilla/i && $user_agent =~ /girafabot/i){
		$platform = 'InternetExplorerアドオンツール';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^Microsoft URL Control/i){
		$platform = 'Microsoft URL Control';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^Microsoft URL Control/i){
		$platform = 'Microsoft URL Control';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^bumblebee/i){
		$platform = 'bumblebee';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^WebAuto/i){
		$platform = 'WebAuto';
		$browser  = 'Web巡回ソフト'
	}elsif($user_agent =~ /^Linbot/i){
		$platform = 'Linbot';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^WebPatrol/i){
		$platform = 'WebPatrol';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^WWWC/i){
		$platform = 'WWWC';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^Squeak/i){
		$platform = 'Squeak';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^WebFetch/i){
		$platform = 'WebFetch';
		$browser  = 'Web巡回ソフト'
	}elsif($user_agent =~ /^Wget/i){
		$platform = 'Wget';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^Pockey-GetHTML/i){
		$platform = 'GetHTMLW';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^WhatsUp_Gold/i){
		$platform = 'WhatsUp Gold';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^InternetLinkAgent/i){
		$platform = 'Internet Link Agent';
		$browser  = 'Web巡回ソフト';
	}elsif($user_agent =~ /^Iria/i){
		$platform = 'Iria';
		$browser  = 'Web巡回ソフト';
##################################################
#その他
	}elsif($user_agent =~ /Cuam/i){
		$platform = 'Windows';
		$browser  = 'Cuam';
	}elsif($user_agent =~ /^sharp pda browser/i){
		$platform = 'ZAURUS';
		$browser  = 'sharp_pda_browser';
	}elsif($user_agent =~ /^sharp wd browser/i){
		$platform = '書院';
		$browser  = 'sharp_wd_browser';
	}elsif($user_agent =~ /^sharp tv browser/i){
		$platform = 'インターネットTV';
		$browser  = 'sharp_tv_browser';
	}elsif($user_agent =~ /^Sonybrowser2/i){
		$platform = 'PlayStation2';
		$browser  = 'Sonybrowser2';
	}elsif($user_agent =~ /^Xiino/i){
		$platform = 'PalmOS';
		$browser  = 'Xiino';
	}elsif($user_agent =~ /^Mozilla\/.+ \(compatible\; MSIE ([0-9\.]+)\; PalmOS ([0-9\.]+)\) EudoraWeb/i){
		$platform = 'PalmOS';
		$browser  = 'EudoraWeb';
	}elsif($user_agent =~ /^Mozilla\/.+ \(DreamPassport\/([0-9\.])/i){
		$platform = 'Dreamcast';
		$browser  = 'DreamPassport';
	}elsif($user_agent =~ /^Mozilla\/.+ \(SonicPassport\)/i){
		$platform = 'Dreamcast';
		$browser  = 'DreamPassport Sonic版';
	}elsif($user_agent =~ /^Mozilla\/.+ WebTV/i){
		$platform = 'Dreamcast';
		$browser  = 'Microsoft WevTV for DreamCast';
	}elsif($user_agent =~ /PLAYSTATION/i){			#2010/08/02追加
		$platform = 'PLAYSTATION 3';
		$browser  = 'PLAYSTATION 3専用ブラウザ';
	}elsif($user_agent =~ /^Mozilla\/.+ Foliage-iBrowser\/([0-9\.]+) \(WinCE\)/i){
		$platform = 'WindowsCE';
		$browser  = 'Foliage-iBrowser';
	}elsif($user_agent =~ /^Mozilla\/.+\(compatible\; MSPIE ([0-9\.]+)\; Windows CE/i){
		$platform = 'WindowsCE';
		$browser  = 'PocketIE';
	}elsif($user_agent =~ /^Mozilla\/.+ \(compatible\; OmniWeb/i){
		$platform = 'Macintosh';
		$browser  = 'OmniWeb';
	}elsif($user_agent =~ /^Mozilla\/.+ \(BTRON Basic Browser/i){
		$platform = '超漢字';
		$browser  = 'BTRON Basic Browser';
	}elsif($user_agent =~ /Chimera/i){
		$platform = 'Macintosh';
		$browser  = 'Chimera';
	}elsif($user_agent =~ /iCab/i){
		$platform = 'Macintosh';
		$browser  = 'iCab';
	}elsif($user_agent =~ /Shiira/i){
		$platform = 'Macintosh';
		$browser  = 'Shiira';
##################################################
#その他(プラットフォーム不明)
	}elsif($user_agent =~ /^Mozilla\/.+ AVE-Front/i){
		$platform = '';
		$browser  = 'AVE-Front';
	}elsif($user_agent =~ /^Mozilla\/.+ NF/i){
		$platform = '';
		$browser  = 'NetFront';
	}elsif($user_agent =~ /Lynx/i){
		$platform = '';
		$browser  = 'Lynx';
	}elsif($user_agent =~ /L-mode/i){
		$platform = '';
		$browser  = 'L-mode';
	}elsif($user_agent =~ /xyzzy/i){
		$platform = '';
		$browser  = 'xyzzy';
	}elsif($user_agent =~ /Dillo/i){
		$platform = '';
		$browser  = 'Dillo';
	}elsif($user_agent =~ /Emacs/i){
		$platform = '';
		$browser  = 'Emacs-W3';
	}elsif($user_agent =~ /Kagetaka/i){
		$platform = '';
		$browser  = '影鷹'
	}elsif($user_agent =~ /mmm/i){
		$platform = '';
		$browser  = 'MMM'
	}elsif($user_agent =~ /JustView\/([0-9\.]+)/i){
		$platform = '';
		$browser  = 'JustView';
	}elsif($user_agent =~ /Plala-Browser/i){
		$platform = '';
		$browser  = 'Plala-Browser';
	}elsif($user_agent =~ /Lite/i){
		$platform = '';
		$browser  = 'Lite';
	}elsif($user_agent =~ /w3m/i){
		$platform = '';
		$browser  = 'w3m';
	}elsif($user_agent =~ /Mosaic/i){
		$platform = '';
		$browser  = 'Mosaic';
	}elsif($user_agent =~ /NeoPlanet/i){
		$platform = '';
		$browser  = 'NeoPlanet';
	}elsif($user_agent =~ /amaya/i){
		$platform = '';
		$browser  = 'Amaya';
	}elsif($user_agent =~ /Cello/i){
		$platform = '';
		$browser  = 'Cello';
	}elsif($user_agent =~ /Moon Browser/i){
		$platform = '';
		$browser  = 'Moon Browser';
	}elsif($user_agent =~ /BugBrowser/i){
		$platform = '';
		$browser  = 'BugBrowser';
	}elsif($user_agent =~ /fub/i){
		$platform = '';
		$browser  = 'fub';
	}elsif($user_agent =~ /fub/i){
		$platform = '';
		$browser  = 'fub';
	}elsif($user_agent =~ /TaBrowser/i){
		$platform = '';
		$browser  = 'TaBrowser';
	}elsif($user_agent =~ /MDIWeb/i){
		$platform = '';
		$browser  = 'MDIWeb';
	}elsif($user_agent =~ /MDIBrowser/i){
		$platform = '';
		$browser  = 'MDIBrowser';
	}elsif($user_agent =~ /Ntex/i){
		$platform = '';
		$browser  = 'Ntex';
	}elsif($user_agent =~ /Web SurfACE/i){
		$platform = '';
		$browser  = 'Web SurfACE';
	}elsif($user_agent =~ /Net Sailer/i){
		$platform = '';
		$browser  = 'Net Sailer';
	}elsif($user_agent =~ /Fast Browser/i){
		$platform = '';
		$browser  = 'Fast Browser';
	}elsif($user_agent =~ /AirWeb/i){
		$platform = '';
		$browser  = 'AirWeb';
	}elsif($user_agent =~ /Collector/i){
		$platform = '';
		$browser  = 'Collector';
	}elsif($user_agent =~ /Janus/i){
		$platform = '';
		$browser  = 'Janus';
	}elsif($user_agent =~ /Chariot/i){
		$platform = '';
		$browser  = 'Chariot';
	}elsif($user_agent =~ /Meleon/i){
		$platform = '';
		$browser  = 'K-Meleon';
	}elsif($user_agent =~ /PoketBrowser/i){
		$platform = '';
		$browser  = 'PoketBrowser';
##################################################
	}elsif($user_agent =~ /MSIE/i){
		#OS判定
			##################################################
			#windows系
			if($user_agent =~ /Win32/i){
				$platform = 'Windows 3.1';
			}elsif($user_agent =~ /Win95/i){
				$platform = 'Windows 95';
			}elsif($user_agent =~ /Win98/i){
				$platform = 'Windows 98';
			}elsif($user_agent =~ /WinNT/i){
				$platform = 'Windows NT';
			}elsif($user_agent =~ /Windows 95/i){
				$platform = 'Windows 95';
			}elsif($user_agent =~ /Windows 98\; Win 9x/i){
				$platform = 'Windows ME';
			}elsif($user_agent =~ /Windows 98/i){
				$platform = 'Windows 98';
			}elsif($user_agent =~ /Windows ME/i){
				$platform = 'Windows ME';
			}elsif($user_agent =~ /Windows NT 4\.0/i){
				$platform = 'Windows NT 4.0';
			}elsif($user_agent =~ /Windows NT 5\.0/i){
				$platform = 'Windows 2000';
			}elsif($user_agent =~ /Windows 2000/i){
				$platform = 'Windows 2000';
			}elsif($user_agent =~ /Windows NT 5\.1/i){
				$platform = 'Windows XP';
			}elsif($user_agent =~ /Windows XP/i){
				$platform = 'Windows XP';
			}elsif($user_agent =~ /Windows NT 5.2/i){
				$platform = 'Windows Server 2003';
			}elsif($user_agent =~ /Windows NT 6\.0/i){			#Ver.1.800 2009/06/20
				$platform = 'Windows Vista';
			}elsif($user_agent =~ /Windows Vista/i){			#Ver.1.800 2009/06/20
				$platform = 'Windows Vista';
			}elsif($user_agent =~ /Windows NT 6\.1/i){			#Ver.1.800 2009/06/20
				$platform = 'Windows 7';
			}elsif($user_agent =~ /Windows 7/i){				#Ver.1.800 2009/06/20
				$platform = 'Windows 7';
			##################################################
			#Macintosh系
			}elsif($user_agent =~ /Mac_68000/i){
				$platform = 'Macintosh';
			}elsif($user_agent =~ /68K/i){
				$platform = 'Macintosh';
			}elsif($user_agent =~ /Mac_PowerPC/i){
				$platform = 'Macintosh PowerPC';
			}elsif($user_agent =~ /Mac OS X/i){
				$platform = 'Macintosh OS X';
			}elsif($user_agent =~ /Mac OS/i){
				$platform = 'Macintosh OS';
			}elsif($user_agent =~ /Macintosh/i){
				$platform = 'Macintosh';
			##################################################
			#その他OS
			}elsif($user_agent =~ /SunOS/i){
				$platform = 'SunOS';
			}elsif($user_agent =~ /FreeBSD/i){
				$platform = 'FreeBSD';
			}elsif($user_agent =~ /Linux/i){
				$platform = 'Linux';
			}elsif($user_agent =~ /OpenBSD/i){
				$platform = 'OpenBSD';
			}elsif($user_agent =~ /BeOS/i){
				$platform = 'BeOS';
			}elsif($user_agent =~ /NetBSD/i){
				$platform = 'NetBSD';
			}elsif($user_agent =~ /AIX/i){
				$platform = 'AIX';
			}elsif($user_agent =~ /IRIX/i){
				$platform = 'IRIX';
			}elsif($user_agent =~ /HP-UX/i){
				$platform = 'HP-UX';
			}elsif($user_agent =~ /OSF1/i){
				$platform = 'OSF1';
			}
		#ブラウザバージョン判定
			##################################################
			#Internet Explorer系
			if($user_agent =~ /MSIE 4/i){
				$browser  = 'Internet Explorer 4';
			}elsif($user_agent =~ /MSIE 5/i){
				$browser  = 'Internet Explorer 5';
			}elsif($user_agent =~ /MSIE 5\.5/i){
				$browser  = 'Internet Explorer 5.5';
			}elsif($user_agent =~ /MSIE 6/i){
				$browser  = 'Internet Explorer 6';
			}elsif($user_agent =~ /MSIE 7/i){
				$browser  = 'Internet Explorer 7';
			}elsif($user_agent =~ /MSIE 8/i){			#Ver.1.800 2009/06/20
				$browser  = 'Internet Explorer 8';
			}elsif($user_agent =~ /MSIE 9/i){			#Ver.1.800 2009/06/20
				$browser  = 'Internet Explorer 9';
			}
			##################################################
			#その他ブラウザ
			#if($user_agent =~ /Opera/i){
			#	$browser  = 'Opera';
			#}elsif($user_agent =~ /Sleipnir/i){
			#	$browser  = 'Sleipnir';
			#}elsif($user_agent =~ /Lunascape/i){
			#	$browser  = 'Lunascape';
			#}elsif($user_agent =~ /Donut/i){
			#	$browser  = 'Donut';
			#}elsif($user_agent =~ /MyIE/i){
			#	$browser  = 'MyIE';
			#}elsif($user_agent =~ /NetCaptor/i){
			#	$browser  = 'NetCaptor';
			#}
		##################################################
		#IE以外のブラウザ
		}else{
		##################################################
			#windows系
			if($user_agent =~ /Win32/i){
				$platform = 'Windows 3.1';
			}elsif($user_agent =~ /Win95/i){
				$platform = 'Windows 95';
			}elsif($user_agent =~ /Win98/i){
				$platform = 'Windows 98';
			}elsif($user_agent =~ /WinNT/i){
				$platform = 'Windows NT';
			}elsif($user_agent =~ /Windows 95/i){
				$platform = 'Windows 95';
			}elsif($user_agent =~ /Windows 98\; Win 9x/i){
				$platform = 'Windows ME';
			}elsif($user_agent =~ /Windows 98/i){
				$platform = 'Windows 98';
			}elsif($user_agent =~ /Windows ME/i){
				$platform = 'Windows ME';
			}elsif($user_agent =~ /Windows NT 4\.0/i){
				$platform = 'Windows NT 4.0';
			}elsif($user_agent =~ /Windows NT 5\.0/i){
				$platform = 'Windows 2000';
			}elsif($user_agent =~ /Windows 2000/i){
				$platform = 'Windows 2000';
			}elsif($user_agent =~ /Windows NT 5\.1/i){
				$platform = 'Windows XP';
			}elsif($user_agent =~ /Windows XP/i){
				$platform = 'Windows XP';
			}elsif($user_agent =~ /Windows NT 5.2/i){
				$platform = 'Windows Server 2003';
			}elsif($user_agent =~ /Windows NT 6\.0/i){			#Ver.1.800 2009/06/20
				$platform = 'Windows Vista';
			}elsif($user_agent =~ /Windows Vista/i){			#Ver.1.800 2009/06/20
				$platform = 'Windows Vista';
			}elsif($user_agent =~ /Windows 7/i){				#Ver.1.800 2009/06/20
				$platform = 'Windows 7';
			}elsif($user_agent =~ /Windows NT 6\.1/i){			#Ver.1.800 2009/06/20
				$platform = 'Windows 7';
			##################################################
			#Macintosh系
			}elsif($user_agent =~ /Mac_68000/i){
				$platform = 'Macintosh';
			}elsif($user_agent =~ /68K/i){
				$platform = 'Macintosh';
			}elsif($user_agent =~ /Mac_PowerPC/i){
				$platform = 'Macintosh PowerPC';
			}elsif($user_agent =~ /Mac OS X/i){
				$platform = 'Macintosh OS X';
			
			}elsif($user_agent =~ /Mac OS/i){
				$platform = 'Macintosh OS';
			}elsif($user_agent =~ /Macintosh/i){
				$platform = 'Macintosh';
			##################################################
			#その他OS
			}elsif($user_agent =~ /SunOS/i){
				$platform = 'SunOS';
			}elsif($user_agent =~ /FreeBSD/i){
				$platform = 'FreeBSD';
			}elsif($user_agent =~ /Linux/i){
				$platform = 'Linux';
			}elsif($user_agent =~ /OpenBSD/i){
				$platform = 'OpenBSD';
			}elsif($user_agent =~ /BeOS/i){
				$platform = 'BeOS';
			}elsif($user_agent =~ /NetBSD/i){
				$platform = 'NetBSD';
			}elsif($user_agent =~ /AIX/i){
				$platform = 'AIX';
			}elsif($user_agent =~ /IRIX/i){
				$platform = 'IRIX';
			}elsif($user_agent =~ /HP-UX/i){
				$platform = 'HP-UX';
			}elsif($user_agent =~ /OSF1/i){
				$platform = 'OSF1';
			}
		##################################################
		#ブラウザ判定
		if($user_agent =~ /Opera/i){
			$browser  = 'Opera';
		}elsif($user_agent =~ /Sleipnir/i){
			$browser  = 'Sleipnir';
		}elsif($user_agent =~ /Lunascape/i){
			$browser  = 'Lunascape';
		}elsif($user_agent =~ /Donut/i){
			$browser  = 'Donut';
		}elsif($user_agent =~ /MyIE/i){
			$browser  = 'MyIE';
		}elsif($user_agent =~ /NetCaptor/i){
			$browser  = 'NetCaptor';
		##################################################
		#FireFox系
		#シェア増加により詳細追加						09/06/23
		#(2010/03/12 最終更新用として表記)
		}elsif($user_agent =~ /Firefox/i){
				#バージョンチェック
				if    ($user_agent =~ /Firefox\/2/i){
					$browser  = 'Firefox 2';
				}elsif($user_agent =~ /Firefox\/3/i){
					$browser  = 'Firefox 3';
				}elsif($user_agent =~ /Firefox\/4/i){
					$browser  = 'Firefox 4';
				}elsif($user_agent =~ /Firefox\/5/i){
					$browser  = 'Firefox 5';
				}else{
					$browser  = 'Firefox';
				}
		##################################################
		#Google Chrome系
		#シェア増加により詳細追加						09/06/23
		#(2010/03/12 VerUP速度が速いため更新)
		#SafariとChromeの判別
		}elsif($user_agent =~ /Safari/i){
			#バージョンチェック
			if($user_agent =~ /Chrome/i){
				if    ($user_agent =~ /Chrome\/1/i){
					$browser  = 'Chrome 1';
				}elsif($user_agent =~ /Chrome\/2/i){
					$browser  = 'Chrome 2';
				}elsif($user_agent =~ /Chrome\/3/i){
					$browser  = 'Chrome 3';
				}elsif($user_agent =~ /Chrome\/4/i){
					$browser  = 'Chrome 4';
				}elsif($user_agent =~ /Chrome\/5/i){
					$browser  = 'Chrome 5';
				}elsif($user_agent =~ /Chrome\/6/i){
					$browser  = 'Chrome 6';
				}else{
					$browser  = 'Chrome';
				}
				}else{
					if($user_agent =~ /Mobile/i){
						$browser  = 'Mobile Safari';
						$platform = 'iPhone';
					}
				}

		}elsif($user_agent =~ /Konqueror/i){
			$browser  = 'Konqueror';
		}elsif($user_agent =~ /Sun\)/i){
			$browser  = 'Hot Java Browser';
		}elsif($user_agent =~ /WebCapture/i){
			$browser  = 'Adobe Acrobat';
		##################################################
		#Netscape系
		}elsif($user_agent =~ /^Mozilla\/5\.0/i){
			if($user_agent =~ /Netscape/i){
				$browser  = 'Netscape';
			}else{
				$browser  = 'Mozilla';
			}
		}elsif($user_agent =~ /^Mozilla\/2/i){
			$browser  = 'Netscape';
		}elsif($user_agent =~ /^Mozilla\/3/i){
			$browser  = 'Netscape';
		}elsif($user_agent =~ /^Mozilla\/4/i){
			$browser  = 'Netscape';
		}elsif($user_agent =~ /^Mozilla\/5/i){
			$browser  = 'Netscape';
		}
##################################################
	}

	return ($platform, $browser);
}

1;
