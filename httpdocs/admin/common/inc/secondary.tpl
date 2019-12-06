<nav class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav metismenu" id="side-menu" style="padding-bottom:30px;">
			<li class="nav-header">
				{*
				<div class="dropdown profile-element">
					<span>
						{if !empty($smarty.cookies.ad_image)}
							<img alt="image" class="img-circle" src="/common/photo/staff/image/s_{$smarty.cookies.ad_image}" /></span>
						{else}
						{/if}
					<a data-toggle="dropdown" class="dropdown-toggle" href="javascript:void(0)">
						<span class="clear">
							<span class="block m-t-xs"><strong class="font-bold">{$smarty.cookies.ad_name}</strong></span>
						</span>
					</a>
						<span><a class="text-muted text-xs " href="{$_ADMIN.home}/manual/manual.pdf" target="_blank">管理者マニュアル</a></span>
					<ul class="dropdown-menu animated fadeInRight m-t-xs">

						<li><a href="bottom_template/profile.html">管理者設定</a></li>
						<li class="divider"></li>

						<li><a href="{$_ADMIN.home}/logout.php">ログアウト</a></li>
					</ul>
				</div>
				*}
			</li>
			<li{if $manage == ""} class="active"{/if}><a href="{$_ADMIN.home}/"><i class="fa fa-home"></i><span class="nav-label">HOME</span></a></li>
			<li {if $action == information}class="active"{/if}>
				<a href="#"><i class="fa fa-info-circle"></i><span class="nav-label">お知らせ管理</span><span class="fa arrow"></span></a>
				<ul class="nav nav-second-level collapse">
					<li {if $manage == information}class="active"{/if}><a href="{$_ADMIN.home}/contents/information/">お知らせ一覧</a></li>
					<li {if $manage == information_new}class="active"{/if}><a href="{$_ADMIN.home}/contents/information/php/new.php">お知らせ登録</a></li>
					<li {if $manage == information_category}class="active"{/if}><a href="{$_ADMIN.home}/contents/information_category/">お知らせカテゴリ一覧</a></li>
					<li {if $manage == information_category_new}class="active"{/if}><a href="{$_ADMIN.home}/contents/information_category/php/new.php">お知らせカテゴリ登録</a></li>
				</ul>
			</li>
			<li {if $action == seminar}class="active"{/if}>
				<a href="#"><i class="fa fa-pencil"></i><span class="nav-label">セミナー管理</span><span class="fa arrow"></span></a>
				<ul class="nav nav-second-level collapse">
					<li {if $manage == seminar}class="active"{/if}><a href="{$_ADMIN.home}/contents/seminar/">セミナー一覧</a></li>
					<li {if $manage == seminar_new}class="active"{/if}><a href="{$_ADMIN.home}/contents/seminar/php/new.php">セミナー登録</a></li>
					<li {if $manage == seminar_category}class="active"{/if}><a href="{$_ADMIN.home}/contents/seminar_category/">セミナーカテゴリ一覧</a></li>
					<li {if $manage == seminar_category_new}class="active"{/if}><a href="{$_ADMIN.home}/contents/seminar_category/php/new.php">セミナーカテゴリ登録</a></li>
				</ul>
			</li>
			<li{if $manage == "siteconf"} class="active"{/if}><a href="{$_ADMIN.home}/contents/siteconf/"><i class="fa fa-gear"></i><span class="nav-label">サイト設定</span></a></li>
		</ul>
	</div>
</nav>
