<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

                $this->load->language('common/home');
                $data['text_prod'] = $this->language->get('text_prod');
                $data['text_questions'] = $this->language->get('text_questions');
                $data['text_answer'] = $this->language->get('text_answer');
                $data['text_consult'] = $this->language->get('text_consult');
                $data['text_post_text'] = $this->language->get('text_post_text');
                $data['text_name'] = $this->language->get('text_name');
                $data['text_name2'] = $this->language->get('text_name2');
                $data['text_phone'] = $this->language->get('text_phone');
                $data['text_phone2'] = $this->language->get('text_phone2');
                $data['text_mail'] = $this->language->get('text_mail');
                $data['text_mail2'] = $this->language->get('text_mail2');
                $data['text_button'] = $this->language->get('text_button');
                $data['text_post_text2'] = $this->language->get('text_post_text2');
                $data['text_dist'] = $this->language->get('text_dist');
                $data['text_sert'] = $this->language->get('text_sert');
                
		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}