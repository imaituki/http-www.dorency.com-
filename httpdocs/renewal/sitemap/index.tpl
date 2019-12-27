<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
</head>
<body id="sitemap">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title">
		<div><img src="{$_RENEWAL_DIR}/common/image/contents/top.jpg" alt="お知らせ"></div>
		<div class="page_title_wrap common">
			<div class="center mincho cg5">
				<h2><span class="main">Sitemap</span><span class="sub">サイトマップ</span></h2>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li>サイトマップ</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper center sitemap">
			<h2 class="hl_5 mb30"><a href="">トップページ</a></h2>
			<div class="row">
				<div class="col-xs-6">
					<h2 class="hl_5 mb10"><a href="{$_RENEWAL_DIR}/company/">会社概要</a></h2>
						<p class="link mb30"><a href="{$_RENEWAL_DIR}/#development">本社/生産/開発拠点</a></p>
					<h2 class="hl_5 mb10"><a href="{$_RENEWAL_DIR}/#factory">生産工場</a></h2>
						<p class="link mb30"><a href="{$_RENEWAL_DIR}/virtual/">バーチャル工場見学</a></p>
					<h2 class="hl_5 mb10"><a href="{$_RENEWAL_DIR}/recruit/">採用情報</a></h2>
						<p class="link"><a href="{$_RENEWAL_DIR}/recruit/newcomer/">新卒採用</a></p>
						<p class="link mb30"><a href="{$_RENEWAL_DIR}/recruit/career/">中途採用</a></p>

				</div>
				<div class="col-xs-6">
					<h2 class="hl_5 mb30"><a href="{$_RENEWAL_DIR}/#reserch">研究開発</a></h2>
					<h2 class="hl_5 mb10"><a href="{$_RENEWAL_DIR}/#brand">ドレンシーブランド</a></h2>
						<p class="link"><a href="{$_RENEWAL_DIR}/product/">鮮度保持剤</a></p>
						<p class="link"><a href="{$_RENEWAL_DIR}/product/way/">用途のご紹介</a></p>
						<p class="link mb30"><a href="{$_RENEWAL_DIR}/cairo/">カイロ</a></p>
					<h2 class="hl_5 mb30"><a href="{$_RENEWAL_DIR}/information/">お知らせ</a></h2>
					<h2 class="hl_5 mb30"><a href="{$_RENEWAL_DIR}/contact/">お問い合わせ</a></h2>
					<h2 class="hl_5 mb30"><a href="{$_RENEWAL_DIR}/privacy/">プライバシーポリシー</a></h2>
				</div>
			</div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
