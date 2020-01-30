<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
</head>
<body id="recruit">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title">
		<div><img src="{$_RENEWAL_DIR}/common/image/contents/recruit/top.jpg" alt="採用情報"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="hl_6">採用情報</h2>
					<p>食の安心・安全に直結する製品を扱う上で、食品メーカーの<br>
						ベストパートナーを目指しています。研究開発/製造/販売を<br>
						通じて社会に貢献できる活力にあふれた人材を求めています。</p>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li>採用情報</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper-t center recruit">
			<div class="row">
				<div class="col-xs-6">
					<div class="box">
						<div><img src="{$_RENEWAL_DIR}/common/image/contents/recruit/image1.jpg" alt="新卒採用"></div>
						<div class="blank">
							<div class="pos_ac name">新卒採用<span>Newgraduates</span></div>
							<div class="button _type_2"><a href="{$_RENEWAL_DIR}/recruit/newcomer/">募集要項へ<i class="arrow_cg3"></i></a></div>
						</div>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="box">
						<div><img src="{$_RENEWAL_DIR}/common/image/contents/recruit/image2.jpg" alt="キャリア採用"></div>
						<div class="blank">
							<div class="pos_ac name">キャリア採用<span>Middle Career</span></div>
							<div class="button _type_2"><a href="{$_RENEWAL_DIR}/recruit/career/">募集要項へ<i class="arrow_cg3"></i></a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="wrapper center">
			<h2 class="hl_4"><span>採用に関するお問い合わせ</span></h2>
			{include file=$template_contact}
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
