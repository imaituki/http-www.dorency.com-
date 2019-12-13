			{literal}
			<script type="text/javascript">
			sortableInit();
			</script>
			{/literal}
			{include file=$template_pagenavi}
			<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15" id="sortable-table">
				<thead>
					<tr>
						<th></th>
						<th>製品名</th>
						<th class="showhide">表示</th>
						<th class="delete">削除</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$t_product item="product" name="loopInProduct"}
					<tr id="{$product.id_product}">
						<td class="move_i">{if $arr_post.mode|default:"" == "search"}{else}<i class="fa fa-sort"><span></span></i>{/if}</td>
						<td><a href="./edit.php?id={$product.id_product}">{$product.name}</a></td>
						<td class="pos_al">
							<div class="lightBoxGallery">
								{foreach from=$_ARR_IMAGE item="file" name="file"}
									{if $product[$file.name]}
										<a href="{$_IMAGEFULLPATH}/product/{$file.name}/l_{$product[$file.name]}" title="{$file.comment|default:""}" data-gallery=""><img src="{$_IMAGEFULLPATH}/product/{$file.name}/s_{$product[$file.name]}" width="50" /></a>
									{/if}
									{if $smarty.foreach.file.iteration % 3 == 0}<br />{/if}
								{/foreach}
							</div>
						</td>
						<td class="pos_ac">
							<div class="switch">
								<div class="onoffswitch">
									<input type="checkbox" value="1" class="onoffswitch-checkbox btn_display" id="display{$product.id_product}" data-id="{$product.id_product}"{if $product.display_flg == 1} checked{/if}>
									<label class="onoffswitch-label" for="display{$product.id_product}">
										<span class="onoffswitch-inner"></span>
										<span class="onoffswitch-switch"></span>
									</label>
								</div>
							</div>
						</td>
						<td class="pos_ac">
							<a href="javascript:void(0)" class="btn btn-danger btn_delete" data-id="{$product.id_product}">削除</a>
						</td>
					</tr>
					{foreachelse}
					<tr>
						<td colspan="6">{$_CONTENTS_NAME}は見つかりません。</td>
					</tr>
					{/foreach}
				</tbody>
			</table>

			{include file=$template_pagenavi}
