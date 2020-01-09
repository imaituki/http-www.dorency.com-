<div id="common_product_foot">
	{if $mode != "menu"}
	<div class="center">
		<div id="contact_area">
			<div class="contact_area bg_gray">
				<div class="row">
					<div class="col-xs-6">
						<div class="tel_unit cg">
							<h4>お電話でのお問い合わせ</h4>
							<span class="tel" data-tel="{$mst_siteconf.tel1}"><i class="fa fa-phone-alt"></i>{$mst_siteconf.tel1}</span>
						</div>
					</div>
					<div class="col-xs-6">
						<a href="{$_RENEWAL_DIR}/contact/" class="button _green _large"><i class="fa fa-envelope"></i>お問い合わせフォーム</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	{/if}
	<div class="wrapper-t">
		<h2 class="hl_4">関連メニュー</h2>
		<div class="row">
			{if $_HTML_HEADER.id != "product"}
			<div class="col-xs-4 height-1">
				<div class="page_link">
					<a href="{$_RENEWAL_DIR}/product/">
						<div class="photo"><img src="{$_RENEWAL_DIR}/common/image/contents/menu1.jpg" alt="鮮度保持材"></div>
						<div class="text">鮮度保持材</div>
					</a>
				</div>
			</div>
			{/if}
			{if $_HTML_HEADER.id != "way"}
			<div class="col-xs-4 height-1">
				<div class="page_link">
					<a href="{$_RENEWAL_DIR}/way/">
						<div class="photo"><img src="{$_RENEWAL_DIR}/common/image/contents/menu2.jpg" alt="用途のご紹介"></div>
						<div class="text">用途のご紹介</div>
					</a>
				</div>
			</div>
			{/if}
			{if $_HTML_HEADER.id != "virtual"}
			<div class="col-xs-4 height-1">
				<div class="page_link">
					<a href="{$_RENEWAL_DIR}/virtual/">
						<div class="photo"><img src="{$_RENEWAL_DIR}/common/image/contents/menu3.jpg" alt="バーチャル工場見学"></div>
						<div class="text">バーチャル工場見学</div>
					</a>
				</div>
			</div>
			{/if}
			{if $_HTML_HEADER.id != "cairo"}
			<div class="col-xs-4 height-1">
				<div class="page_link">
					<a href="{$_RENEWAL_DIR}/cairo/">
						<div class="photo"><img src="{$_RENEWAL_DIR}/common/image/contents/menu4.jpg" alt="カイロ"></div>
						<div class="text">カイロ</div>
					</a>
				</div>
			</div>
			{/if}
		</div>
	</div>
</div>
