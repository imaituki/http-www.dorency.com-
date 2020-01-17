<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
<link rel="stylesheet" type="text/css" href="{$_RENEWAL_DIR}/common/js/boxer/jquery.fs.boxer.css">
<script src="{$_RENEWAL_DIR}/common/js/boxer/jquery.fs.boxer.js"></script>
<script type="text/javascript">
{literal}
$(function(){
	$(".boxer").boxer();

	 var _ua = (function(u){
      return {
        Tablet:(u.indexOf("windows") != -1 && u.indexOf("touch") != -1 && u.indexOf("tablet pc") == -1)
          || u.indexOf("ipad") != -1
          || (u.indexOf("android") != -1 && u.indexOf("mobile") == -1)
          || (u.indexOf("firefox") != -1 && u.indexOf("tablet") != -1)
          || u.indexOf("kindle") != -1
          || u.indexOf("silk") != -1
          || u.indexOf("playbook") != -1,
        Mobile:(u.indexOf("windows") != -1 && u.indexOf("phone") != -1)
          || u.indexOf("iphone") != -1
          || u.indexOf("ipod") != -1
          || (u.indexOf("android") != -1 && u.indexOf("mobile") != -1)
          || (u.indexOf("firefox") != -1 && u.indexOf("mobile") != -1)
          || u.indexOf("blackberry") != -1
      }
    })(window.navigator.userAgent.toLowerCase());

	 if(_ua.Mobile){
 		write ("<style>.boxer-content { height: 500px; }</style>");
    }

});
{/literal}
</script>
{literal}
<style>
	body:not(.ipad):not(.iphone):not(.android) #boxer { min-height: 1500px !important; }
</style>
{/literal}
</head>
<body id="way">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title" class="b_sh">
		<div><img src="{$_RENEWAL_DIR}/common/image/contents/product/top.jpg" alt="鮮度保持剤"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="hl_6">用途のご紹介<span class="sub">Introduction of application</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div class="life">
		<div id="pankuzu">
			<div class="center">
				<ul>
					<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
					<li>用途のご紹介</li>
				</ul>
			</div>
		</div>
		<section>
			<div class="center living wrapper">
				<h2 class="hl_6 pos_ac fw_bold mb30">暮らしのいろんなところにキーピット</h2>
				<p class="pos_ac mb30">さまざまな、食品の「安全」「おいしさ」を守っています。<br>この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミ</p>
				<div class="button _type_2"><a href="{$_RENEWAL_DIR}/product/">キーピットについて<i class="arrow_cg"></i></a></div>
			</div>
		</section>
	</div>
	<section>
		<div class="center wrapper-b illust_unit">
			<p class="pos_ac">数字をクリックするとポップアップ画面が表示されます。</p>
			<div class="illust pos_re">
				<img src="{$_RENEWAL_DIR}/common/image/contents/way/map.jpg" alt="">
				<ul class="list">
					<li><a href="popup_1.php" class="boxer"><div class="maru">1</div></a></li>
					<li><a href="popup_2.php" class="boxer"><div class="maru">2</div></a></li>
					<li><a href="popup_3.php" class="boxer"><div class="maru">3</div></a></li>
					<li><a href="popup_4.php" class="boxer"><div class="maru">4</div></a></li>
					<li><a href="popup_5.php" class="boxer"><div class="maru">5</div></a></li>
					<li><a href="popup_6.php" class="boxer"><div class="maru">6</div></a></li>
					<li><a href="popup_7.php" class="boxer"><div class="maru">7</div></a></li>
					<li><a href="popup_8.php" class="boxer"><div class="maru">8</div></a></li>
				</ul>
			</div>
		</div>
	</section>
	<section class="bg_1">
			<div data-aos="fade-up" data-aos-once="true">
				<div class="center wrapper">
					<div class="row list item_list">
						{foreach from=$t_product_parts key="key" item="product_parts"}
						<div class="col-xs-4 unit height-1 mb30">
							<a href="popup_{$key}.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_{$key}.jpg" alt="{$OptionExample[$key]}">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">{$key}</span><span class="name">{$OptionExample[$key]}</span></h3>
									<p>【使用事例タイプ】</p>
									{foreach from=$product_parts item="parts" name="loopParts"}
									{if !empty( {$parts.type} )}
									<p class="cat{if !$smarty.foreach.loopParts.last} mb10{/if}">キーピット{$parts.type}タイプ</p>
									{/if}
									{/foreach}
								</div>
							</a>
						</div>
						{/foreach}
						{*
						<div class="col-xs-4 unit height-1 mb30">
							<a href="popup_1.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_1.jpg" alt="">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">1</span><span class="name">ハム・ベーコン</span></h3>
									<p>【仕様事例タイプ】</p>
									<p class="cat mb10">キーピットYFタイプ</p>
									<p class="cat">キーピットWYタイプ</p>
								</div>
							</a>
						</div>
						<div class="unit col-xs-4 height-1 mb30">
							<a href="popup_2.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_2.jpg" alt="">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">2</span><span class="name">ホットドッグ</span></h3>
									<p>【仕様事例タイプ】</p>
									<p class="cat">キーピットWREタイプ</p>
								</div>
							</a>
						</div>
						<div class="unit col-xs-4 height-1 mb30">
							<a href="popup_3.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_3.jpg" alt="">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">3</span><span class="name">ドーナッツ</span></h3>
									<p>【仕様事例タイプ】</p>
									<p class="cat mb10">キーピットPQ-PWタイプ</p>
									<p class="cat">キーピットQ-PWタイプ</p>
								</div>
							</a>
						</div>
						<div class="unit col-xs-4 height-1 mb30">
							<a href="popup_4.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_4.jpg" alt="">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">4</span><span class="name">どら焼き</span></h3>
									<p>【仕様事例タイプ】</p>
									<p class="cat mb10">キーピットWRタイプ</p>
									<p class="cat">キーピットPQ-PWタイプ</p>
								</div>
							</a>
						</div>
						<div class="unit col-xs-4 height-1 mb30">
							<a href="popup_5.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_5.jpg" alt="">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">5</span><span class="name">マドレーヌ</span></h3>
									<p>【仕様事例タイプ】</p>
									<p class="cat mb10">キーピットPQ-PWタイプ</p>
									<p class="cat">キーピットLEタイプ</p>
								</div>
							</a>
						</div>
						<div class="unit col-xs-4 height-1 mb30">
							<a href="popup_6.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_6.jpg" alt="">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">6</span><span class="name">バウムクーヘン</span></h3>
									<p>【仕様事例タイプ】</p>
									<p class="cat mb10">キーピットLEタイプ</p>
									<p class="cat">キーピットYFEタイプ</p>
								</div>
							</a>
						</div>
						<div class="unit col-xs-4 height-1">
							<a href="popup_7.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_7.jpg" alt="">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">7</span><span class="name">カステラ</span></h3>
									<p>【仕様事例タイプ】</p>
									<p class="cat mb10">キーピットLEタイプ</p>
									<p class="cat">キーピットYC-PWタイプ</p>
								</div>
							</a>
						</div>
						<div class="unit col-xs-4 height-1">
							<a href="popup_8.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="{$_RENEWAL_DIR}/common/image/contents/way/item_8.jpg" alt="">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num">8</span><span class="name">お餅</h3>
	 								<p>【仕様事例タイプ】</p>
									<p class="cat">キーピットWRタイプ</p>
								</div>
							</a>
						</div>
						*}
					</div>
				</div>
			</div>
		</section>
	<section>
		<div class="center wrapper">
			<h2 class="hl_4">キーピットに関するお問い合わせ</h2>
			{include file=$template_product_foot}
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
