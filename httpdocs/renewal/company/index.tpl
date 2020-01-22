<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
</head>
<body id="company">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/company/top.jpg" alt="会社概要"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="mincho">会社概要<span class="sub">Company</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li>会社概要</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper-t center">
			<h2 class="hl_4"><span>会社概要</span></h2>
			<div class="pos_ac mb50"><img src="{$_RENEWAL_DIR}/common/image/contents/company/image1.jpg" alt="会社概要"></div>
			<table class="tbl_1">
				<tbody>
					<tr>
						<th>会社名</th>
						<td>{$mst_siteconf.company|nl2br}</td>
					</tr>
					<tr>
						<th>所在地</th>
						<td>{foreach from=$t_base item="base" key="key" name="LoopBase"}
							<p{if $smarty.foreach.LoopBase.last == false} class="mb20"{/if}>【{$base.name}】<br>
								〒{$base.zip} {$base.address1}{$base.address2}<br>
								{if $base.tel != NULL}TEL：<span class="tel" data-tel="{$base.tel}">{$base.tel}</span><br>{/if}
								{if $base.fax != NULL}FAX：{$base.fax}<br>{/if}
								{if $base.map != NULL}<a href="{$base.map}" target="_blank" class="map ga_link"><i class="fas fa-map-marker-alt"></i>地図を表示</a>{/if}
							</p>
						{/foreach}</td>
					</tr>
					<tr>
						<th>創業</th>
						<td>昭和61年1月</td>
					</tr>
					{if $mst_siteconf.capital != NULL}
					<tr>
						<th>資本金</th>
						<td>{$mst_siteconf.capital|nl2br}</td>
					</tr>
					{/if}
					{if $mst_siteconf.product != NULL}
					<tr>
						<th>営業品目</th>
						<td>{$mst_siteconf.product|nl2br}</td>
					</tr>
					{/if}
					{if $mst_siteconf.factory != NULL}
					<tr>
						<th>工場</th>
						<td>{$mst_siteconf.factory|nl2br}</td>
					</tr>
					{/if}
					{if $mst_siteconf.employees != NULL}
					<tr>
						<th>従業員数</th>
						<td>{$mst_siteconf.employees|nl2br}</td>
					</tr>
					{/if}
					{if $mst_siteconf.bank != NULL}
					<tr>
						<th>取引銀行</th>
						<td>{$mst_siteconf.bank|nl2br}</td>
					</tr>
					{/if}
				</tbody>
			</table>
		</div>
	</section>
	<section>
		<div class="wrapper center">
			<h2 class="hl_4"><span>沿革</span></h2>
			<table class="tbl_1">
				<tbody>
					<tr>
						<th>昭和61年</th>
						<td>ドレンシー製造所として創業開始。</td>
					</tr>
					<tr>
						<th>平成9年</th>
						<td>ドレンシー株式会社に法人化、事業を継承。</td>
					</tr>
					<tr>
						<th>平成10年</th>
						<td>上海事務所を設立。</td>
					</tr>
					<tr>
						<th>平成11年</th>
						<td>大連多連保鮮剤有限公司を開設。</td>
					</tr>
					<tr>
						<th>平成14年</th>
						<td>多連喜（上海）国際貿易有限公司を開設。</td>
					</tr>
					<tr>
						<th>平成17年</th>
						<td>多連喜精細化工（平湖）有限公司工場を新設。</td>
					</tr>
					<tr>
						<th>平成21年</th>
						<td>上海新多連喜貿易有限公司を開設。</td>
					</tr>
					<tr>
						<th>平成●年</th>
						<td>寄島工場を新設。</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
