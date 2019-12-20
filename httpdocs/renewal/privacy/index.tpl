<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="../common/css/import.css">
{include file=$template_javascript}
<script type="text/javascript" src="../common/js/top.js"></script>
</head>
<body id="privacy">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title">
		<div><img src="../common/image/contents/top.jpg" alt="お知らせ"></div>
		<div class="page_title_wrap common">
			<div class="center mincho cg5">
				<h2><span class="main">Privacy Policy</span><span class="sub">プライバシーポリシー</span></h2>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href=""><i class="fa fa-home"></i></a></li>
				<li>個人情報保護方針</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper center privacy">
			<h2 class="hl_3">個人情報保護方針</h2>
			<div class="box">
				<p class="mb50">ドレンシー株式会社（以下、「当社」）は、提供するサービス（以下、「本サービス」）における個人情報の取扱いについて、以下のとおりプライバシーポリシー（以下、「本ポリシー」）を定めます。</p>
				<h3 class="box_title cg mincho fw_bold">1. 個人情報の管理</h3>
				<p class="mb50">当社は、お客様の個人情報を正確かつ最新の状態に保ち、個人情報への不正アクセス・紛失・破損・改ざん・漏洩などを防止するため、セキュリティシステムの維持・管理体制の整備・社員教育の徹底等の必要な措置を講じ、安全対策を実施し個人情報の厳重な管理を行ないます。</p>
				<h3 class="box_title cg mincho fw_bold">2.個人情報の利用目的</h3>
				<p class="mb50">お客様からお預かりした個人情報は、当社からのご連絡や業務のご案内やご質問に対する回答として、電子メールや資料のご送付に利用いたします。</p>
				<h3 class="box_title cg mincho fw_bold">3.個人情報の第三者への開示・提供の禁止</h3>
				<p class="mb50">当当社は、お客さまよりお預かりした個人情報を適切に管理し、次のいずれかに該当する場合を除き、個人情報を第三者に開示いたしません。<br>
				・お客さまの同意がある場合<br>
				・お客さまが希望されるサービスを行なうために当社が業務を委託する業者に対して開示する場合<br>
				・法令に基づき開示することが必要である場合</p>
				<h3 class="box_title cg mincho fw_bold">4.個人情報の安全対策</h3>
				<p class="mb50">当社は、個人情報の正確性及び安全性確保のために、セキュリティに万全の対策を講じています。</p>
				<h3 class="box_title cg mincho fw_bold">5.ご本人の照会</h3>
				<p class="mb50">お客様がご本人の個人情報の照会・修正・削除などをご希望される場合には、ご本人であることを確認の上、対応させていただきます。</p>
				<h3 class="box_title cg mincho fw_bold">6.法令、規範の遵守と見直し</h3>
				<p class="mb50">当社は、保有する個人情報に関して適用される日本の法令、その他規範を遵守するとともに、本ポリシーの内容を適宜見直し、その改善に努めます。</p>
				<h3 class="box_title cg mincho fw_bold">7.お問い合わせ</h3>
				<p class="mb10">当社の個人情報の取扱に関するお問い合せは下記までご連絡ください。</p>
				<p class="mb50">{$mst_siteconf.company|nl2br}<br />
					〒{$mst_siteconf.zip} {$mst_siteconf.address|nl2br}<br />
					TEL：<span class="tel" data-tel="{$mst_siteconf.tel1}">{$mst_siteconf.tel1}</span><br>
					FAX：{$mst_siteconf.fax}
				</p>
			</div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
