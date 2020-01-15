<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
</head>
<body id="career">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title" class="b_sh">
		<div><img src="{$_RENEWAL_DIR}/common/image/contents/recruit/career/top.jpg" alt="中途採用"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="hl_6">中途採用<span class="sub">Career recruitment</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li><a href="{$_RENEWAL_DIR}/recruit/">採用情報</a></li>
				<li>中途採用</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper center">
			<div class="pos_ac mb30"><img src="{$_RENEWAL_DIR}/common/image/contents/recruit/career/image1.jpg" alt=""></div>
			<p class="pos_ac mb50">近年、日本国内では小売店での売れ残り・期限切れ、食材の余りなどにより、「食品ロス」が社会問題化しています。<br>
			弊社の脱酸素剤は、賞味期限を延ばすことで食品ロスを防ぐことができ、社会に貢献しています。<br>
			今後の社会へのさらなる貢献に向け、一緒に働いてみませんか。</p>
			{foreach from=$t_recruit item="recruit" key="key" name="loopRecruit"}
			<table class="tbl_2">
				<tbody>
					<tr>
						<th>採用種別</th>
						<td>{$OptionRecruit[$recruit.recruit]}</td>
					</tr>
					<tr>
						<th>募集職種</th>
						<td>{$recruit.recruitment}</td>
					</tr>
					<tr>
						<th>雇用形態</th>
						<td>{$OptionEmployment[$recruit.employment]}</td>
					</tr>
					<tr>
						<th>応募資格</th>
						<td>{$recruit.qualification|nl2br}</td>
					</tr>
					<tr>
						<th>勤務地</th>
						<td>〒{$recruit.zip}{html_select_ken selected=$recruit.prefecture|default:"" pre=1}{$recruit.address1}{$recruit.address2}</td>
					</tr>
					<tr>
						<th>勤務時間</th>
						<td>{$recruit.work_time|nl2br}</td>
					</tr>
					<tr>
						<th>給与</th>
						<td>{$recruit.min_salary}～{$recruit.max_salary}</td>
					</tr>
					<tr>
						<th>待遇</th>
						<td>{$recruit.welfare|nl2br}</td>
					</tr>
					<tr>
						<th>休日・休暇</th>
						<td>{$recruit.holiday|nl2br}</td>
					</tr>
				</tbody>
			</table>
			{/foreach}
			<div class="pos_ac entry_b"><a href="###" class="button _green _large"><i class="fa fa-paper-plane" aria-hidden="true"></i>エントリーする</a></div>
			<div class="button _type_2"><a href="{$_RENEWAL_DIR}/recruit/"><i class="arrow_cg2"></i>採用情報トップへ</a></div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
