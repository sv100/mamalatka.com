<?php echo $header; ?>
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
      <table id="module" class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $entry_layout; ?></td>
            <td class="left"><?php echo $entry_position; ?></td>
            <td class="left"><?php echo $entry_status; ?></td>
            <td class="right"><?php echo $entry_sort_order; ?></td>
            <td></td>
          </tr>
        </thead>
        <?php $module_row = 0; ?>
        <?php foreach ($modules as $module) { ?>
        <tbody id="module-row<?php echo $module_row; ?>">
          <tr>
            <td class="left"><select name="manufacturerabc_module[<?php echo $module_row; ?>][layout_id]">
                <?php foreach ($layouts as $layout) { ?>
                <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
            <td class="left"><select name="manufacturerabc_module[<?php echo $module_row; ?>][position]">

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
              </select></td>
            <td class="left"><select name="manufacturerabc_module[<?php echo $module_row; ?>][status]">
                <?php if ($module['status']) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            <td class="right"><input type="text" name="manufacturerabc_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
            <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
          </tr>
        </tbody>
        <?php $module_row++; ?>
        <?php } ?>
        <tfoot>
          <tr>
            <td colspan="4"></td>
            <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
          </tr>
        </tfoot>
      </table>
    </form>
  </div>
</div>
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><select name="manufacturerabc_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="manufacturerabc_module[' + module_row + '][position]">';

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
			
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="manufacturerabc_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="manufacturerabc_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}
//--></script>
<?php echo $footer; ?>