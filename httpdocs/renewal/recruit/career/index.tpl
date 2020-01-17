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
						<td>{$OptionSalaryUnit[$recruit.salary_unit]}{$recruit.min_salary|number_format}～{$recruit.max_salary|number_format}円</td>
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
			<div class="pos_ac entry_b"><a href="{$_RENEWAL_DIR}/recruit/form.php?recruit=2" class="button _green _large"><i class="fa fa-paper-plane" aria-hidden="true"></i>エントリーする</a></div>
			<div class="button _type_2"><a href="{$_RENEWAL_DIR}/recruit/"><i class="arrow_cg2"></i>採用情報トップへ</a></div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>

<script type="application/ld+json">{literal}
{
	"@context": "http://schema.org/", 
	"@type": "JobPosting", 
	"title": "{/literal}{$t_recruit.0.recruitment}",
	"description": "<ul>
		<li>募集職種：{$t_recruit.0.recruitment}</li>
		<li>雇用形態：{$OptionEmployment[$t_recruit.0.employment]}</li>
		<li>仕事の内容：{$t_recruit.0.job_description|nl2br}</li>
		<li>求める人材：{$t_recruit.0.people|nl2br}</li>
		<li>就業時間：{$t_recruit.0.work_time|nl2br}</li>
		<li>交通アクセス：{$t_recruit.0.access|nl2br}</li>
		<li>福利厚生：{$t_recruit.0.welfare|nl2br}</li>
		<li>条件：{$t_recruit.0.qualification|nl2br}</li>
		<li>賃金：{if !empty( $t_recruit.0.max_salary )}{$t_recruit.0.min_salary|number_format}～{$t_recruit.0.max_salary|number_format}円{else}{$t_recruit.0.min_salary|number_format}円{/if}{if !empty( $t_recruit.0.salary )}<br>{$t_recruit.0.salary}{/if}</li>
		<li>賞与：{$t_recruit.0.raise_bonus|nl2br}</li>
		<li>通勤手当：{$t_recruit.0.commute|nl2br}</li>
		<li>休日等：{$t_recruit.0.holiday|nl2br}</li>
		<li>勤務地：{html_select_ken pre=1 selected=$t_recruit.0.prefecture}{$t_recruit.0.address1}{$t_recruit.0.address2}</li>
		<li>試用期間：{$t_recruit.0.trial}</li>
	</ul>",
	"datePosted": "{$t_recruit.0.entry_date|date_format:"%Y-%m-%d"}",
		{if $t_recruit.0.display_indefinite_flg == 0 && !empty( $t_recruit.0.display_end )}"validThrough": "{$t_recruit.0.display_end|date_format:"%Y-%m-%d"}",{/if}
	"employmentType":"{$t_recruit.0.employment}"{literal},
	"hiringOrganization": {
		"@type": "Organization", 
		"name": "ドレンシー株式会社", 
		"logo": "http://www.dorency.com{/literal}{$_RENEWAL_DIR}{literal}/common/favicon/apple-touch-icon.png", 
		"sameAs": "http://www.dorency.com"
	}, 
	"jobLocation": {
		"@type": "Place", 
		"address": {
			"@type": "PostalAddress",
			{/literal}
			"streetAddress": "{$t_recruit.0.address2}",
			"addressLocality": "{$t_recruit.0.address1}",
			"addressRegion": "{html_select_ken pre=1 selected=$t_recruit.0.prefecture}",
			"postalCode": "{$t_recruit.0.zip}",
			"addressCountry": "JP"
			{literal}
		}
	},
	{/literal}
	{if $t_recruit.0.remote_work}
	"jobLocationType": "TELECOMMUTE",
	{/if}
	{literal}
	"baseSalary": {
		"@type": "MonetaryAmount",
		"currency": "JPY",
		"value": {
			"@type": "QuantitativeValue",
			{/literal}
			"value": {$t_recruit.0.min_salary},
			{if !empty( $t_recruit.0.max_salary )}"minValue": {$t_recruit.0.min_salary},
			"maxValue": {$t_recruit.0.max_salary},{/if}
			"unitText": "{$t_recruit.0.salary_unit}"
			{literal}
		}
	},
	"identifier": {
		"@type": "PropertyValue",
		"name": "ドレンシー株式会社",
		"value": {/literal}"{$t_recruit.0.id_recruit}"{literal}
	}
}
{/literal}</script>

</body>
</html>
