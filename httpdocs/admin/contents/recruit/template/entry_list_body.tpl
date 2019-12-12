			{include file=$template_pagenavi}
			<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15">
				<thead>
					<tr>
						<th>お名前</th>
						<th>性別</th>
						<th>住所</th>
						<th>メール</th>
						<th>電話番号</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$t_recruit_contact item="recruit_contact" name="loopRecruit"}
					<tr>
						<td><a href="./entry_detail.php?id={$recruit_contact.id_recruit_contact}">{$recruit_contact.name}</a></td>
						<td>{$recruit_contact.sex}</td>
						<td>{$recruit_contact.address}</td>
						<td>{$recruit_contact.mail}</td>
						<td>{$recruit_contact.tel}</td>
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
