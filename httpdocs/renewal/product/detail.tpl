<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
</head>
<body id="product">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/product/top.jpg" alt="鮮度保持剤"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="mincho">鮮度保持剤<span class="sub">Freshness retaining agent</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li><a href="{$_RENEWAL_DIR}/product/">鮮度保持剤</a></li>
				<li>{$t_product_category_detail.name}</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper-t center">
			<h2 class="hl_4"><span>{$t_product_category_detail.name}</span></h2>
			<div class="row">
				<div class="col-xs-4">
					<div class="img_sq height-1"><img src="{if $t_product_category_detail.image1_2 != NULL}/common/photo/product_category/image1_2/m_{$t_product_category_detail.image1_2}{else}{$_RENEWAL_DIR}/common/image/contents/null_sq.jpg{/if}" alt="{$t_product_category_detail.name}"></div>
				</div>
				<div class="col-xs-8">
					<div class="disp_tbl height-1">
						<div class="disp_td">
							<h3 class="detail_title cg">{$t_product_category_detail.catchtitle}</h3>
							<p>{$t_product_category_detail.comment|nl2br}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
{if $t_product_category_detail.index1 != NULL || $t_product_category_detail.comment1 != NULL || $t_product_category_detail.index2 != NULL || $t_product_category_detail.comment2 != NULL}
	<section>
		<div class="wrapper-t center ">
			<h2 class="hl_4"><span>主な特徴</span></h2>
{if $t_product_category_detail.index1 != NULL || $t_product_category_detail.comment1 != NULL}
			<div class="row">
				<div class="col-xs-6">
					<div class="height-1 mb30 pos_ac"><img src="{if $t_product_category_detail.image2 != NULL}/common/photo/product_category/image2/m_{$t_product_category_detail.image2}{else}{$_RENEWAL_DIR}/common/image/contents/null_re.jpg{/if}" alt="{$t_product_category_detail.name}"></div>
				</div>
				<div class="col-xs-6">
					<div class="bg_gray main_feature disp_tbl height-1">
						<div class="disp_td">
							<h3 class="cg">{$t_product_category_detail.index1}</h3>
							<p>{$t_product_category_detail.comment1}</p>
						</div>
					</div>
				</div>
			</div>
{/if}
{if $t_product_category_detail.index2 != NULL || $t_product_category_detail.comment2 != NULL}
			<div class="row">
				<div class="col-xs-6 col-xs-push-6">
					<div class="height-1 mb30 pos_ac"><img src="{if $t_product_category_detail.image3 != NULL}/common/photo/product_category/image3/m_{$t_product_category_detail.image3}{else}{$_RENEWAL_DIR}/common/image/contents/null_re.jpg{/if}" alt="{$t_product_category_detail.name}"></div>
				</div>
				<div class="col-xs-6 col-xs-pull-6">
					<div class="bg_gray main_feature disp_tbl height-1">
						<div class="disp_td">
							<h3 class="cg">{$t_product_category_detail.index2}</h3>
							<p>{$t_product_category_detail.comment2}</p>
						</div>
					</div>
				</div>
			</div>
{/if}
		</div>
	</section>
{/if}
	<section>
		<div class="wrapper-t center">
{foreach from=$t_product item="product" key="key" name="loopProduct"}
			<div class="unit mb50">
				<h3 class="fw_bold large mb10">{$product.name} 製品仕様</h3>
				<div class="hidden-only">
					<table class="tbl_product mb10">
						<thead>
							<tr>
								{if $product.type_flg == 1}<th class="type">種類</th>{/if}
								{if $product.feature_flg == 1}<th>特徴</th>{/if}
								{if $product.days_flg == 1}<th class="days">脱酸素日数</th>{/if}
								{if $product.time_flg == 1}<th class="time">放置可能時間</th>{/if}
								{if $product.use_flg == 1}<th>主な用途</th>{/if}
								{if $product.necessary_time_flg == 1}<th>変化所要時間</th>{/if}
							</tr>
						</thead>
{foreach from=$product.detail item="product_parts" key="key2" name="loopProductParts"}
						<tbody>
							<tr>
								{if $product.type_flg == 1}<td>{$product_parts.type|nl2br|default:"-"}</td>{/if}
								{if $product.feature_flg == 1}<td>{$product_parts.feature|nl2br|default:"-"}</td>{/if}
								{if $product.days_flg == 1}<td>{$product_parts.days|nl2br|default:"-"}</td>{/if}
								{if $product.time_flg == 1}<td>{$product_parts.time|nl2br|default:"-"}</td>{/if}
								{if $product.use_flg == 1}<td>{$product_parts.use|nl2br|default:"-"}</td>{/if}
								{if $product.necessary_time_flg == 1}<td>{$product_parts.necessary_time|nl2br|default:"-"}</td>{/if}
							</tr>
						</tbody>
{/foreach}
					</table>
				</div>
				<div class="visible-only">
{foreach from=$product.detail item="product_parts" key="key2" name="loopProductParts"}
					<table class="tbl_product">
{if $product.type_flg == 1}
						<thead>
							<tr>
								<th colspan="5">{$product_parts.type|nl2br}</th>
							</tr>
						</thead>
{/if}
						<tbody>
							{if $product.feature_flg == 1}<tr><th>特徴</th><td>{$product_parts.feature|nl2br|default:"-"}</td></tr>{/if}
							{if $product.days_flg == 1}<tr><th>脱酸素日数</th><td>{$product_parts.days|nl2br|default:"-"}</td></tr>{/if}
							{if $product.time_flg == 1}<tr><th>放置可能時間</th><td>{$product_parts.time|nl2br|default:"-"}</td></tr>{/if}
							{if $product.use_flg == 1}<tr><th>主な用途</th><td>{$product_parts.use|nl2br|default:"-"}</td></tr>{/if}
							{if $product.necessary_time_flg == 1}<tr><th>変化所要時間</th><td>{$product_parts.necessary_time|nl2br|default:"-"}</td></tr>{/if}
						</tbody>
						{/foreach}
					</table>
				</div>
				{if $product.notice !=NULL}<p>※{$product.notice}</p>{/if}
			</div>
{/foreach}
		</div>
	</section>
	<section>
		<div class="wrapper-t center">
			<h2 class="hl_4"><span>キーピットの種類</span></h2>
			<div class="row">
{foreach from=$t_product_category item="product_category" key="key" name="LoopProductCategory"}
				<div class="col-xs-4">
					<div class="cat_unit height-1">
						<a href="./detail.php?id={$product_category.id_product_category}">
							<div class="photo img_sq"><img src="{if $product_category.image1}/common/photo/product_category/image1/l_{$product_category.image1}{else}{$_RENEWAL_DIR}/common/image/contents/null_sq.jpg{/if}" alt="{$product_category.name}}"></div>
							<div class="text">
								<h3 class="fa_b">{$product_category.name}</h3>
							</div>
						</a>
					</div>
				</div>
{foreachelse}
				<div class="pos_ac">キーピットの種類は現在掲載していません。</div>
{/foreach}
			</div>
		</div>
	</section>
	<section>
		<div class="center wrapper-t">
			<h2 class="hl_4"><span>キーピットに関するお問い合わせ</span></h2>
			{include file=$template_product_foot}
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
