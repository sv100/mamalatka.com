<?php
/**
* TemplateMela
* @copyright  Copyright (c) 2010 TemplateMela. (http://www.templatemela.com)
* @license    http://www.templatemela.com/license/
*/
?>
<?php echo $header; ?>
<script language="javascript">
$(document).ready(function() {     
$('#templatemela_position').change(function(){     
if($('#templatemela_position').val() == 1) {     
$('#layout_sort').show('slow');      
} else {     
$('#layout_sort').hide('slow');        
}     
});     
});     
</script>


<div id="content">
	<div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
	</div>
	
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	
	<div class="box">
		<div class="heading">
		<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
		</div>
		
		<div class="content">
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
			<div class="vtabs">
			<?php $module_row = 1; ?>
			<?php foreach ($modules as $module) { ?>
			<a href="#tab-module-<?php echo $module_row; ?>" id="module-<?php echo $module_row; ?>"><?php echo $tab_module . ' ' . $module_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#module-<?php echo $module_row; ?>').remove(); $('#tab-module-<?php echo $module_row; ?>').remove(); return false;" /></a>
			<?php $module_row++; ?>
			<?php } ?>
			<span id="module-add"><?php echo $button_add_module; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addModule();" /></span> 
		    </div>
			
		<?php $module_row = 1; ?>
		<?php foreach ($modules as $module) { ?>
			<div id="tab-module-<?php echo $module_row; ?>" class="vtabs-content">
			<div id="language-<?php echo $module_row; ?>" class="htabs">
			<?php foreach ($languages as $language) { ?>
			<a href="#tab-language-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
			<?php } ?>
			</div>
			<?php foreach ($languages as $language) { ?>
			<div id="tab-language-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>">
			<table class="form">
			
			
			<tr>
			<td><?php echo $entry_title; ?></td>
			<td>
			<input type="text" name="magnorcms_module[<?php echo $module_row; ?>][headertitle][<?php echo $language['language_id']; ?>]" 
			id="headertitle-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>"
			value="<?php echo isset($module['headertitle'][$language['language_id']]) ? $module['headertitle'][$language['language_id']] : ''; ?>" >
			
			
			</td>
			</tr>
			
			
			
			<tr>
			<td><?php echo $entry_description; ?></td>
			<td>
			<textarea name="magnorcms_module[<?php echo $module_row; ?>][description][<?php echo $language['language_id']; ?>]" id="description-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>">
			<?php echo isset($module['description'][$language['language_id']]) ? $module['description'][$language['language_id']] : ''; ?>
			</textarea>
			</td>
			</tr>
			</table>
			</div>
			<?php } ?>
			<table class="form" style="margin-bottom:0;">
			<tr>
			<td><?php echo $entry_position; ?></td>
			<td><select name="magnorcms_module[<?php echo $module_row; ?>][position]" id="templatemela_position_<?php echo $module_row; ?>" onchange="getposition(this.value, <?php echo $module_row; ?>);">

            <?php if ($module['position'] == 'content_topl') { ?>
            <option value="content_topl" selected="selected"><?php echo $text_content_topl; ?></option>
            <?php } else { ?>
            <option value="content_topl"><?php echo $text_content_topl; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_topc') { ?>
            <option value="content_topc" selected="selected"><?php echo $text_content_topc; ?></option>
            <?php } else { ?>
            <option value="content_topc"><?php echo $text_content_topc; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_topr') { ?>
            <option value="content_topr" selected="selected"><?php echo $text_content_topr; ?></option>
            <?php } else { ?>
            <option value="content_topr"><?php echo $text_content_topr; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_menu_over') { ?>
            <option value="content_menu_over" selected="selected"><?php echo $text_content_menu_over; ?></option>
            <?php } else { ?>
            <option value="content_menu_over"><?php echo $text_content_menu_over; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_menu_overl') { ?>
            <option value="content_menu_overl" selected="selected"><?php echo $text_content_menu_overl; ?></option>
            <?php } else { ?>
            <option value="content_menu_overl"><?php echo $text_content_menu_overl; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_menu_overc') { ?>
            <option value="content_menu_overc" selected="selected"><?php echo $text_content_menu_overc; ?></option>
            <?php } else { ?>
            <option value="content_menu_overc"><?php echo $text_content_menu_overc; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_menu_overr') { ?>
            <option value="content_menu_overr" selected="selected"><?php echo $text_content_menu_overr; ?></option>
            <?php } else { ?>
            <option value="content_menu_overr"><?php echo $text_content_menu_overr; ?></option>
            <?php } ?>
			<?php if ($module['position'] == 'content_menu_under') { ?>
            <option value="content_menu_under" selected="selected"><?php echo $text_content_menu_under; ?></option>
            <?php } else { ?>
            <option value="content_menu_under"><?php echo $text_content_menu_under; ?></option>
            <?php } ?>
			<?php if ($module['position'] == 'content_menu_underl') { ?>
            <option value="content_menu_underl" selected="selected"><?php echo $text_content_menu_underl; ?></option>
            <?php } else { ?>
            <option value="content_menu_underl"><?php echo $text_content_menu_underl; ?></option>
            <?php } ?>
			<?php if ($module['position'] == 'content_menu_underc') { ?>
            <option value="content_menu_underc" selected="selected"><?php echo $text_content_menu_underc; ?></option>
            <?php } else { ?>
            <option value="content_menu_underc"><?php echo $text_content_menu_underc; ?></option>
            <?php } ?>
			<?php if ($module['position'] == 'content_menu_underr') { ?>
            <option value="content_menu_underr" selected="selected"><?php echo $text_content_menu_underr; ?></option>
            <?php } else { ?>
            <option value="content_menu_underr"><?php echo $text_content_menu_underr; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_footer') { ?>
            <option value="content_footer_overl" selected="selected"><?php echo $text_content_footer_overl; ?></option>
            <?php } else { ?>
            <option value="content_footer_overl"><?php echo $text_content_footer_overl; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_footer_overc') { ?>
            <option value="content_footer_overc" selected="selected"><?php echo $text_content_footer_overc; ?></option>
            <?php } else { ?>
            <option value="content_footer_overc"><?php echo $text_content_footer_overc; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_footer_overr') { ?>
            <option value="content_footer_overr" selected="selected"><?php echo $text_content_footer_overr; ?></option>
            <?php } else { ?>
            <option value="content_footer_overr"><?php echo $text_content_footer_overr; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_footer') { ?>
            <option value="content_footer" selected="selected"><?php echo $text_content_footer; ?></option>
            <?php } else { ?>
            <option value="content_footer"><?php echo $text_content_footer; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_footer_underl') { ?>
            <option value="content_footer_underl" selected="selected"><?php echo $text_content_footer_underl; ?></option>
            <?php } else { ?>
            <option value="content_footer_underl"><?php echo $text_content_footer_underl; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_footer_underc') { ?>
            <option value="content_footer_underc" selected="selected"><?php echo $text_content_footer_underc; ?></option>
            <?php } else { ?>
            <option value="content_footer_underc"><?php echo $text_content_footer_underc; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_footer_underr') { ?>
            <option value="content_footer_underr" selected="selected"><?php echo $text_content_footer_underr; ?></option>
            <?php } else { ?>
            <option value="content_footer_underr"><?php echo $text_content_footer_underr; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_bottoml') { ?>
            <option value="content_bottoml" selected="selected"><?php echo $text_content_bottoml; ?></option>
            <?php } else { ?>
            <option value="content_bottoml"><?php echo $text_content_bottoml; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_bottomc') { ?>
            <option value="content_bottomc" selected="selected"><?php echo $text_content_bottomc; ?></option>
            <?php } else { ?>
            <option value="content_bottomc"><?php echo $text_content_bottomc; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_bottomr') { ?>
            <option value="content_bottomr" selected="selected"><?php echo $text_content_bottomr; ?></option>
            <?php } else { ?>
            <option value="content_bottomr"><?php echo $text_content_bottomr; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_product_titlel') { ?>
            <option value="content_product_titlel" selected="selected"><?php echo $text_content_product_titlel; ?></option>
            <?php } else { ?>
            <option value="content_product_titlel"><?php echo $text_content_product_titlel; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_product_titlec') { ?>
            <option value="content_product_titlec" selected="selected"><?php echo $text_content_product_titlec; ?></option>
            <?php } else { ?>
            <option value="content_product_titlec"><?php echo $text_content_product_titlec; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_product_titler') { ?>
            <option value="content_product_titler" selected="selected"><?php echo $text_content_product_titler; ?></option>
            <?php } else { ?>
            <option value="content_product_titler"><?php echo $text_content_product_titler; ?></option>
            <?php } ?>
             <?php if ($module['position'] == 'content_category_titlel') { ?>
            <option value="content_category_titlel" selected="selected"><?php echo $text_content_category_titlel; ?></option>
            <?php } else { ?>
            <option value="content_category_titlel"><?php echo $text_content_category_titlel; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_category_titlec') { ?>
            <option value="content_category_titlec" selected="selected"><?php echo $text_content_category_titlec; ?></option>
            <?php } else { ?>
            <option value="content_category_titlec"><?php echo $text_content_category_titlec; ?></option>
            <?php } ?>
            <?php if ($module['position'] == 'content_category_titler') { ?>
            <option value="content_category_titler" selected="selected"><?php echo $text_content_category_titler; ?></option>
            <?php } else { ?>
            <option value="content_category_titler"><?php echo $text_content_category_titler; ?></option>
            <?php } ?>
   		
			<?php if ($module['position'] == 'content_top') { ?>
			<option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
			<?php } else { ?>
			<option value="content_top"><?php echo $text_content_top; ?></option>
			<?php } ?>
			<?php if ($module['position'] == 'content_bottom') { ?>
			<option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
			<?php } else { ?>
			<option value="content_bottom"><?php echo $text_content_bottom; ?></option>
			<?php } ?>
			<?php if ($module['position'] == 'column_left') { ?>
			<option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
			<?php } else { ?>
			<option value="column_left"><?php echo $text_column_left; ?></option>
			<?php } ?>
			<?php if ($module['position'] == 'column_right') { ?>
			<option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
			<?php } else { ?>
			<option value="column_right"><?php echo $text_column_right; ?></option>
			<?php } ?>
			
			<?php if ($module['position'] == 'content_footer') { ?>
			<option value="content_footer" selected="selected"><?php echo $text_content_footer; ?></option>
			<?php } else { ?>
			<option value="content_footer"><?php echo $text_content_footer; ?></option>
			<?php } ?>
			
			<?php if ($module['position'] == 'content_footer_block') { ?>
			<option value="content_footer_block" selected="selected"><?php echo $text_content_footer_block; ?></option>
			<?php } else { ?>
			<option value="content_footer_block"><?php echo $text_content_footer_block; ?></option>
			<?php } ?>
			
			</select></td>
			</tr>
			
			
			<tr>
			<td><?php echo $entry_status; ?></td>
			<td><select name="magnorcms_module[<?php echo $module_row; ?>][status]">
			<?php if ($module['status']) { ?>
			<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
			<option value="0"><?php echo $text_disabled; ?></option>
			<?php } else { ?>
			<option value="1"><?php echo $text_enabled; ?></option>
			<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
			<?php } ?>
			</select></td>
			</tr>                             
			
			<table id="layout_sort_<?php echo $module_row; ?>" class="form" style=" <?php if ($module['position'] == 'content_footer' || $module['position'] =='content_footer_block') echo 'display:none'; else echo 'display:block';?>" cl > 
			
			<tr>
			<td style="width:201px; float:left;padding-bottom:16px;"><?php echo $entry_layout; ?></td>
			<td style="width:100%;"><select name="magnorcms_module[<?php echo $module_row; ?>][layout_id]">
			<?php foreach ($layouts as $layout) { ?>
			<?php if ($layout['layout_id'] == $module['layout_id']) { ?>
			<option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
			<?php } ?>
			<?php } ?>
			</select></td>
			</tr>
			
			<tr>
			<td style="width:201px;float:left;padding-bottom:18px;"><?php echo $entry_sort_order; ?></td>
			<td style="width:100%;"><input type="text" name="magnorcms_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
			</tr>
			</table>
			
			</table>
			</div>
		<?php $module_row++; ?>
		<?php } ?>
		</form>
		</div>
	</div>
</div>
<script src="view/javascript/ckeditor/ckeditor.js"></script> 
<script ><!--
<?php $module_row = 1; ?>
<?php foreach ($modules as $module) { ?>
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('description-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>', {
filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
<?php $module_row++; ?>
<?php } ?>
//--></script> 
<script ><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
html  = '<div id="tab-module-' + module_row + '" class="vtabs-content">';
html += '  <div id="language-' + module_row + '" class="htabs">';
<?php foreach ($languages as $language) { ?>
html += '    <a href="#tab-language-'+ module_row + '-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>';
<?php } ?>
html += '  </div>';

<?php foreach ($languages as $language) { ?>
html += '    <div id="tab-language-'+ module_row + '-<?php echo $language['language_id']; ?>">';
html += '      <table class="form">';


html += '        <tr>';
html += '          <td><?php echo $entry_title; ?></td>';
html += '          <td><input type="text" name="magnorcms_module[' + module_row + '][headertitle][<?php echo $language['language_id']; ?>]" id="headertitle-' + module_row + '-<?php echo $language['language_id']; ?>" /></td>';
html += '        </tr>';



html += '        <tr>';
html += '          <td><?php echo $entry_description; ?></td>';
html += '          <td><textarea name="magnorcms_module[' + module_row + '][description][<?php echo $language['language_id']; ?>]" id="description-' + module_row + '-<?php echo $language['language_id']; ?>"></textarea></td>';
html += '        </tr>';



html += '      </table>';
html += '    </div>';
<?php } ?>

html += '  <table class="form" style="margin-bottom:0;">';
html += '    <tr>';
html += '      <td><?php echo $entry_position; ?></td>';
html += '      <td><select name="magnorcms_module[' + module_row + '][position]" onchange="getposition(this.value,' + module_row + ');"> ';

			html += '      <option value="content_topl"><?php echo $text_content_topl; ?></option>';
			html += '      <option value="content_topc"><?php echo $text_content_topc; ?></option>';
			html += '      <option value="content_topr"><?php echo $text_content_topr; ?></option>';
			html += '      <option value="content_menu_over"><?php echo $text_content_menu_over; ?></option>';
			html += '      <option value="content_menu_overc"><?php echo $text_content_menu_overl; ?></option>';
			html += '      <option value="content_menu_overc"><?php echo $text_content_menu_overc; ?></option>';
			html += '      <option value="content_menu_overr"><?php echo $text_content_menu_overr; ?></option>';
			html += '      <option value="content_menu_under"><?php echo $text_content_menu_under; ?></option>';
			html += '      <option value="content_menu_underr"><?php echo $text_content_menu_underl; ?></option>';
			html += '      <option value="content_menu_underc"><?php echo $text_content_menu_underc; ?></option>';
			html += '      <option value="content_menu_underr"><?php echo $text_content_menu_underr; ?></option>';
			html += '      <option value="content_footer_overl"><?php echo $text_content_footer_overl; ?></option>';
			html += '      <option value="content_footer_overc"><?php echo $text_content_footer_overc; ?></option>';
			html += '      <option value="content_footer_overr"><?php echo $text_content_footer_overr; ?></option>';
			html += '      <option value="content_footer"><?php echo $text_content_footer; ?></option>';
			html += '      <option value="content_footer_underl"><?php echo $text_content_footer_underl; ?></option>';
			html += '      <option value="content_footer_underc"><?php echo $text_content_footer_underc; ?></option>';
			html += '      <option value="content_footer_underr"><?php echo $text_content_footer_underr; ?></option>';
			html += '      <option value="content_bottoml"><?php echo $text_content_bottoml; ?></option>';
			html += '      <option value="content_bottomc"><?php echo $text_content_bottomc; ?></option>';
			html += '      <option value="content_bottomr"><?php echo $text_content_bottomr; ?></option>';
			html += '      <option value="content_product_titlel"><?php echo $text_content_product_titlel; ?></option>';
			html += '      <option value="content_product_titlec"><?php echo $text_content_product_titlec; ?></option>';
			html += '      <option value="content_product_titler"><?php echo $text_content_product_titler; ?></option>';
			html += '      <option value="content_category_titlel"><?php echo $text_content_category_titlel; ?></option>';
			html += '      <option value="content_category_titlec"><?php echo $text_content_category_titlec; ?></option>';
			html += '      <option value="content_category_titler"><?php echo $text_content_category_titler; ?></option>';
			
html += '        <option value="content_top"><?php echo $text_content_top; ?></option>';
html += '        <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
html += '        <option value="column_left"><?php echo $text_column_left; ?></option>';
html += '        <option value="column_right"><?php echo $text_column_right; ?></option>';
html += '        <option value="content_footer"><?php echo $text_content_footer; ?></option>';
html += '        <option value="content_footer_block"><?php echo $text_content_footer; ?></option>';
html += '      </select></td>';
html += '    </tr>';
html += '    <tr>';
html += '      <td><?php echo $entry_status; ?></td>';
html += '      <td><select name="magnorcms_module[' + module_row + '][status]">';
html += '        <option value="1"><?php echo $text_enabled; ?></option>';
html += '        <option value="0"><?php echo $text_disabled; ?></option>';
html += '      </select></td>';
html += '    </tr>';
html += '    <table id="layout_sort_'+ module_row + '" class="form">';
html += '    <tr>';
html += '      <td><?php echo $entry_layout; ?></td>';
html += '      <td><select name="magnorcms_module[' + module_row + '][layout_id]">';
<?php foreach ($layouts as $layout) { ?>
html += '           <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
<?php } ?>
html += '      </select></td>';
html += '    </tr>';
html += '    <tr>';
html += '      <td><?php echo $entry_sort_order; ?></td>';
html += '      <td><input type="text" name="magnorcms_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
html += '    </tr>';
html += '   </table>';
html += '  </table>'; 
html += '</div>';

$('#form').append(html);

<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('description-' + module_row + '-<?php echo $language['language_id']; ?>', {
filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});  
<?php } ?>

$('#language-' + module_row + ' a').tabs();

$('#module-add').before('<a href="#tab-module-' + module_row + '" id="module-' + module_row + '"><?php echo $tab_module; ?> ' + module_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#module-' + module_row + '\').remove(); $(\'#tab-module-' + module_row + '\').remove(); return false;" /></a>');

$('.vtabs a').tabs();

$('#module-' + module_row).trigger('click');

module_row++;
}
//--></script> 
<script ><!--
$('.vtabs a').tabs();
//--></script> 
<script ><!--
<?php $module_row = 1; ?>
<?php foreach ($modules as $module) { ?>
$('#language-<?php echo $module_row; ?> a').tabs();
<?php $module_row++; ?>
<?php } ?> 
//--></script> 
<script type="text/jscript">
function getposition(val, id)
{
if(val=='content_footer' || val=='content_footer_block') 
{
$('#layout_sort_'+id).css("display","none");
}
else {$('#layout_sort_'+id).css("display","block");
}
}
</script>
<?php echo $footer; ?>