<?php /* Smarty version Smarty-3.1.18, created on 2019-12-03 16:05:02
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16543339945dcbf770dca646-17308389%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1575356214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16543339945dcbf770dca646-17308389',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dcbf770e4c4a2_44690670',
  'variables' => 
  array (
    'template_meta' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    'arr_get' => 0,
    'OptionSeminarCategory' => 0,
    'key' => 0,
    'seminar_category' => 0,
    't_seminar' => 0,
    'seminar' => 0,
    'page_navi' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dcbf770e4c4a2_44690670')) {function content_5dcbf770e4c4a2_44690670($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/home/brownotter8/data/smarty/libs/plugins/modifier.date_format.php';
?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="../common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="seminar">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/seminar/top.jpg" alt="セミナー実績"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2>セミナー実績</h2>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_dot">
		<div class="center">
			<ul>
				<li><a href="/">HOME</a></li>
				<li>セミナー実績</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper bg_lblueo">
			<div class="center">
				<div class="row mb50">
					<div class="col-md-5 mb30">
						<div class="seminar_navi">
							<ul class="period">
								<li><a href="./<?php if ($_smarty_tpl->tpl_vars['arr_get']->value['sid']!=null) {?>?sid=<?php echo $_smarty_tpl->tpl_vars['arr_get']->value['sid'];?>
<?php }?>">すべて表示</a></li>
								<li><a href="./?date=1<?php if ($_smarty_tpl->tpl_vars['arr_get']->value['sid']!=null) {?>&sid=<?php echo $_smarty_tpl->tpl_vars['arr_get']->value['sid'];?>
<?php }?>">開催予定</a></li>
								<li><a href="./?date=2<?php if ($_smarty_tpl->tpl_vars['arr_get']->value['sid']!=null) {?>&sid=<?php echo $_smarty_tpl->tpl_vars['arr_get']->value['sid'];?>
<?php }?>">開催中</a></li>
								<li><a href="./?date=3<?php if ($_smarty_tpl->tpl_vars['arr_get']->value['sid']!=null) {?>&sid=<?php echo $_smarty_tpl->tpl_vars['arr_get']->value['sid'];?>
<?php }?>">開催済</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-7">
							<?php  $_smarty_tpl->tpl_vars["seminar_category"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["seminar_category"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['OptionSeminarCategory']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars["seminar_category"]->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars["seminar_category"]->iteration=0;
 $_smarty_tpl->tpl_vars["seminar_category"]->index=-1;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["LoopSeminnar"]['iteration']=0;
foreach ($_from as $_smarty_tpl->tpl_vars["seminar_category"]->key => $_smarty_tpl->tpl_vars["seminar_category"]->value) {
$_smarty_tpl->tpl_vars["seminar_category"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["seminar_category"]->key;
 $_smarty_tpl->tpl_vars["seminar_category"]->iteration++;
 $_smarty_tpl->tpl_vars["seminar_category"]->index++;
 $_smarty_tpl->tpl_vars["seminar_category"]->first = $_smarty_tpl->tpl_vars["seminar_category"]->index === 0;
 $_smarty_tpl->tpl_vars["seminar_category"]->last = $_smarty_tpl->tpl_vars["seminar_category"]->iteration === $_smarty_tpl->tpl_vars["seminar_category"]->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["LoopSeminnar"]['first'] = $_smarty_tpl->tpl_vars["seminar_category"]->first;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["LoopSeminnar"]['iteration']++;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["LoopSeminnar"]['last'] = $_smarty_tpl->tpl_vars["seminar_category"]->last;
?>
							<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['LoopSeminnar']['iteration']%6==1||$_smarty_tpl->getVariable('smarty')->value['foreach']['LoopSeminnar']['first']==1) {?>
							<div class="seminar_navi mb10">
							<ul>
							<?php }?>
								<li><a href="./<?php if ($_smarty_tpl->tpl_vars['key']->value!=0) {?>?sid=<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
<?php }?><?php if ($_smarty_tpl->tpl_vars['arr_get']->value['date']!=null) {?>&date=<?php echo $_smarty_tpl->tpl_vars['arr_get']->value['date'];?>
<?php }?>"><?php echo $_smarty_tpl->tpl_vars['seminar_category']->value;?>
</a></li>
							<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['LoopSeminnar']['iteration']%6==0||$_smarty_tpl->getVariable('smarty')->value['foreach']['LoopSeminnar']['last']==1) {?>
							</ul>
							</div>
							<?php }?>
							<?php } ?>
					</div>
				</div>
				<div class="row">
					<?php  $_smarty_tpl->tpl_vars["seminar"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["seminar"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['t_seminar']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars["seminar"]->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars["seminar"]->iteration=0;
 $_smarty_tpl->tpl_vars["seminar"]->index=-1;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["LoopSeminnar"]['iteration']=0;
foreach ($_from as $_smarty_tpl->tpl_vars["seminar"]->key => $_smarty_tpl->tpl_vars["seminar"]->value) {
$_smarty_tpl->tpl_vars["seminar"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["seminar"]->key;
 $_smarty_tpl->tpl_vars["seminar"]->iteration++;
 $_smarty_tpl->tpl_vars["seminar"]->index++;
 $_smarty_tpl->tpl_vars["seminar"]->first = $_smarty_tpl->tpl_vars["seminar"]->index === 0;
 $_smarty_tpl->tpl_vars["seminar"]->last = $_smarty_tpl->tpl_vars["seminar"]->iteration === $_smarty_tpl->tpl_vars["seminar"]->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["LoopSeminnar"]['first'] = $_smarty_tpl->tpl_vars["seminar"]->first;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["LoopSeminnar"]['iteration']++;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["LoopSeminnar"]['last'] = $_smarty_tpl->tpl_vars["seminar"]->last;
?>
					<div class="col-sm-4 col-xs-6">
						<div class="seminar_unit">
							<a href="./detail.php?id=<?php echo $_smarty_tpl->tpl_vars['seminar']->value['id_seminar'];?>
<?php if ($_smarty_tpl->tpl_vars['arr_get']->value['page']!=null) {?>&page=<?php echo $_smarty_tpl->tpl_vars['arr_get']->value['page'];?>
<?php }?>">
								<div class="photo hidden-only">
									<div class="img_rect"><img src="<?php if ($_smarty_tpl->tpl_vars['seminar']->value['image1']) {?>/common/photo/seminar/image1/m_<?php echo $_smarty_tpl->tpl_vars['seminar']->value['image1'];?>
<?php } else { ?>/common/image/contents/dummy.jpg<?php }?>" alt="<?php echo $_smarty_tpl->tpl_vars['seminar']->value['title'];?>
"></div>
								</div>
								<div class="photo visible-only img_back">
									<img src="<?php if ($_smarty_tpl->tpl_vars['seminar']->value['image1']) {?>/common/photo/seminar/image1/m_<?php echo $_smarty_tpl->tpl_vars['seminar']->value['image1'];?>
<?php } else { ?>/common/image/contents/dummy.jpg<?php }?>" alt="<?php echo $_smarty_tpl->tpl_vars['seminar']->value['title'];?>
">
								</div>
								<div class="text height-1">
									<div class="mb15">
										<span class="tag_1"><?php echo $_smarty_tpl->tpl_vars['OptionSeminarCategory']->value[$_smarty_tpl->tpl_vars['seminar']->value['seminar_category']];?>
</span>
										<span class="place"><i class="fa fa-map-marker-alt"></i><?php echo $_smarty_tpl->tpl_vars['seminar']->value['area'];?>
</span>
									</div>
									<h3><?php echo $_smarty_tpl->tpl_vars['seminar']->value['title'];?>
</h3>
									<div class="date">
										<?php if (smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_end'],"%Y-%m-%d")!=smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_start'],"%Y-%m-%d")) {?>
											<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_start'],"%Y/%m/%d %H:%M");?>
 ～ <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_end'],"%Y/%m/%d %H:%M");?>
開催
										<?php } else { ?>
											<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_start'],"%Y/%m/%d %H:%M");?>
 ～ <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_end'],"%H:%M");?>
 開催
										<?php }?>
									</div>
								</div>
							</a>
							<?php if (smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_start'],"%Y-%m-%d %H:%M:%S")>smarty_modifier_date_format(time(),"%Y-%m-%d %H:%M:%S")) {?>
							<div class="tag_2"><span>開催予定</span></div>
							<?php } elseif (smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_start'],"%Y-%m-%d %H:%M:%S")<=smarty_modifier_date_format(time(),"%Y-%m-%d %H:%M:%S")&&smarty_modifier_date_format(time(),"%Y-%m-%d %H:%M:%S")<=smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_end'],"%Y-%m-%d %H:%M:%S")) {?>
							<div class="tag_2 _type2"><span>開催中</span></div>
							<?php } elseif (smarty_modifier_date_format(time(),"%Y-%m-%d %H:%M:%S")>smarty_modifier_date_format($_smarty_tpl->tpl_vars['seminar']->value['date_end'],"%Y-%m-%d %H:%M:%S")) {?>
							<div class="tag_2 _type3"><span>開催済み</span></div>
							<?php }?>
						</div>
					</div>
					<?php }
if (!$_smarty_tpl->tpl_vars["seminar"]->_loop) {
?>
					<div class="pos_ac">セミナー実績はありません。</div>
					<?php } ?>
				</div>
				<?php if ($_smarty_tpl->tpl_vars['page_navi']->value['LinkPage']) {?>
				<div class="list_pager">
					<ul>
						<?php echo $_smarty_tpl->tpl_vars['page_navi']->value['LinkPage'];?>

					</ul>
				</div>
				<?php }?>
			</div>
		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
