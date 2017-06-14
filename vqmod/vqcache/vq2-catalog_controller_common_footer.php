<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
                
                $data['text_0']      =$this->language->get('text_0');
                $data['text_1']      =$this->language->get('text_1');
                $data['text_2']      =$this->language->get('text_2');
                $data['text_3']      =$this->language->get('text_3');
                $data['text_4']      =$this->language->get('text_4');
                $data['text_5']      =$this->language->get('text_5');
                $data['text_contact']=$this->language->get('text_contact');
                $data['text_all'] = $this->language->get('text_all');
                
                $data['address'] = $this->config->get('config_address');
                $data['email'] = $this->config->get('config_email');
                $data['phone'] = explode(',', $this->config->get('config_telephone'));
                

		$this->load->model('catalog/information');

			$data['live_search'] = $this->load->controller('module/d_ajax_search');
			$data['cosyone_cookie'] = $this->load->controller('common/cosyone_cookie');	
			$data['footer_modules'] = $this->load->controller('common/footer_modules');
			$cosyone_footer_block_title = $this->config->get('cosyone_footer_custom_block_title');
			if(empty($cosyone_footer_block_title[$this->config->get('config_language_id')])) {
				$data['cosyone_footer_custom_block_title'] = false;
			} else if (isset($cosyone_footer_block_title[$this->config->get('config_language_id')])) {
				$data['cosyone_footer_custom_block_title'] = html_entity_decode($cosyone_footer_block_title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
			}
			$data['cosyone_footer_payment_icon'] = $this->config->get('cosyone_footer_payment_icon');
			$data['cosyone_use_retina'] = $this->config->get('cosyone_use_retina');
			$cosyone_footer_block = $this->config->get('cosyone_footer_custom_block');
			if(empty($cosyone_footer_block[$this->config->get('config_language_id')])) {
				$data['cosyone_footer_custom_block'] = false;
			} else if (isset($cosyone_footer_block[$this->config->get('config_language_id')])) {
				$data['cosyone_footer_custom_block'] = html_entity_decode($cosyone_footer_block[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
			}
			

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', true);
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', true);
		$data['affiliate'] = $this->url->link('affiliate/account', '', true);
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		return $this->load->view('common/footer', $data);
	}
}