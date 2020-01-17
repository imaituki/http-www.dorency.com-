<?php /* Smarty version Smarty-3.1.18, created on 2020-01-16 15:Jan:th
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4527304755e200400dc5642-75347711%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1579156479,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4527304755e200400dc5642-75347711',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_meta' => 0,
    '_RENEWAL_DIR' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    't_recruit' => 0,
    'recruit' => 0,
    'OptionRecruit' => 0,
    'OptionEmployment' => 0,
    'OptionSalaryUnit' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e20040108c022_40008870',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e20040108c022_40008870')) {function content_5e20040108c022_40008870($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_select_ken')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_select_ken.php';
if (!is_callable('smarty_modifier_date_format')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/modifier.date_format.php';
?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="career">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title" class="b_sh">
		<div><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/recruit/career/top.jpg" alt="中途採用"></div>
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
				<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/"><i class="fa fa-home"></i></a></li>
				<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/recruit/">採用情報</a></li>
				<li>中途採用</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper center">
			<div class="pos_ac mb30"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/recruit/career/image1.jpg" alt=""></div>
			<p class="pos_ac mb50">近年、日本国内では小売店での売れ残り・期限切れ、食材の余りなどにより、「食品ロス」が社会問題化しています。<br>
			弊社の脱酸素剤は、賞味期限を延ばすことで食品ロスを防ぐことができ、社会に貢献しています。<br>
			今後の社会へのさらなる貢献に向け、一緒に働いてみませんか。</p>
			<?php  $_smarty_tpl->tpl_vars["recruit"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["recruit"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['t_recruit']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["recruit"]->key => $_smarty_tpl->tpl_vars["recruit"]->value) {
$_smarty_tpl->tpl_vars["recruit"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["recruit"]->key;
?>
			<table class="tbl_2">
				<tbody>
					<tr>
						<th>採用種別</th>
						<td><?php echo $_smarty_tpl->tpl_vars['OptionRecruit']->value[$_smarty_tpl->tpl_vars['recruit']->value['recruit']];?>
</td>
					</tr>
					<tr>
						<th>募集職種</th>
						<td><?php echo $_smarty_tpl->tpl_vars['recruit']->value['recruitment'];?>
</td>
					</tr>
					<tr>
						<th>雇用形態</th>
						<td><?php echo $_smarty_tpl->tpl_vars['OptionEmployment']->value[$_smarty_tpl->tpl_vars['recruit']->value['employment']];?>
</td>
					</tr>
					<tr>
						<th>応募資格</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['recruit']->value['qualification']);?>
</td>
					</tr>
					<tr>
						<th>勤務地</th>
						<td>〒<?php echo $_smarty_tpl->tpl_vars['recruit']->value['zip'];?>
<?php echo smarty_function_html_select_ken(array('selected'=>(($tmp = @$_smarty_tpl->tpl_vars['recruit']->value['prefecture'])===null||$tmp==='' ? '' : $tmp),'pre'=>1),$_smarty_tpl);?>
<?php echo $_smarty_tpl->tpl_vars['recruit']->value['address1'];?>
<?php echo $_smarty_tpl->tpl_vars['recruit']->value['address2'];?>
</td>
					</tr>
					<tr>
						<th>勤務時間</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['recruit']->value['work_time']);?>
</td>
					</tr>
					<tr>
						<th>給与</th>
						<td><?php echo $_smarty_tpl->tpl_vars['OptionSalaryUnit']->value[$_smarty_tpl->tpl_vars['recruit']->value['salary_unit']];?>
<?php echo number_format($_smarty_tpl->tpl_vars['recruit']->value['min_salary']);?>
～<?php echo number_format($_smarty_tpl->tpl_vars['recruit']->value['max_salary']);?>
円</td>
					</tr>
					<tr>
						<th>待遇</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['recruit']->value['welfare']);?>
</td>
					</tr>
					<tr>
						<th>休日・休暇</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['recruit']->value['holiday']);?>
</td>
					</tr>
				</tbody>
			</table>
			<?php } ?>
			<div class="pos_ac entry_b"><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/recruit/form.php?recruit=2" class="button _green _large"><i class="fa fa-paper-plane" aria-hidden="true"></i>エントリーする</a></div>
			<div class="button _type_2"><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/recruit/"><i class="arrow_cg2"></i>採用情報トップへ</a></div>
		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>

<script type="application/ld+json">
{
	"@context": "http://schema.org/", 
	"@type": "JobPosting", 
	"title": "<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['recruitment'];?>
",
	"description": "<ul>
		<li>募集職種：<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['recruitment'];?>
</li>
		<li>雇用形態：<?php echo $_smarty_tpl->tpl_vars['OptionEmployment']->value[$_smarty_tpl->tpl_vars['t_recruit']->value[0]['employment']];?>
</li>
		<li>仕事の内容：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['job_description']);?>
</li>
		<li>求める人材：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['people']);?>
</li>
		<li>就業時間：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['work_time']);?>
</li>
		<li>交通アクセス：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['access']);?>
</li>
		<li>福利厚生：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['welfare']);?>
</li>
		<li>条件：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['qualification']);?>
</li>
		<li>賃金：<?php if (!empty($_smarty_tpl->tpl_vars['t_recruit']->value[0]['max_salary'])) {?><?php echo number_format($_smarty_tpl->tpl_vars['t_recruit']->value[0]['min_salary']);?>
～<?php echo number_format($_smarty_tpl->tpl_vars['t_recruit']->value[0]['max_salary']);?>
円<?php } else { ?><?php echo number_format($_smarty_tpl->tpl_vars['t_recruit']->value[0]['min_salary']);?>
円<?php }?><?php if (!empty($_smarty_tpl->tpl_vars['t_recruit']->value[0]['salary'])) {?><br><?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['salary'];?>
<?php }?></li>
		<li>賞与：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['raise_bonus']);?>
</li>
		<li>通勤手当：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['commute']);?>
</li>
		<li>休日等：<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit']->value[0]['holiday']);?>
</li>
		<li>勤務地：<?php echo smarty_function_html_select_ken(array('pre'=>1,'selected'=>$_smarty_tpl->tpl_vars['t_recruit']->value[0]['prefecture']),$_smarty_tpl);?>
<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['address1'];?>
<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['address2'];?>
</li>
		<li>試用期間：<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['trial'];?>
</li>
	</ul>",
	"datePosted": "<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_recruit']->value[0]['entry_date'],"%Y-%m-%d");?>
",
		<?php if ($_smarty_tpl->tpl_vars['t_recruit']->value[0]['display_indefinite_flg']==0&&!empty($_smarty_tpl->tpl_vars['t_recruit']->value[0]['display_end'])) {?>"validThrough": "<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_recruit']->value[0]['display_end'],"%Y-%m-%d");?>
",<?php }?>
	"employmentType":"<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['employment'];?>
",
	"hiringOrganization": {
		"@type": "Organization", 
		"name": "ドレンシー株式会社", 
		"logo": "http://www.dorency.com<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/favicon/apple-touch-icon.png", 
		"sameAs": "http://www.dorency.com"
	}, 
	"jobLocation": {
		"@type": "Place", 
		"address": {
			"@type": "PostalAddress",
			
			"streetAddress": "<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['address2'];?>
",
			"addressLocality": "<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['address1'];?>
",
			"addressRegion": "<?php echo smarty_function_html_select_ken(array('pre'=>1,'selected'=>$_smarty_tpl->tpl_vars['t_recruit']->value[0]['prefecture']),$_smarty_tpl);?>
",
			"postalCode": "<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['zip'];?>
",
			"addressCountry": "JP"
			
		}
	},
	
	<?php if ($_smarty_tpl->tpl_vars['t_recruit']->value[0]['remote_work']) {?>
	"jobLocationType": "TELECOMMUTE",
	<?php }?>
	
	"baseSalary": {
		"@type": "MonetaryAmount",
		"currency": "JPY",
		"value": {
			"@type": "QuantitativeValue",
			
			"value": <?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['min_salary'];?>
,
			<?php if (!empty($_smarty_tpl->tpl_vars['t_recruit']->value[0]['max_salary'])) {?>"minValue": <?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['min_salary'];?>
,
			"maxValue": <?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['max_salary'];?>
,<?php }?>
			"unitText": "<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['salary_unit'];?>
"
			
		}
	},
	"identifier": {
		"@type": "PropertyValue",
		"name": "ドレンシー株式会社",
		"value": "<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value[0]['id_recruit'];?>
"
	}
}
</script>

</body>
</html>
<?php }} ?>
