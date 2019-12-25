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
				<li><a href="{$_RENEWAL_DIR}"><i class="fa fa-home"></i></a></li>
				<li><a href="{$_RENEWAL_DIR}/information/">お知らせ</a></li>
				<li>{$t_information.title}</li>
			</ul>
		</div>
	</div>
	<section>
		<div id="info_detail" class="wrapper-t center">
			<div class="box">
				<div class="box_in">
					<div class="mb20"><span class="date cg2">{$t_information.date|date_format:"%Y/%m/%d"}</span><span class="tag_1">{$OptionInformationCategory[$t_information.information_category]}</span></div>
					<h2 class="title">{$t_information.title}</h2>
					{if $t_information.image1 != NULL}
					<div class="pos_ac mb50"><img src="/common/photo/information/image1/l_{$t_information.image1}" alt="{$t_information.title}"></div>
					{/if}
					<div class="entry mb50">
						{$t_information.comment}
					</div>
					{if $t_information.image2 != NULL || $t_information.image3 != NULL || $t_information.image4 != NULL || $t_information.image5 != NULL}
					<div class="row">
						{if $t_information.image2 != NULL}
						<div class="col-xs-3 col-6 height-1 mb20">
							<a class="ov" href="/common/photo/information/image2/l_{$t_information.image2}" rel="lightbox">
								<div class="img_rect"><img src="/common/photo/information/image2/m_{$t_information.image2}" alt="{$t_information.title}"></div></a>
						</div>
						{/if}
						{if $t_information.image3 != NULL}
						<div class="col-xs-3 col-6 height-1 mb20">
							<a class="ov" href="/common/photo/information/image3/l_{$t_information.image3}" rel="lightbox">
								<div class="img_rect"><img src="/common/photo/information/image3/m_{$t_information.image3}" alt="{$t_information.title}"></div></a>
						</div>
						{/if}
						{if $t_information.image4 != NULL}
						<div class="col-xs-3 col-6 height-1 mb20">
							<a class="ov" href="/common/photo/information/image4/l_{$t_information.image4}" rel="lightbox">
								<div class="img_rect"><img src="/common/photo/information/image4/m_{$t_information.image4}" alt="{$t_information.title}"></div></a>
						</div>
						{/if}
						{if $t_information.image5 != NULL}
						<div class="col-xs-3 col-6 height-1 mb20">
							<a class="ov" href="/common/photo/information/image5/l_{$t_information.image5}" rel="lightbox">
								<div class="img_rect"><img src="/common/photo/information/image5/m_{$t_information.image5}" alt="{$t_information.title}"></div></a>
						</div>
						{/if}
					</div>
				{/if}
				</div>
			</div>
		</div>
		<div class="wrapper">
			<div class="button _type_2"><a href="{$_RENEWAL_DIR}/information/{if $arr_get.page != NULL}?page={$arr_get.page}{/if}"><i class="arrow_cg2"></i>一覧へ戻る</a></div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
