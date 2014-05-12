<?php
class ControllerModuleManufacturerabc extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->load->language('module/manufacturerabc');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('manufacturerabc', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');

			$this->data['text_content_topl'] = $this->language->get('text_content_topl');
			$this->data['text_content_topc'] = $this->language->get('text_content_topc');
			$this->data['text_content_topr'] = $this->language->get('text_content_topr');
			$this->data['text_content_menu_over'] = $this->language->get('text_content_menu_over');
			$this->data['text_content_menu_overl'] = $this->language->get('text_content_menu_overl');
			$this->data['text_content_menu_overc'] = $this->language->get('text_content_menu_overc');
			$this->data['text_content_menu_overr'] = $this->language->get('text_content_menu_overr');
			$this->data['text_content_menu_under'] = $this->language->get('text_content_menu_under');
    		$this->data['text_content_menu_underl'] = $this->language->get('text_content_menu_underl');
			$this->data['text_content_menu_underc'] = $this->language->get('text_content_menu_underc');
			$this->data['text_content_menu_underr'] = $this->language->get('text_content_menu_underr');
			$this->data['text_content_footer_overl'] = $this->language->get('text_content_footer_overl');
			$this->data['text_content_footer_overc'] = $this->language->get('text_content_footer_overc');
			$this->data['text_content_footer_overr'] = $this->language->get('text_content_footer_overr');
			$this->data['text_content_footer'] = $this->language->get('text_content_footer');
			$this->data['text_content_footer_underl'] = $this->language->get('text_content_footer_underl');
			$this->data['text_content_footer_underc'] = $this->language->get('text_content_footer_underc');
			$this->data['text_content_footer_underr'] = $this->language->get('text_content_footer_underr');
			$this->data['text_content_bottoml'] = $this->language->get('text_content_bottoml');
			$this->data['text_content_bottomc'] = $this->language->get('text_content_bottomc');
			$this->data['text_content_bottomr'] = $this->language->get('text_content_bottomr');
			$this->data['text_content_product_titlel'] = $this->language->get('text_content_product_titlel');
			$this->data['text_content_product_titlec'] = $this->language->get('text_content_product_titlec');
			$this->data['text_content_product_titler'] = $this->language->get('text_content_product_titler');
			$this->data['text_content_category_titlel'] = $this->language->get('text_content_category_titlel');
			$this->data['text_content_category_titlec'] = $this->language->get('text_content_category_titlec');
			$this->data['text_content_category_titler'] = $this->language->get('text_content_category_titler');
			
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/manufacturerabc', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/manufacturerabc', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['modules'] = array();
		
		if (isset($this->request->post['manufacturerabc_module'])) {
			$this->data['modules'] = $this->request->post['manufacturerabc_module'];
		} elseif ($this->config->get('manufacturerabc_module')) { 
			$this->data['modules'] = $this->config->get('manufacturerabc_module');
		}	
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/manufacturerabc.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/manufacturerabc')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>