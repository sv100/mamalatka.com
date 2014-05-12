<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(

			'common/content_topl',
			'common/content_topc',
			'common/content_topr',
			'common/content_menu_over',
			'common/content_menu_overl',
			'common/content_menu_overc',
			'common/content_menu_overr',
			'common/content_menu_under',
			'common/content_menu_underl',
			'common/content_menu_underc',
			'common/content_menu_underr',
			'common/content_footer_overl',
			'common/content_footer_overc',
			'common/content_footer_overr',
			'common/content_footer',
			'common/content_footer_underl',
			'common/content_footer_underc',
			'common/content_footer_underr',
			'common/content_bottoml',
			'common/content_bottomc',
			'common/content_bottomr',
			
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>