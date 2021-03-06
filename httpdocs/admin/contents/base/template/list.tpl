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
			<th>拠点名</th>
			<th class="photo">写真</th>
			<th class="showhide">表示</th>
			<th class="delete">削除</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$t_base item="base" name="loopBase"}
		<tr id="{$base.id_base}">
			<td class="move_i">{if $arr_post.mode|default:"" == "search"}{else}<i class="fa fa-sort"><span></span></i>{/if}</td>
			<td><a href="./edit.php?id={$base.id_base}">{$base.name}</a></td>
			<td class="pos_al">
				<div class="lightBoxGallery">
					{foreach from=$_ARR_IMAGE item="file" name="file"}
						{if $base[$file.name]}
							<a href="{$_IMAGEFULLPATH}/base/{$file.name}/l_{$base[$file.name]}" title="{$file.comment|default:""}" rel="lightbox[]"><img src="{$_IMAGEFULLPATH}/base/{$file.name}/s_{$base[$file.name]}" width="50" /></a>
						{/if}
					{/foreach}
				</div>
			</td>
			<td class="pos_ac">
				<div class="switch">
					<div class="onoffswitch">
						<input type="checkbox" value="1" class="onoffswitch-checkbox btn_display" id="display{$base.id_base}" data-id="{$base.id_base}"{if $base.display_flg == 1} checked{/if}>
						<label class="onoffswitch-label" for="display{$base.id_base}">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
					</div>
				</div>
			</td>
			<td class="pos_ac">
				<a href="javascript:void(0)" class="btn btn-danger btn_delete" data-id="{$base.id_base}">削除</a>
			</td>
		</tr>
		{foreachelse}
		<tr>
			<td colspan="6">{$_CONTENTS_NAME}は見つかりません。</td>
		</tr>
		{/foreach}
	</tbody>
	<tfoot>
		<tr>
			<td colspan="10"><ul class="pagination pull-right">
				</ul></td>
		</tr>
	</tfoot>
</table>
{include file=$template_pagenavi}
