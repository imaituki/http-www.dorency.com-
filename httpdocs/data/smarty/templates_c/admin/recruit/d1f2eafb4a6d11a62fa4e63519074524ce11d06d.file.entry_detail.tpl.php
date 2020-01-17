<?php /* Smarty version Smarty-3.1.18, created on 2020-01-16 14:Jan:th
         compiled from "../template/entry_detail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16695179915e1ff278a4b532-48460050%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd1f2eafb4a6d11a62fa4e63519074524ce11d06d' => 
    array (
      0 => '../template/entry_detail.tpl',
      1 => 1579151971,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16695179915e1ff278a4b532-48460050',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_CONTENTS_NAME' => 0,
    '_RENEWAL_DIR' => 0,
    'template_javascript' => 0,
    'template_secondary' => 0,
    'template_header' => 0,
    't_recruit' => 0,
    't_recruit_contact' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e1ff278ae1ae0_23117093',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e1ff278ae1ae0_23117093')) {function content_5e1ff278ae1ae0_23117093($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_select_ken')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_select_ken.php';
?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?php echo $_smarty_tpl->tpl_vars['_CONTENTS_NAME']->value;?>
｜管理画面</title>
<link href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/css/animate.css" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/css/plugins/codemirror/codemirror.css" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/css/plugins/codemirror/ambiance.css" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/css/style.css" rel="stylesheet">
<!-- FooTable -->
<link href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/css/plugins/footable/footable.core.css" rel="stylesheet">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/js/input.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/js/preview.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/js/plugins/datapicker/bootstrap-datepicker-import.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/common/js/ckeditor/ckeditor.js"></script>
</head>
<body class="fixed-sidebar no-skin-config">
<div id="wrapper">
	<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_secondary']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('action'=>"public",'manage'=>"recruit"), 0);?>

	<div id="page-wrapper" class="gray-bg">
		<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-10">
				<h2>エントリー確認</h2>
				<ol class="breadcrumb">
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/admin/">Home</a></li>
					<li><a href="./"><?php echo $_smarty_tpl->tpl_vars['_CONTENTS_NAME']->value;?>
</a></li>
					<li class="active"><strong>エントリー確認</strong></li>
				</ol>
			</div>
			<div class="col-lg-2"></div>
		</div>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5><?php echo $_smarty_tpl->tpl_vars['_CONTENTS_NAME']->value;?>
管理　確認 </h5>
						</div>
						<section>
							<div class="ibox">
								<div class="ibox-title">
									<h4>応募者情報</h4>
								</div>
								<div class="ibox-content">
									<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15">
										<tbody>
											<tr>
												<th width="120">募集職種</th>
												<td>
													<?php echo $_smarty_tpl->tpl_vars['t_recruit']->value['recruitment'];?>

												</td>
											</tr>
											<tr>
												<th width="120">お名前</th>
												<td>
													<?php echo $_smarty_tpl->tpl_vars['t_recruit_contact']->value['name'];?>

												</td>
											</tr>
											<tr>
												<th>フリガナ</th>
												<td>
													<?php echo $_smarty_tpl->tpl_vars['t_recruit_contact']->value['ruby'];?>

												</td>
											</tr>
											<tr>
												<th>ご住所</th>
												<td>
													〒<?php echo $_smarty_tpl->tpl_vars['t_recruit_contact']->value['zip'];?>
<br>
													<?php echo smarty_function_html_select_ken(array('selected'=>(($tmp = @$_smarty_tpl->tpl_vars['t_recruit_contact']->value['prefecture'])===null||$tmp==='' ? '' : $tmp),'pre'=>1),$_smarty_tpl);?>
<?php echo $_smarty_tpl->tpl_vars['t_recruit_contact']->value['address'];?>

												</td>
											</tr>
											<tr>
												<th>電話番号</th>
												<td>
													<?php echo (($tmp = @$_smarty_tpl->tpl_vars['t_recruit_contact']->value['tel'])===null||$tmp==='' ? "-" : $tmp);?>

												</td>
											</tr>
											<tr>
												<th>メールアドレス</th>
												<td>
													<?php echo $_smarty_tpl->tpl_vars['t_recruit_contact']->value['mail'];?>

												</td>
											</tr>
											<tr>
												<th>自由項目</th>
												<td>
													<?php echo nl2br($_smarty_tpl->tpl_vars['t_recruit_contact']->value['comment']);?>

												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</section>
						<div class="pos_al">
							<a href="./entry_list.php?id=<?php echo $_smarty_tpl->tpl_vars['t_recruit_contact']->value['id_recruit'];?>
" class="btn btn-default">一覧へ戻る</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<?php }} ?>
