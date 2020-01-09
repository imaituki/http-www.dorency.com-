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
				<li>鮮度保持剤</li>
			</ul>
		</div>
	</div>
	<section class="top">
		<div class="pos_re mb20">
			<div class="shadow"><img src="{$_RENEWAL_DIR}/common/image/contents/product/product_p.jpg" alt=""></div>
			<div class="pos_ab disp_tbl">
				<div class="disp_td fw_bold">
					<div class="center">
						<p>[脱酸素剤]</p>
						<p class="text cg6">脱酸素剤「キーピット」は<br>酸素ゼロ状態をつくり<br>食品の安心・安全とおいしさを創り出す</p>
						<div><img src="{$_RENEWAL_DIR}/common/image/contents/product/product.png" alt="楽々カイロ"></div>
					</div>
				</div>
			</div>
		</div>
		<p class="center">キーピットは、鉄が酸化して錆びるときに酸素を吸収する働きを利用した、鉄粉系の脱酸素剤です。<br>
		空気中には約21%の酸素が存在しますが、食品の鮮度・品質保持という観点からは、この酸素がなかなかに厄介な存在。
		脱酸素剤・キーピットは密閉容器内（食品包装内）の酸素を吸収し、限りなく酸素ゼロに近い（酸素濃度0.1%以下）密封空間を作り出すことにより、カビの繁殖や酸化など酸素が食品に与えるマイナスの影響を除去。
		食品の鮮度とおいしさを守ります。</p>
	</section>
	<section>
		<div class="wrapper-t center feature">
			<h2 class="hl_4">キーピットの特徴</h2>
			<div class="row">
				<div class="col-xs-6">
					<p class="pos_ac num">特徴1</p>
					<div class="box">
						<h3>カビの発生を防ぎます</h3>
						<p>脱酸素剤・キーピットは、カビなど酸素がなくては生育できない好気性細菌の繁殖を抑えます。キーピットは包装フィルムを透過するわずかな酸素も逃がさず吸収し続けますから、長時間、カビ抑制効果を持続させることができます。</p>
					</div>
				</div>
				<div class="col-xs-6">
					<p class="pos_ac num">特徴2</p>
					<div class="box">
						<h3>油脂、ビタミン等の酸化を防ぎます</h3>
						<p>食品中の油脂は酸素に触れることによって酸化し、劣化していきます。また、食品に含まれるビタミンE、C、なども酸化によって損なわれたり、変質していきます。キーピットはこうした酸化の過程をストップ。食品の品質、栄養素を守ります。</p>
					</div>
				</div>
				<div class="col-xs-6">
					<p class="pos_ac num">特徴3</p>
					<div class="box">
						<h3>食品の風味、色の変化を防ぎます</h3>
						<p>酸化は食品の色、風味にも悪影響を及ぼします。キーピットは食品中に含まれる色素の変退色を防ぐとともに、コーヒーやお茶、海苔などの香り成分を保持。食品のおいしさ、みずみずしさを守ります。</p>
					</div>
				</div>
				<div class="col-xs-6">
					<p class="pos_ac num">特徴4</p>
					<div class="box">
						<h3>害虫による被害を防ぎます</h3>
						<p>脱酸素剤・キーピットには、穀類などに巣くう害虫を死滅させる働きもあります。キーピットは薬剤ではないので安全性も高く、害虫の卵に対しても確実な効果が期待できます。</p>
					</div>
				</div>
			</div>
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
