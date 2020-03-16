<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
<script type="text/javascript" src="{$_RENEWAL_DIR}/common/js/colorbox/jquery.colorbox-min.js"></script>
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/js/colorbox/colorbox.css">
<script>{literal}
$(function(){
	$('.colorbox').colorbox({inline:true, width:'95%', height:'95%'});
});
{/literal}</script>
</head>
<body id="use">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/use/top.jpg" alt="用途のご紹介"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="mincho">用途のご紹介<span class="sub">Use</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li>用途のご紹介</li>
			</ul>
		</div>
	</div>
	<div class="life">
		<section>
			<div class="wrapper center living">
				<h2 class="hl_6 pos_ac fw_bold mb30">暮らしのいろんなところにキーピット</h2>
				<p class="pos_ac-pc mb30">食品は酸素に触れると酸化し、品質が落ちてしまいます。これを防ぐために、包装容器の中を無酸素状態にするのが脱酸素剤です。<br>
					脱酸素剤「キーピット」は、鮮度保持剤として、さまざまな食品の「安全」「安心」「おいしさ」を守っています。<br>
					対象となる食品の種類・用途に応じた多機能な脱酸素剤も製造しています。</p>
				<div class="pos_ac"><a href="{$_RENEWAL_DIR}/product/" class="button _green2">キーピットについて<i class="arrow_cg"></i></a></div>
			</div>
		</section>
	</div>
	<section>
		<div class="wrapper-t center" id="use_illust">
			<div class="use_attention">数字をクリックするとポップアップ画面が表示されます。</div>
			<div class="illust">
				<img src="{$_RENEWAL_DIR}/common/image/contents/way/map.jpg" alt="脱酸素剤「キーピット」の用途">
				<ul>
{foreach from=$OptionExample item="ex" key="key"}
					<li class="menu{$key}"><a href="#use{$key}" class="colorbox">{$key}</a></li>
{/foreach}
				</ul>
			</div>
		</div>
	</section>
	<section>
		<div class="wrapper bg_greeno2">
			<div class="center">
				<div class="row list item_list">
{foreach from=$t_product_parts key="key" item="product_parts"}
					<div class="col-sm-4 col-xs-6">
						<div class="use_unit unit height-1">
							<a href="#use{$key}" class="colorbox">
								<div class="row">
									<div class="image col-xs-4">
										<div class="img_sq"><img src="{$_RENEWAL_DIR}/common/image/contents/way/item_{$key}.jpg" alt="{$OptionExample[$key]}"></div>
									</div>
									<div class="text col-xs-8">
										<h2 class="title"><span class="num">{$key}</span><span class="name">{$OptionExample[$key]}</span></h2>
{if $product_parts}
										<ul class="cat">
{foreach from=$product_parts item="parts" name="loopParts"}
										{if !empty( {$parts.type} )}<li>{$parts.type}タイプ</li>{/if}
{/foreach}
										</ul>
{/if}
									</div>
								</div>
							</a>
						</div>
						<div style="display:none">
							<div id="use{$key}" class="use_popup">
								<div class="center2">
									<h3 class="title"><span class="num">{$key}</span>{$OptionExample[$key]}</h3>
									<div class="pos_ac"><img src="{$_RENEWAL_DIR}/common/image/contents/way/item{$key}.jpg" alt="{$OptionExample[$key]}"></div>
									<h3 class="hl_4"><span>効果/特徴</span></h3>
									<div class="row mb50">
									{foreach from=$OptionExampleTag[$key] item="tag" name="loopTag"}
										<div class="col-xs-6"><span class="use_tag{if $smarty.foreach.loopTag.last == false} mb10{/if}">{$tag}</span></div>
									{/foreach}
									</div>
								</div>
								{if $t_product_category[$key]}
								<div class="bg_greeno2">
									<div class="center2">
										<h3 class="hl_3"><span>使用されている製品</span></h3>
										<div class="row">
											{foreach from=$t_product_category[$key] item="cat" name="loopCat"}
											<div class="col-xs-4">
												<div class="use_cat_unit">
													<a href="{$_RENEWAL_DIR}/product/detail.php?id={$cat.id_product_category}">
														<div class="photo"><img src="{if !empty( $cat.image1 )}/common/photo/product_category/image1/m_{$cat.image1}{else}{$_RENEWAL_DIR}/common/image/contents/null_sq.jpg{/if}" alt="{$cat.name}"></div>
														<div class="text">
															<h4>{$cat.name}</h4>
															{foreach from=$cat.data item="data"}<span><i class="fa fa-chevron-circle-right"></i>{$data.type}タイプ</span>{/foreach}
														</div>
													</a>
												</div>
											</div>
											{/foreach}
										</div>
									</div>
								</div>
								{/if}
							</div>
						</div>
					</div>
{/foreach}
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="center wrapper-t">
			<h2 class="hl_4"><span>キーピットに関するお問い合わせ</span></h2>
			{include file=$template_contact}
		</div>
	</section>
	<section>
		<div class="center wrapper">
			<h2 class="hl_4"><span>関連メニュー</span></h2>
			{include file=$template_product_foot}
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
