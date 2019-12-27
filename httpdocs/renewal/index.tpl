<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
<script type="text/javascript" src="{$_RENEWAL_DIR}/common/js/top.js"></script>
</head>
<body id="top">
<div id="base">
{include file=$template_header}
<main>
<div id="top_main">
	<div id="main_image">
		<div class="unit">
			<div class="img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/top/main.jpg" alt="ドレンシー株式会社"></div>
			<div class="text">
				<div class="center img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/top/main_text1.png" alt=""></div>
			</div>
		</div>
		<div class="unit">
			<div class="img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/top/main2.jpg" alt="ドレンシー株式会社"></div>
			<div class="text">
				<div class="center img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/top/main_text1.png" alt=""></div>
			</div>
		</div>
		<div class="unit">
			<div class="img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/top/main3.jpg" alt="ドレンシー株式会社"></div>
			<div class="text">
				<div class="center img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/top/main_text1.png" alt=""></div>
			</div>
		</div>
	</div>
</div>
<div id="body">
	<section>
		<div id="development" class="wrapper">
			<div class="center2">
				<h2 class="hl_1"><i class="title_i"><img src="{$_RENEWAL_DIR}/common/image/contents/top/base_i.png" alt=""></i>本社/生産/開発拠点<span class="sub">Development base</span></h2>
				<p class="pos_ac mb50"><img src="{$_RENEWAL_DIR}/common/image/contents/top/image2.png" alt="本社/生産/開発拠点"></p>
			</div>
			<div class="center">
				<div class="row mb50">
					{foreach from=$t_base item="base" key="key" name="LoopBase"}
					<div class="col-xs-6">
						<div class="box bor10">
							<div class="row no-gutters">
								{if $base.image1}<div class="col-xs-7">{/if}
									<div class="text height-1">
										<h3>{$base.name}</h3>
										<p>〒{$base.zip}{if $base.image1 != NULL}<br>{else}　{/if}
											{$base.address1}{if $base.image1 != NULL}<br>{/if}{$base.address2}
											<a href="{$base.map}" target="_blank" class="ga_link" data-text="{$base.name}GoogleMap">[GoogleMap]</a>
										</p>
									</div>
								{if $base.image1}</div>{/if}
								{if $base.image1}
								<div class="col-xs-5">
									<div class="photo img_back height-1"><img src="/common/photo/base/image1/m_{$base.image1}" alt="{$base.name}"></div>
								</div>
								{/if}
							</div>
						</div>
					</div>
					{/foreach}
				</div>
				<div class="pos_ac">
					<a href="{$_RENEWAL_DIR}/company/" class="button _green">会社概要<i class="arrow"></i></a>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div id="reserch" class="wrapper">
			<h2 class="hl_1"><i class="title_i"><img src="{$_RENEWAL_DIR}/common/image/contents/top/deve_i.png" alt=""></i>研究開発<span class="sub">Research and Development</span></h2>
			<p class="mb50">従来の「鮮度保持剤」から一歩踏み出し新しい領域で<br>
				新しい製品の研究開発に取り組んでいます。</p>
			<div class="row no-gutters">
				<div class="col-xl-6 hidden-lg">
					<div class="row no-gutters">
						<div class="col-xs-2-5">
							<img src="https://placehold.jp/800x700.png" alt="">
						</div>
						<div class="col-xs-3-5">
							<div class="row no-gutters">
								<div class="col-xs-8">
									<img src="{$_RENEWAL_DIR}/common/image/contents/top/r_d2.jpg" alt="研究開発">
								</div>
								<div class="col-xs-4">
									<img src="{$_RENEWAL_DIR}/common/image/contents/top/r_d3.jpg" alt="研究開発">
								</div>
							</div>
							<div class="row no-gutters">
								<div class="col-xs-4">
									<img src="{$_RENEWAL_DIR}/common/image/contents/top/r_d4.jpg" alt="研究開発">
								</div>
								<div class="col-xs-8">
									<img src="https://placehold.jp/800x350.png" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6">
					<div class="row no-gutters">
						<div class="col-xs-2-5">
							<img src="https://placehold.jp/800x700.png" alt="">
						</div>
						<div class="col-xs-3-5">
							<div class="row no-gutters">
								<div class="col-xs-8">
									<img src="{$_RENEWAL_DIR}/common/image/contents/top/r_d2.jpg" alt="研究開発">
								</div>
								<div class="col-xs-4">
									<img src="{$_RENEWAL_DIR}/common/image/contents/top/r_d3.jpg" alt="研究開発">
								</div>
							</div>
							<div class="row no-gutters">
								<div class="col-xs-4">
									<img src="{$_RENEWAL_DIR}/common/image/contents/top/r_d4.jpg" alt="研究開発">
								</div>
								<div class="col-xs-8">
									<img src="https://placehold.jp/800x350.png" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div id="factory" class="wrapper">
			<div class="center">
				<div class="row no-gutters">
					<div class="col-xs-4">
						<h2 class="hl_1 pos_al"><i class="title_i"><img src="{$_RENEWAL_DIR}/common/image/contents/top/fact_i.png" alt=""></i>生産工場<span class="sub">Factory</span></h2>
						<p class="mb50">厳格な品質保障の仕組を構築し、<br>
							安全・安心を最優先に生産体制を整えています。</p>
						<div>
							<a href="{$_RENEWAL_DIR}/virtual/" class="button _green">バーチャル工場見学<i class="arrow"></i></a>
						</div>
					</div>
					<div class="col-xs-4">
						<img src="{$_RENEWAL_DIR}/common/image/contents/top/image5.png" alt="">
					</div>
					<div class="col-xs-4">
						<img src="{$_RENEWAL_DIR}/common/image/contents/top/image6.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div id="brand" class="wrapper">
			<div class="center">
				<h2 class="hl_1"><i class="title_i"><img src="{$_RENEWAL_DIR}/common/image/contents/top/brand_i.png" alt=""></i>ドレンシーブランド・製品情報<span class="sub">Brand and Items</span></h2>
				<p class="mb50 pos_ac">新しい領域から創り出された新しい製品。</p>
				<div class="box">
					<div class="row no-gutters">
						<div class="col-xs-1-5">
							<div class="photo img_back height-1"><img src="{$_RENEWAL_DIR}/common/image/contents/top/brand_k1.jpg" alt=""></div>
						</div>
						<div class="col-xs-2-5">
							<div class="text height-1">
								<h3>X線対応脱酸素剤/アルコール揮散剤</h3>
								<p>より確実で高度な品質管理に対応した、<br>X線対応型脱酸素剤。</p>
							</div>
						</div>
						<div class="col-xs-2-5">
							<div class="photo img_back height-1"><img src="{$_RENEWAL_DIR}/common/image/contents/top/d1.jpg" alt=""></div>
						</div>
					</div>
				</div>
				<div class="box">
					<div class="row no-gutters">
						<div class="col-xs-1-5">
							<div class="photo img_back height-1"><img src="{$_RENEWAL_DIR}/common/image/contents/top/brand_k2.jpg" alt=""></div>
						</div>
						<div class="col-xs-2-5">
							<div class="text height-1">
								<h3>アルコール揮散併用脱酸素剤</h3>
								<p>アルコール揮散と脱酸素機能を併用し、<br>金属検出機にも対応</p>
							</div>
						</div>
						<div class="col-xs-2-5">
							<div class="photo img_back height-1"><img src="{$_RENEWAL_DIR}/common/image/contents/top/d2.jpg" alt=""></div>
						</div>
					</div>
				</div>
				<div class="box">
					<div class="row no-gutters">
						<div class="col-xs-1-5">
							<div class="photo img_back height-1"><img src="{$_RENEWAL_DIR}/common/image/contents/top/brand_k3.jpg" alt=""></div>
						</div>
						<div class="col-xs-2-5">
							<div class="text height-1">
								<h3>電子レンジ対応脱酸素剤</h3>
								<p>電子レンジにも対応した脱酸素剤。</p>
							</div>
						</div>
						<div class="col-xs-2-5">
							<div class="photo img_back height-1"><img src="{$_RENEWAL_DIR}/common/image/contents/top/d3.jpg" alt=""></div>
						</div>
					</div>
				</div>
				<div class="box mb50">
					<div class="row no-gutters">
						<div class="col-xs-1-5">
							<div class="photo img_back height-1"><img src="{$_RENEWAL_DIR}/common/image/contents/top/brand_k4.jpg" alt=""></div>
						</div>
						<div class="col-xs-2-5">
							<div class="text height-1">
								<h3>酸素検知剤付キーピット</h3>
								<p>脱酸素状態を「より正確に」、「より速く」、<br>「より見やすく」確認出来る酸素検知剤。<br>（一体型脱酸素剤）</p>
							</div>
						</div>
						<div class="col-xs-2-5">
							<div class="photo img_back height-1"><img src="https://placehold.jp/800x400.png" alt=""></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-6">
						<div class="pos_ar">
							<a href="{$_RENEWAL_DIR}/product/" class="button _green">鮮度保持剤<i class="arrow"></i></a>
						</div>
					</div>
					<div class="col-xs-6 col-6">
						<div class="pos_al">
							<a href="{$_RENEWAL_DIR}/way/" class="button _green">用途のご紹介<i class="arrow"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div id="top_kairo" class="wrapper-t">
			<div class="row">
				<div class="col-xs-5 col-xs-push-7 kairo_text height-1">
					<div class="pos_ac disp_td">
						<h2 class="hl_1 pos_ac"><i class="title_i"><img src="{$_RENEWAL_DIR}/common/image/contents/top/cairo_i.png" alt=""></i>楽々カイロ<span class="sub">Heat Pad</span></h2>
						<p class="mb20">すぐに温まりたい人必携、常に高温を維持、即効性をアピールした文章</p>
						<div><img src="{$_RENEWAL_DIR}/common/image/contents/top/cairo.png" alt="楽々カイロ"></div>
						<div>
							<a href="{$_RENEWAL_DIR}/cairo/" class="button _green">用途のご紹介<i class="arrow"></i></a>
						</div>
					</div>
				</div>
				<div class="col-xs-7 col-xs-pull-5 height-1">
					<div class="photo img_back height-1"><img src="{$_RENEWAL_DIR}/common/image/contents/top/cairo_p.jpg" alt="楽々カイロ"></div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div id="contact_area" class="wrapper-t">
			<div class="center">
				<div class="contact_area bg_gray">
					<div class="row">
						<div class="col-xs-6">
							<div class="tel_unit cg">
								<h4>お電話でのお問い合わせ</h4>
								<span class="tel" data-tel="{$mst_siteconf.tel1}"><i class="fa fa-phone-alt"></i>{$mst_siteconf.tel1}</span>
							</div>
						</div>
						<div class="col-xs-6">
							<a href="{$_RENEWAL_DIR}/contact/" class="button _green _large"><i class="fa fa-envelope"></i>お問い合わせフォーム</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="wrapper-t top_recruit_b">
			<div class="center">
				<a href="{$_RENEWAL_DIR}/recruit/" class="ov"><img src="{$_RENEWAL_DIR}/common/image/contents/top/recruit.jpg" alt="採用情報"></a>
			</div>
		</div>
	</section>
	<section>
		<div id="top_info" class="wrapper">
			<div class="center">
				<div class="hl_2">
					<h2><i class="title_news"><img src="{$_RENEWAL_DIR}/common/image/contents/top/news_i.png" alt=""></i>お知らせ<span class="sub">NEWS</span></h2>
					<div class="right"><a href="{$_RENEWAL_DIR}/information/">一覧を見る</a></div>
				</div>
				<div class="info_list">
					{foreach from=$t_information item="information" key="key" name="LoopInfomation"}
					<a href="{$_RENEWAL_DIR}/information/detail.php?id={$information.id_information}" class="fa_a">
						<dl>
							<dt><span class="tag_1">{$OptionInformationCategory[$information.information_category]}</span></dt>
							<dd>{$information.date|date_format:"%Y/%m/%d"}　{$information.title}</dd>
						</dl>
					</a>
					{foreachelse}
						<div>お知らせはありません。</div>
					{/foreach}
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
