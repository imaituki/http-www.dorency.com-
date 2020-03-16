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
					<h2 class="mincho">鮮度保持剤<span class="sub">Freshness Retaining Agent</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li>ドレンシーブランド</li>
				<li>鮮度保持剤</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="page_head">
			<div class="photo"><img src="{$_RENEWAL_DIR}/common/image/contents/product/product_p.jpg" alt="脱酸素剤 キーピット"></div>
			<div class="text">
				<div class="center">
					<div class="disp_td">
						<p class="mb20">Oxygen Absorber 'KEEPIT'</p>
						<h2 class="cg mb20">脱酸素剤「キーピット」は<br>密閉容器内を酸素ゼロの状態にし、<br>食品のおいしさと安全・安心を創り出します</h2>
						<div><img src="{$_RENEWAL_DIR}/common/image/contents/product/product.png" alt="脱酸素剤 キーピット"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="bg1 wrapper-t">
			<div class="center">
				<p>キーピットは、鉄が酸化して錆びるときに酸素を吸収する働きを利用した鉄粉系の脱酸素剤です。<br>
					空気中には約21%の酸素が存在しますが、食品の鮮度・品質保持という観点で考えると、この酸素はなかなか厄介な存在。 脱酸素剤キーピットは密閉容器内（食品包装内）の酸素を吸収し、限りなく酸素ゼロに近い、酸素濃度0.1%以下の密封空間を作り出します。そして、カビの繁殖や酸化など、酸素が食品に与えるマイナスの影響を除去し、食品の鮮度とおいしさを守ります。</p>
			</div>
		</div>
	</section>
	<section>
		<div class="wrapper-t center">
			<h2 class="hl_4"><span>キーピットの特徴</span></h2>
			<div class="row">
				<div class="col-xs-6">
					<div class="box feature height-1 mb30">
						<p class="num bg_green3">特徴1</p>
						<div class="text">
							<h3>カビの発生を防ぎます</h3>
							<p>脱酸素剤キーピットは、カビなどの酸素がなくては生育できない好気性細菌の繁殖を抑えます。包装フィルムを透過するわずかな酸素も逃がさず吸収し続け、長時間、カビ抑制効果を持続させることができます。</p>
						</div>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="box feature height-1 mb30">
						<p class="num bg_green3">特徴2</p>
						<div class="text">
							<h3>油脂、ビタミン等の酸化を防ぎます</h3>
							<p>食品中の油脂は酸素に触れると酸化し、劣化していきます。食品に含まれるビタミンE、Cなども酸化によって損なわれたり、変質したりします。キーピットはこれらの酸化の過程をストップし、食品の品質と栄養素を守ります。</p>
						</div>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="box feature height-1 mb30">
						<p class="num bg_green3">特徴3</p>
						<div class="text">
							<h3>食品の風味、色の変化を防ぎます</h3>
							<p>酸化は食品の色や風味にも悪影響を及ぼします。キーピットは食品中に含まれる色素の変退色を防ぐとともに、コーヒーやお茶、海苔などの香り成分を保持し、食品のおいしさとみずみずしさを守ります。</p>
						</div>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="box feature height-1 mb30">
						<p class="num bg_green3">特徴4</p>
						<div class="text">
							<h3>害虫による被害を防ぎます</h3>
							<p>脱酸素剤キーピットには、穀類などに巣くう害虫を死滅させる働きもあります。薬剤ではないため安全性が高く、害虫の卵に対しても確実な効果が期待できます。</p>
						</div>
					</div>
				</div>
			</div>
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
		<div class="center wrapper">
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
