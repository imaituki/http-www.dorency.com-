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
	<div id="page_title" class="b_sh">
		<div><img src="{$_RENEWAL_DIR}/common/image/contents/product/top.jpg" alt="鮮度保持剤"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="hl_6">鮮度保持剤<span class="sub">Freshness preservation material</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li><a href="{$_RENEWAL_DIR}/product/">鮮度保持剤</a></li>
				<li>{$t_product_category_detail.name}</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper-t center detail">
			<h2 class="hl_4">{$t_product_category_detail.name}</h2>
			<div class="row">
				<div class="col-xs-4 height-1"><div class="img_sq"><img src="/common/photo/product_category/image1_2/m_{$t_product_category_detail.image1_2}" alt="{$t_product_category_detail.name}"></div></div>
				<div class="col-xs-8 d_tbl height-1">
					<div class="disp_td">
						<h3>{$t_product_category_detail.catchtitle}</h3>
						<p>{$t_product_category_detail.comment|nl2br}</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	{if $t_product_category_detail.index1 != NULL || $t_product_category_detail.comment1 != NULL || $t_product_category_detail.index2 != NULL || $t_product_category_detail.comment2 != NULL}
	<section>
		<div class="wrapper-t center main_feature">
			<h2 class="hl_4">主な特徴</h2>
			<div class="row">
				{if $t_product_category_detail.index1 != NULL || $t_product_category_detail.comment1 != NULL}
				<div class="col-xs-6 height-1 mb50">
					<div class="pos_ac"><img src="{if $t_product_category_detail.image2 != NULL}/common/photo/product_category/image2/m_{$t_product_category_detail.image2}{else}{$_RENEWAL_DIR}/common/image/contents/null_sq.jpg{/if}" alt="{$t_product_category_detail.name}"></div>
				</div>
				<div class="col-xs-6 height-1 mb50 flex_c">
					<div class="text_unit pos_al">
						<h3>{$t_product_category_detail.index1}</h3>
						<p>{$t_product_category_detail.comment1}</p>
					</div>
				</div>
				{/if}
				{if $t_product_category_detail.index2 != NULL || $t_product_category_detail.comment2 != NULL}
				<div class="col-xs-6 col-xs-push-6 height-1">
					<div class="pos_ac"><img src="{if $t_product_category_detail.image3 != NULL}/common/photo/product_category/image3/m_{$t_product_category_detail.image3}{else}{$_RENEWAL_DIR}/common/image/contents/null_rect.jpg{/if}" alt="{$t_product_category_detail.name}"></div>
				</div>
				<div class="col-xs-6 col-xs-pull-6 height-1 flex_c">
					<div class="text_unit pos_al">
						<h3>{$t_product_category_detail.index2}</h3>
						<p>{$t_product_category_detail.comment2}</p>
					</div>
				</div>
				{/if}
			</div>
		</div>
	</section>
	{/if}
	<section>
		<div class="wrapper-t center">
			{foreach from=$t_product item="product" key="key" name="loopProduct"}
			<div class="unit mb50">
				<p class="fw_bold">{$product.name}　製品仕様</p>
				<div class="hidden-only">
					<table class="tbl_product mb10">
						<thead>
							<tr>
								{if $product.detail.{$key}.type != NULL}
								<th><span class="th">種類</span></th>
								{/if}
								{if $product.detail.{$key}.feature != NULL}
								<th><span class="th">特徴</span></th>
								{/if}
								{if $product.detail.{$key}.days != NULL}
								<th><span class="th">脱酸素日数</span></th>
								{/if}
								{if $product.detail.{$key}.time != NULL}
								<th><span class="th">放置可能時間</span></th>
								{/if}
								{if $product.detail.{$key}.use != NULL}
								<th><span class="th">主な用途</span></th>
								{/if}
								{if $product.detail.{$key}.necessary_time != NULL}
								<th><span class="th">変化所要時間</span></th>
								{/if}
							</tr>
						</thead>
						{foreach from=$product.detail item="product_parts" key="key" name="loopProductParts"}
						<tbody>
							<tr>
								{if $product_parts.type != NULL}
									<td>{$product_parts.type|nl2br}</td>
								{/if}
								{if $product_parts.feature != NULL}
									<td>{$product_parts.feature|nl2br}</td>
								{/if}
								{if $product_parts.days != NULL}
									<td>{$product_parts.days|nl2br}</td>
								{/if}
								{if $product_parts.time != NULL}
									<td>{$product_parts.time|nl2br}</td>
								{/if}
								{if $product_parts.use != NULL}
									<td>{$product_parts.use|nl2br}</td>
								{/if}
								{if $product_parts.necessary_time != NULL}
									<td>{$product_parts.necessary_time}</td>
								{/if}
							</tr>
						</tbody>
						{/foreach}
					</table>
					{if $product.notice !=NULL}<p>※{$product.notice}</p>{/if}
				</div>
				<div class="visible-only">
					<table class="tbl_product mb10">
						<thead>
							<tr>
								{if $product.detail.{$key}.feature != NULL}
								<th><span class="th">特徴</span></th>
								{/if}
								{if $product.detail.{$key}.days != NULL}
								<th><span class="th">脱酸素日数</span></th>
								{/if}
								{if $product.detail.{$key}.time != NULL}
								<th><span class="th">放置可能時間</span></th>
								{/if}
								{if $product.detail.{$key}.use != NULL}
								<th><span class="th">主な用途</span></th>
								{/if}
								{if $product.detail.{$key}.necessary_time != NULL}
								<th><span class="th">変化所要時間</span></th>
								{/if}
							</tr>
						</thead>
						{foreach from=$product.detail item="product_parts" key="key" name="loopProductParts"}
						<tbody>
							<tr class="visible-only">
								<th colspan="6">{$product_parts.type|nl2br}</th>
							</tr>
							<tr>
								{if $product_parts.feature != NULL}
									<td>{$product_parts.feature|nl2br}</td>
								{/if}
								{if $product_parts.days != NULL}
									<td>{$product_parts.days|nl2br}</td>
								{/if}
								{if $product_parts.time != NULL}
									<td>{$product_parts.time|nl2br}</td>
								{/if}
								{if $product_parts.use != NULL}
									<td>{$product_parts.use|nl2br}</td>
								{/if}
								{if $product_parts.necessary_time != NULL}
									<td>{$product_parts.necessary_time}</td>
								{/if}
							</tr>
						</tbody>
						{/foreach}
					</table>
					{if $product.notice !=NULL}<p>※{$product.notice}</p>{/if}
				</div>
			</div>
			{/foreach}
		</div>
	</section>
	<section>
		<div class="wrapper-t center">
			<h2 class="hl_4">キーピットの種類</h2>
			<div class="row mb50">
				{foreach from=$t_product_category item="product_category" key="key" name="LoopProductCategory"}
				<div class="col-xs-4">
					<div class="cat_unit height-1">
						<a href="./detail.php?id={$product_category.id_product_category}">
							<div class="photo img_sq"><img src="{if $product_category.image1}/common/photo/product_category/image1/l_{$product_category.image1}{else}{$_RENEWAL_DIR}/common/image/contents/null.jpg{/if}" alt="{$product_category.name}}"></div>
							<div class="text">
								<p class="pro_name">{$product_category.name}</p>
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
