<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
</head>
<body id="information">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title">
		<div><img src="{$_RENEWAL_DIR}/common/image/contents/top.jpg" alt="お知らせ"></div>
		<div class="page_title_wrap common">
			<div class="center mincho cg5">
				<h2><span class="main">News</span><span class="sub">お知らせ</span></h2>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href=""><i class="fa fa-home"></i></a></li>
				<li>お知らせ</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper">
			<div class="center">
				<div class="info_list">
					{foreach from=$t_information item="information" key="key" name="LoopInfomation"}
					<a href="./detail.php?id={$information.id_information}{if $arr_get.page != NULL}&page={$arr_get.page}{/if}" class="fa_a">
						<dl>
							<dt><span class="tag_1">{$OptionInformationCategory[$information.information_category]}</span></dt>
							<dd>{$information.date|date_format:"%Y/%m/%d"}　{$information.title}</dd>
						</dl>
					</a>
					{foreachelse}
					<div class="pos_ac">お知らせはありません。</div>
					{/foreach}
					{if $page_navi.LinkPage}
					<div class="list_pager">
						<ul class="mt50">
							{$page_navi.LinkPage}
						</ul>
					</div>
					{/if}
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
