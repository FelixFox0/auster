<?php
class ControllerProductProduct extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('product/product');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$this->load->model('catalog/category');

		if (isset($this->request->get['path'])) {
			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = $path_id;
				} else {
					$path .= '_' . $path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path)
					);
				}
			}

			// Set the last category breadcrumb
			$category_info = $this->model_catalog_category->getCategory($category_id);

			if ($category_info) {
				$url = '';

				if (isset($this->request->get['sort'])) {
					$url .= '&sort=' . $this->request->get['sort'];
				}

				if (isset($this->request->get['order'])) {
					$url .= '&order=' . $this->request->get['order'];
				}

				if (isset($this->request->get['page'])) {
					$url .= '&page=' . $this->request->get['page'];
				}

				if (isset($this->request->get['limit'])) {
					$url .= '&limit=' . $this->request->get['limit'];
				}

				$data['breadcrumbs'][] = array(
					'text' => $category_info['name'],
					'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url)
				);
			}
		}

		$this->load->model('catalog/manufacturer');

		if (isset($this->request->get['manufacturer_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_brand'),
				'href' => $this->url->link('product/manufacturer')
			);

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($this->request->get['manufacturer_id']);

			if ($manufacturer_info) {
				$data['breadcrumbs'][] = array(
					'text' => $manufacturer_info['name'],
					'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url)
				);
			}
		}

		if (isset($this->request->get['search']) || isset($this->request->get['tag'])) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}
                        
                        if (isset($this->request->get['dostavka'])) {
				$url .= '&dostavka=' . $this->request->get['dostavka'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_search'),
				'href' => $this->url->link('product/search', $url)
			);
		}

		if (isset($this->request->get['product_id'])) {
			$product_id = (int)$this->request->get['product_id'];
		} else {
			$product_id = 0;
		}

		$this->load->model('catalog/product');

		$product_info = $this->model_catalog_product->getProduct($product_id);
//var_dump($product_info);

		if ($product_info) {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}
                        
                        if (isset($this->request->get['dostavka'])) {
				$url .= '&dostavka=' . $this->request->get['dostavka'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $product_info['name'],
				'href' => $this->url->link('product/product', $url . '&product_id=' . $this->request->get['product_id'])
			);

                        $data['location'] = $product_info['location'];
                        
			$this->document->setTitle($product_info['meta_title']);
			$this->document->setDescription($product_info['meta_description']);
			$this->document->setKeywords($product_info['meta_keyword']);
			$this->document->addLink($this->url->link('product/product', 'product_id=' . $this->request->get['product_id']), 'canonical');
			
			
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

			$data['heading_title'] = $product_info['name'];

			$data['text_select'] = $this->language->get('text_select');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_reward'] = $this->language->get('text_reward');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_stock'] = $this->language->get('text_stock');
			$data['text_discount'] = $this->language->get('text_discount');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_option'] = $this->language->get('text_option');
			$data['text_minimum'] = sprintf($this->language->get('text_minimum'), $product_info['minimum']);
			$data['text_write'] = $this->language->get('text_write');
			$data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', true), $this->url->link('account/register', '', true));
			$data['text_note'] = $this->language->get('text_note');
			$data['text_tags'] = $this->language->get('text_tags');
			$data['text_related'] = $this->language->get('text_related');
			$data['text_payment_recurring'] = $this->language->get('text_payment_recurring');
			$data['text_loading'] = $this->language->get('text_loading');
			$data['text_shirina'] = $this->language->get('text_shirina');
			$data['text_dlina'] = $this->language->get('text_dlina');
			$data['text_dop_char'] = $this->language->get('text_dop_char');
                        $data['luk_container'] = $this->language->get('luk_container');
			$data['entry_qty'] = $this->language->get('entry_qty');
			$data['entry_name'] = $this->language->get('entry_name');
			$data['entry_review'] = $this->language->get('entry_review');
			$data['entry_rating'] = $this->language->get('entry_rating');
			$data['entry_good'] = $this->language->get('entry_good');
			$data['entry_bad'] = $this->language->get('entry_bad');
                        
			$data['text_old_pr'] = $this->language->get('text_old_pr');
			$data['text_skidka'] = $this->language->get('text_skidka');
			$data['text_now_pr'] = $this->language->get('text_now_pr');
			$data['text_ekonom'] = $this->language->get('text_ekonom');
			$data['text_to_cart'] = $this->language->get('text_to_cart');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_upload'] = $this->language->get('button_upload');
			$data['button_continue'] = $this->language->get('button_continue');

			$this->load->model('catalog/review');
                        
                        $data['tabs']=  json_decode($product_info['tabs'],1);
//                        var_dump($data['tabs']);
                        
                        if ($data['tabs']['chert']){
//                        var_dump($data['tabs']);
                            if ($data['tabs']['chert'] == 1){
                                $data['tab_chertezi'] = $this->language->get('tab_chertezi');
                            } else {
                                $data['tab_chertezi'] = $this->language->get('tab_inst');
                            }
                        
                        } else {
                        
                        $data['tab_chertezi'] = $this->language->get('tab_chertezi');
//                        $data['tab_inst'] = $this->language->get('tab_inst');
                            
                        }
                        
			$data['tab_description'] = $this->language->get('tab_description');
			$data['tab_razmeri'] = $this->language->get('tab_razmeri');
			$data['tab_sertificati'] = $this->language->get('tab_sertificati');
			$data['tab_delivery'] = $this->language->get('tab_delivery');
                        
			$data['tab_attribute'] = $this->language->get('tab_attribute');
			$data['tab_review'] = sprintf($this->language->get('tab_review'), $product_info['reviews']);

			$data['product_id'] = (int)$this->request->get['product_id'];
			$data['manufacturer'] = $product_info['manufacturer'];
			$data['manufacturers'] = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $product_info['manufacturer_id']);
			$data['model'] = $product_info['model'];
			$data['reward'] = $product_info['reward'];
			$data['points'] = $product_info['points'];
			$data['description'] = html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8');
			$data['dostavka'] = html_entity_decode($product_info['dostavka'], ENT_QUOTES, 'UTF-8');
			$data['dop_char'] = html_entity_decode($product_info['dop_char'], ENT_QUOTES, 'UTF-8');
                        $data['dop_field'] = html_entity_decode($product_info['dop_field'], ENT_QUOTES, 'UTF-8');
                        
			if ($product_info['quantity'] <= 0) {
				$data['stock'] = $product_info['stock_status'];
			} elseif ($this->config->get('config_stock_display')) {
				$data['stock'] = $product_info['quantity'];
			} else {
				$data['stock'] = $this->language->get('text_instock');
			}

			$this->load->model('tool/image');

			if (file_exists('catalog/view/theme/cosyone/js/countdown/jquery.countdown_' . $this->language->get('code') . '.js')) {
			$this->document->addScript('catalog/view/theme/cosyone/js/countdown/jquery.countdown_' . $this->language->get('code') . '.js');
			} else {
			$this->document->addScript('catalog/view/theme/cosyone/js/countdown/jquery.countdown_en.js');
			}
			$data['direction'] = $this->language->get('direction');
			

			if ($product_info['image']) {
				$data['popup'] = $this->model_tool_image->resize($product_info['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height'));
			} else {
				$data['popup'] = '';
			}

			if ($product_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($product_info['image'], $this->config->get($this->config->get('config_theme') . '_image_thumb_width'), $this->config->get($this->config->get('config_theme') . '_image_thumb_height'));
			} else {
				$data['thumb'] = '';
			}
                        
if ($product_info['dop_img']) {
				$data['dop_img'] = 'image/' . $product_info['dop_img'];
			} else {
				$data['dop_img'] = $this->model_tool_image->resize('no_image.png', $this->config->get($this->config->get('config_theme') . '_image_thumb_width'), $this->config->get($this->config->get('config_theme') . '_image_thumb_height'));
			}
                        
                        if ($product_info['tab_img']) {
				$data['tab_img'] = 'image/' . $product_info['tab_img'];
			} else {
				$data['tab_img'] = 'image/' . 'no_image.png';
			}
                        
                        $data['product_type'] = $product_info['product_type'];
                        $data['product_color_ral'] = $this->url->link('information/information','information_id=12');
                        $data['product_curs'] = $product_info['product_curs'];
                        if($product_info['product_type'] == 2){
                            if($product_info['luk_price']){
                              $data['luk_price'] = unserialize($product_info['luk_price']);  
                            }else{
                                $data['luk_price'] = NULL;
                            }
                            $pritem = $data['luk_price'][250][200]; 
                        }elseif($product_info['product_type'] == 3 || $product_info['product_type'] == 4  ){
                            if($product_info['price_resh']){
                              $data['luk_price'] = unserialize($product_info['price_resh']);  
                            }else{
                                $data['luk_price'] = NULL;
                            }
                            $pritem = $data['luk_price']['val_1_shch'] * 0.75;
                            
                            $data['pr_f_tab'] = array();
                            foreach($data['luk_price'] as $key=>$val){
                                $data['pr_f_tab'][$key] = $val*$data['product_curs'];
                            }
                            
                            
                        }else{
                            $pritem = $product_info['price'];
                        }
                        
//                        if($data['skidka']){
//                            $full_price=$pritem*$data['product_curs'];
//                            $econom = ($full_price/100)*$data['skidka'];
//                            $n_price = $full_price-$econom;
//                            
//                            $data['full_price'] = $this->recountPrice($full_price);
//                            $data['econom'] = $this->recountPrice($econom);
//                            $data['n_price'] = $this->recountPrice($n_price);
//                        }else{
                           
                               $r_pr = $pritem*$data['product_curs'];
                                $data['luk_price_fist']= $this->recountPrice($r_pr);
                           
//                        }
                        
                        if($product_info['green_field']){
                          $data['green_field'] = unserialize($product_info['green_field']);  
                        }else{
                            $data['green_field'] = NULL;
                        }
                        
                        $data['green_field'] = unserialize($product_info['green_field']);
                        
// Start cloud zoom
if ($product_info['image']) {
$data['small'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('theme_default_image_additional_width'), $this->config->get('theme_default_image_additional_height'));
} else {
$data['small'] = '';
}
// Cosyone ends

			$data['images'] = array();

			$results = $this->model_catalog_product->getProductImages($this->request->get['product_id']);
			$resultschert = $this->model_catalog_product->getProductChert($this->request->get['product_id']);
			$resultssert = $this->model_catalog_product->getProductSert($this->request->get['product_id']);
                        
                        
                        $data['chert'] = array();
                        foreach ($resultschert as $chert) {
				$data['chert'][] = array(
					'popup' =>  $this->config->get('config_ssl') . 'image/' .$chert['image_chert'],
					'thumb' => $this->config->get('config_ssl') . 'image/' .$chert['image_chert']
				);
			}
                        
                        $data['sert'] = array();
                        foreach ($resultssert as $sert) {
				$data['sert'][] = array(
					'popup' =>  $this->config->get('config_ssl') . 'image/' .$sert['image_sert'],
					'thumb' => $this->config->get('config_ssl') . 'image/' .$sert['image_sert']
				);
			}
                        
                        //var_dump($results);
                        //var_dump($product_info['product_type']);
                        
			foreach ($results as $result) {
                            if(($product_info['product_type']==3) || ($product_info['product_type']==4)){
                                if(($result['number_of_slots'] == 1) || ($result['lattice_type'] == 'SHD')){
                                    $data['images'][] = array(
                                            'popup' => $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height')),
                                            // Cloud zoom thumb start
'small' => $this->model_tool_image->resize($result['image'], $this->config->get('theme_default_image_additional_width'), $this->config->get('theme_default_image_additional_height')),
//Cloud zoom thumb ends
// New thumb function
'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get('theme_default_image_thumb_width'), $this->config->get('theme_default_image_thumb_height'))
// Cosyone ends

//                                            'popup' => $this->model_tool_image->resize($product_info['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height'));

                                    );
                                }
                            }else{
                                $data['images'][] = array(
					'popup' => $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height')),
					// Cloud zoom thumb start
'small' => $this->model_tool_image->resize($result['image'], $this->config->get('theme_default_image_additional_width'), $this->config->get('theme_default_image_additional_height')),
//Cloud zoom thumb ends
// New thumb function
'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get('theme_default_image_thumb_width'), $this->config->get('theme_default_image_thumb_height'))
// Cosyone ends

				);
                            }
                        }
                        
			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$data['price'] = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$data['price'] = false;
			}
                        
//                        var_dump($data['price']);
			if ((float)$product_info['special']) {
				$data['special'] = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);

			  $data['sales_percantage_main'] = round((($product_info['price'] - $product_info['special']) / $product_info['price'] * 100));
			  // Cosyone ends
			   
			} else {
				$data['special'] = false;
			}
//                        var_dump($data['special']);
			if ($this->config->get('config_tax')) {
				$data['tax'] = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
			} else {
				$data['tax'] = false;
			}
                        

			// Cosyone start
			$data['cosyone_product_zoom'] = $this->config->get('cosyone_product_zoom');
				$data['cosyone_product_share'] = $this->config->get('cosyone_product_share');
				$data['cosyone_percentage_sale_badge'] = $this->config->get('cosyone_percentage_sale_badge');
				$data['cosyone_product_yousave'] = $this->config->get('cosyone_product_yousave');
				$cosyone_quicklook = $this->config->get('cosyone_text_ql');
				if(empty($cosyone_quicklook[$this->config->get('config_language_id')])) {
					$data['cosyone_text_ql'] = false;
				} else if (isset($cosyone_quicklook[$this->config->get('config_language_id')])) {
					$data['cosyone_text_ql'] = html_entity_decode($cosyone_quicklook[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
				}
				$data['cosyone_product_countdown'] = $this->config->get('cosyone_product_countdown');
				$data['cosyone_product_hurry'] = $this->config->get('cosyone_product_hurry');
				$data['cosyone_image_options'] = $this->config->get('cosyone_image_options');
				$data['cosyone_grid_related'] = $this->config->get('cosyone_grid_related');
				$data['cosyone_brand'] = $this->config->get('cosyone_brand');
			if ((float)$product_info['special']) {
    		$special_info = $this->model_catalog_product->getSpecialPriceEnd($product_id);
        	$data['special_date_end'] = strtotime($special_info['date_end']) - time();
			$data['yousave'] = $this->currency->format(($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))-($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax'))), $this->session->data['currency']);
			
    		} else {
        	$data['special_date_end'] = false;
    		}
			$this->load->language('common/cosyone');
			$data['text_special_price'] = $this->language->get('text_special_price');
			$data['text_old_price'] = $this->language->get('text_old_price');
			$data['text_you_save'] = $this->language->get('text_you_save');
			$data['text_expire'] = $this->language->get('text_expire');
			$data['text_items_sold'] = sprintf($this->language->get('text_items_sold'), $this->model_catalog_product->getItemsSold($product_id));
			$data['data_qty'] = $product_info['quantity'];
			$data['text_stock_quantity'] = sprintf($this->language->get('text_stock_quantity'), $product_info['quantity']);
			$data['count_reviews'] = $product_info['reviews'];
			$data['thumb_width'] = $this->config->get('theme_default_image_thumb_width');
			$data['additional_width'] = $this->config->get('theme_default_image_additional_width');
			$data['additional_height'] = $this->config->get('theme_default_image_additional_height');
			$data['currency_code'] = $this->session->data['currency'];
			$data['lang'] = $this->config->get('config_language_id');
			
			// Cosyone end
			   
			$discounts = $this->model_catalog_product->getProductDiscounts($this->request->get['product_id']);

			$data['discounts'] = array();

                        
                        if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$data['price'] = $this->currency->format($this->tax->calculate($product_info['price']*$product_info['product_curs'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$data['price'] = false;
			}
                        
//                        var_dump($data['price']);
			if ((float)$product_info['special']) {
				$data['special'] = $this->currency->format($this->tax->calculate($product_info['special']*$product_info['product_curs'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                                $data['yousave'] = $this->currency->format($this->tax->calculate($product_info['price']*$product_info['product_curs']-$product_info['special']*$product_info['product_curs'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                                
                        } else {
				$data['special'] = false;
			}
                        
			foreach ($discounts as $discount) {
				$data['discounts'][] = array(
					'quantity' => $discount['quantity'],
					'price'    => $this->currency->format($this->tax->calculate($discount['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency'])
				);
			}

			$data['options'] = array();

			foreach ($this->model_catalog_product->getProductOptions($this->request->get['product_id']) as $option) {
				$product_option_value_data = array();
				foreach ($option['product_option_value'] as $option_value) {
                                    
					if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
						if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
							$price = $this->currency->format($this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax') ? 'P' : false), $this->session->data['currency']);
						} else {
							$price = false;
						}

						$product_option_value_data[] = array(
							'product_option_value_id' => $option_value['product_option_value_id'],
							'option_value_id'         => $option_value['option_value_id'],
							'name'                    => $option_value['name'],
							'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
							'price'                   => $price,
							'price_prefix'            => $option_value['price_prefix'],
                                                        'name_el'                    => $option_value['name_el']
						);
					}
				}

				$data['options'][] = array(
					'product_option_id'    => $option['product_option_id'],
					'product_option_value' => $product_option_value_data,
					'option_id'            => $option['option_id'],
					'name'                 => $option['name'],
					'type'                 => $option['type'],
					'value'                => $option['value'],
					'required'             => $option['required'],
                                        'element_id'           => $option['element_id'],
				);
			}

			if ($product_info['minimum']) {
				$data['minimum'] = $product_info['minimum'];
			} else {
				$data['minimum'] = 1;
			}

			$data['review_status'] = $this->config->get('config_review_status');

			if ($this->config->get('config_review_guest') || $this->customer->isLogged()) {
				$data['review_guest'] = true;
			} else {
				$data['review_guest'] = false;
			}

			if ($this->customer->isLogged()) {
				$data['customer_name'] = $this->customer->getFirstName() . '&nbsp;' . $this->customer->getLastName();
			} else {
				$data['customer_name'] = '';
			}

			$data['reviews'] = sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']);
			$data['rating'] = (int)$product_info['rating'];

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$data['captcha'] = $this->load->controller('captcha/' . $this->config->get('config_captcha'));
			} else {
				$data['captcha'] = '';
			}

			$data['share'] = $this->url->link('product/product', 'product_id=' . (int)$this->request->get['product_id']);

			$data['attribute_groups'] = $this->model_catalog_product->getProductAttributes($this->request->get['product_id']);

			$data['products'] = array();

for( $i=1; $i< 6; $i++) {
					$data['product_tabs_' . $i] = array();
				}

				$product_tabs = $this->model_catalog_product->getProductTabs($this->request->get['product_id']);

				foreach ($product_tabs as $product_tab) {

					$data['product_tabs_' . $product_tab['position']][] = array(
						'tab_id' 	=> $product_tab['tab_id'],
						'name'    => $product_tab['name'],
						'text'    => html_entity_decode($product_tab['text'], ENT_QUOTES, 'UTF-8')
					);
				}
			$results = $this->model_catalog_product->getProductRelated($this->request->get['product_id']);

			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_related_width'), $this->config->get($this->config->get('config_theme') . '_image_related_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_related_width'), $this->config->get($this->config->get('config_theme') . '_image_related_height'));
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price']*$result['product_curs'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special']*$result['product_curs'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}


			  if ((float)$result['special']) {
				$sales_percantage = ((($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')))-($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax'))))/(($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')))/100));
				} else {
				$sales_percantage = false;
				}
				// Cosyone ends
			   
				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'dostavka' => utf8_substr(strip_tags(html_entity_decode($result['dostavka'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,

			 'sales_percantage' => number_format($sales_percantage, 0, ',', '.'),
			 'brand_name' 	 => $result['manufacturer'],
			// Cosyone ends
			   
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $rating,

		'quickview'        => $this->url->link('product/quickview', 'product_id=' . $result['product_id'], '', 'SSL'),
		
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}

			$data['tags'] = array();

			if ($product_info['tag']) {
				$tags = explode(',', $product_info['tag']);

				foreach ($tags as $tag) {
					$data['tags'][] = array(
						'tag'  => trim($tag),
						'href' => $this->url->link('product/search', 'tag=' . trim($tag))
					);
				}
			}

			$data['recurrings'] = $this->model_catalog_product->getProfiles($this->request->get['product_id']);

			$this->model_catalog_product->updateViewed($this->request->get['product_id']);

			$data['question_status'] = $this->config->get('product_question_status');
			$data['product_questions'] = $this->load->controller('product/question');
			$this->load->language('product/question');
			$data['tab_questions'] = $this->language->get('tab_questions');
			$data['button_ask'] = $this->language->get('button_ask');
			$this->load->model('catalog/question');
			$data['questions_total'] = $this->model_catalog_question->getTotalQuestionsByProductId($this->request->get['product_id']);
			

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');
                        
                        
                        $data['text_titsep'] = $this->language->get('text_titsep');
                        $data['text_desc_our'] = $this->language->get('text_desc_our');
                        $data['text_odnschel'] = $this->language->get('text_odnschel');
                        $data['text_mnschel'] = $this->language->get('text_mnschel');
                        $data['text_catalog'] = $this->language->get('text_catalog');
                        $data['text_dlin_resh'] = $this->language->get('text_dlin_resh');
                        $data['text_count_shcheley'] = $this->language->get('text_count_shcheley');
                        $data['text_schel'] = $this->language->get('text_schel');
                        $data['text_quantity'] = $this->language->get('text_quantity');
                        $data['text_type_resh'] = $this->language->get('text_type_resh');

                        $data['text_sd'] = $this->language->get('text_sd');
                        $data['text_sn'] = $this->language->get('text_sn');
                        $data['text_sl'] = $this->language->get('text_sl');
                        $data['text_sr'] = $this->language->get('text_sr');

                        $data['text_dlin_proz'] = $this->language->get('text_dlin_proz');
                        $data['text_color_d'] = $this->language->get('text_color_d');
                        $data['text_b'] = $this->language->get('text_b');
                        $data['text_w'] = $this->language->get('text_w');
                        $data['text_ral_color'] = $this->language->get('text_ral_color');
                        $data['text_placeholder'] = $this->language->get('text_placeholder');
                        $data['text_dlina'] = $this->language->get('text_dlina');
                        $data['text_shirina'] = $this->language->get('text_shirina');
                        $data['text_now_pr'] = $this->language->get('text_now_pr');
                        $data['text_loading_text'] = $this->language->get('text_loading-text');
                        
                        
                        $data['text_rash_vozd'] = $this->language->get('text_rash_vozd');
                        $data['text_t_out_dif'] = $this->language->get('text_t_out_dif');
                        $data['text_t_out_dif2'] = $this->language->get('text_t_out_dif2');
                        $data['text_s_vozdvvoda'] = $this->language->get('text_s_vozdvvoda');
                        $data['text_rast_ot_pov'] = $this->language->get('text_rast_ot_pov');
                        
                        $data['text_zgiv_sech'] = $this->language->get('text_zgiv_sech');
                        $data['text_skor_vozd'] = $this->language->get('text_skor_vozd');
                        $data['text_pot_dav'] = $this->language->get('text_pot_dav');
                        $data['text_skor_vih_vozd'] = $this->language->get('text_skor_vih_vozd');
                        $data['text_razn_t'] = $this->language->get('text_razn_t');
                        
                        $data['text_vib_spos'] = $this->language->get('text_vib_spos');
                        $data['text_po_dlin'] = $this->language->get('text_po_dlin');
                        $data['text_po_rash'] = $this->language->get('text_po_rash');
                        $data['text_s_vozd_iz_rasp'] = $this->language->get('text_s_vozd_iz_rasp');
                        $data['text_dln_dif'] = $this->language->get('text_dln_dif');
                        $data['text_dln_dif2'] = $this->language->get('text_dln_dif2');
                        $data['text_vis_dif'] = $this->language->get('text_vis_dif');
                        $data['text_vozn_rash_vozd'] = $this->language->get('text_vozn_rash_vozd');
//                        var_dump($data);
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/product.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/product.tpl', $data));
			} else {
			$this->response->setOutput($this->load->view('product/product', $data));
			}
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}
                        
                        if (isset($this->request->get['dostavka'])) {
				$url .= '&dostavka=' . $this->request->get['dostavka'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/product', $url . '&product_id=' . $product_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}

	public function review() {
		$this->load->language('product/product');

		$this->load->model('catalog/review');

		$data['text_no_reviews'] = $this->language->get('text_no_reviews');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['reviews'] = array();

		$review_total = $this->model_catalog_review->getTotalReviewsByProductId($this->request->get['product_id']);

		$results = $this->model_catalog_review->getReviewsByProductId($this->request->get['product_id'], ($page - 1) * 5, 5);

		foreach ($results as $result) {
			$data['reviews'][] = array(
				'author'     => $result['author'],
				'text'       => nl2br($result['text']),
				'rating'     => (int)$result['rating'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$pagination = new Pagination();
		$pagination->total = $review_total;
		$pagination->page = $page;
		$pagination->limit = 5;
		$pagination->url = $this->url->link('product/product/review', 'product_id=' . $this->request->get['product_id'] . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($review_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($review_total - 5)) ? $review_total : ((($page - 1) * 5) + 5), $review_total, ceil($review_total / 5));

		$this->response->setOutput($this->load->view('product/review', $data));
	}

	public function write() {
		$this->load->language('product/product');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
				$json['error'] = $this->language->get('error_name');
			}

			if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
				$json['error'] = $this->language->get('error_text');
			}

			if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('captcha/' . $this->config->get('config_captcha') . '/validate');

				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('catalog/review');

				$this->model_catalog_review->addReview($this->request->get['product_id'], $this->request->post);

				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function getRecurringDescription() {
		$this->load->language('product/product');
		$this->load->model('catalog/product');

		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		if (isset($this->request->post['recurring_id'])) {
			$recurring_id = $this->request->post['recurring_id'];
		} else {
			$recurring_id = 0;
		}

		if (isset($this->request->post['quantity'])) {
			$quantity = $this->request->post['quantity'];
		} else {
			$quantity = 1;
		}

		$product_info = $this->model_catalog_product->getProduct($product_id);
		$recurring_info = $this->model_catalog_product->getProfile($product_id, $recurring_id);

		$json = array();

		if ($product_info && $recurring_info) {
			if (!$json) {
				$frequencies = array(
					'day'        => $this->language->get('text_day'),
					'week'       => $this->language->get('text_week'),
					'semi_month' => $this->language->get('text_semi_month'),
					'month'      => $this->language->get('text_month'),
					'year'       => $this->language->get('text_year'),
				);

				if ($recurring_info['trial_status'] == 1) {
					$price = $this->currency->format($this->tax->calculate($recurring_info['trial_price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					$trial_text = sprintf($this->language->get('text_trial_description'), $price, $recurring_info['trial_cycle'], $frequencies[$recurring_info['trial_frequency']], $recurring_info['trial_duration']) . ' ';
				} else {
					$trial_text = '';
				}

				$price = $this->currency->format($this->tax->calculate($recurring_info['price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);

				if ($recurring_info['duration']) {
					$text = $trial_text . sprintf($this->language->get('text_payment_description'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				} else {
					$text = $trial_text . sprintf($this->language->get('text_payment_cancel'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				}

				$json['success'] = $text;
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
        
        
        public function reloadRrice() {
            //var_dump($this->request->post['option']);

            
            
            
            $this->load->model('catalog/product');
            $opt = $this->model_catalog_product->getNameOptions($this->request->post['option']);
            $this->request->post += $opt;
//            var_dump($this->request->post);
            $product_info = $this->model_catalog_product->getProduct($this->request->post['product_id']);
            /*������*/
            /*
            if($this->customer->isLogged()){
                $user_id_t = $this->customer->getId();
                $test_user_skidka = $this->model_catalog_product->test_user_skidka($user_id_t);
            }else{
                $test_user_skidka = false;
            }

            $test_categ_skidka = $this->model_catalog_product->test_categ_skidka($this->request->post['product_id']);

            if($test_user_skidka && $test_categ_skidka){
                if($test_user_skidka['razmer_skidki']>$test_categ_skidka['razmer_skidki']){
                    $data['skidka'] = $test_user_skidka['razmer_skidki'];
                }elseif($test_user_skidka['razmer_skidki']<$test_categ_skidka['razmer_skidki']){
                    $data['skidka'] = $test_categ_skidka['razmer_skidki'];
                }else{
                    $data['skidka'] = $test_categ_skidka['razmer_skidki'];
                }
            }elseif($test_user_skidka){
                $data['skidka'] = $test_user_skidka['razmer_skidki'];
            }elseif($test_categ_skidka){
                $data['skidka'] = $test_categ_skidka['razmer_skidki'];
            }else{
                $data['skidka'] = false;
            }
*/
            /*����� ������*/
            $data['product_type'] = $product_info['product_type'];
            $data['product_curs'] = $product_info['product_curs'];
            if($data['product_type'] == 2){
                if($product_info['luk_price']){
                  $data['luk_price'] = unserialize($product_info['luk_price']);  
                }else{
                    $data['luk_price'] = NULL;
                }
                $shirina = ceil($this->request->post['shirina']/50)*50;
                $dlina = ceil($this->request->post['dlina']/50)*50;
                $pritem = $data['luk_price'][$shirina][$dlina]; 
            }elseif($data['product_type'] == 3 || $data['product_type'] == 4  ){
                if($product_info['price_resh']){
                  $data['luk_price'] = unserialize($product_info['price_resh']);  
                }else{
                    $data['luk_price'] = NULL;
                }
//                var_dump($data['luk_price']);
//                die();
                 switch ($this->request->post['count_shcheley']){
                    case 1: $ind_count_r = $data['luk_price']['val_1_shch']; break;
                    case 2: $ind_count_r = $data['luk_price']['val_2_shch']; break;
                    case 3: $ind_count_r = $data['luk_price']['val_3_shch']; break;
                    case 4: $ind_count_r = $data['luk_price']['val_4_shch']; break;
                    default : $ind_count_r =$data['luk_price']['val_1_shch'];
                }
//		var_dump($ind_count_r); 	
//                die();
                $dlin_resh = $this->request->post['dlin_resh'];
                
                $mod_dlin_resh = $dlin_resh%1000;
                
              
                  if($dlin_resh<500){
                      /*$final_r = $ind_count_r;
//                      var_dump($ind_count_r);
                      $final_r = $final_r - $final_r/100*25;*/
                      
                    switch ($this->request->post['count_shcheley']){
                        case 1: $ind_percent = 35; break;
                        case 2: $ind_percent = 40; break;
                        case 3: $ind_percent = 45; break;
                        case 4: $ind_percent = 50; break;
                        default : $ind_percent =35;
                    }
                    $final_r = $ind_count_r - $ind_count_r/100*$ind_percent;
                      
                      
                  }elseif(($dlin_resh>=500) && ($dlin_resh<900)){
                    switch ($this->request->post['count_shcheley']){
                        case 1: $ind_percent = 25; break;
                        case 2: $ind_percent = 30; break;
                        case 3: $ind_percent = 35; break;
                        case 4: $ind_percent = 40; break;
                        default : $ind_percent =1;
                    }
                    $final_r = $ind_count_r - $ind_count_r/100*$ind_percent;
                      
                  }elseif(($dlin_resh>=900) && ($dlin_resh<1100)){
                      $final_r = $ind_count_r;   
                  
                  }elseif(($mod_dlin_resh<100)){
                      $koef=floor($dlin_resh/1000);
                      $final_r = $ind_count_r * $koef;
                      $final_r = $final_r - $final_r/100*20;
                      
//                      var_dump($koef);
                  }elseif(($mod_dlin_resh>=100)&&($mod_dlin_resh<200)){
                      $final_r = ($ind_count_r*($dlin_resh/1000));
                      $final_r = $final_r - $final_r/100*5;
                  }elseif(($mod_dlin_resh>=200)&&($mod_dlin_resh<400)){
                      $final_r = ($ind_count_r*($dlin_resh/1000));
                      $final_r = $final_r - $final_r/100*8;
                  }elseif(($mod_dlin_resh>=400)&&($mod_dlin_resh<600)){
                      $final_r = ($ind_count_r*($dlin_resh/1000));
                      $final_r = $final_r - $final_r/100*15;
                  }elseif(($mod_dlin_resh>=600)&&($mod_dlin_resh<=900)){
                      $final_r = ($ind_count_r*($dlin_resh/1000));
                      $final_r = $final_r - $final_r/100*20;
                  }elseif(($mod_dlin_resh>900)){
                      
                      $koef=ceil($dlin_resh/1000);
                      
                      $final_r = $ind_count_r * $koef;
                      $final_r = $final_r - $final_r/100*20;
                  }

                $pritem = $final_r;
            }else{
                $pritem = $product_info['price'];
            }

            /*if($data['skidka']){
                $full_price=$pritem*$data['product_curs']*$this->request->post['quantity'];
                $econom = ($full_price/100)*$data['skidka'];
                $n_price = $full_price-$econom;

                $data['full_price'] = $this->recountPrice($full_price);
                $data['econom'] = $this->recountPrice($econom);
                $data['n_price'] = $this->recountPrice($n_price);
            }else{*/
                   $r_pr = $pritem*$data['product_curs']*$this->request->post['quantity'];
                   $r_pr = $pritem*$data['product_curs'];
                   if($product_info['special']){
                       $data['old'] = $this->currency->format($this->tax->calculate($r_pr, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                       $data['yousave'] = $r_pr;
                       $r_pr = $r_pr * $product_info['special'] / $product_info['price'];
                       $data['yousave'] = $this->currency->format($this->tax->calculate($data['yousave'] - $r_pr, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                   }
                   
                    $data['luk_price_fist']= $this->currency->format($this->tax->calculate($r_pr, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                    
                
            /*}*/
//            var_dump($data);
//            var_dump();
//            die();
            /*
            if ((float)$product_info['special']) {
                    $data['special'] = $this->currency->format($this->tax->calculate($product_info['special']*$product_info['product_curs'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                    $data['yousave'] = $this->currency->format($this->tax->calculate($product_info['price']*$product_info['product_curs']-$product_info['special']*$product_info['product_curs'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);

            } else {
                    $data['special'] = false;
            }
            */
           echo json_encode($data);
            
            
        }
        
        public function recountPrice($param) {
             $data = explode('.',round($param,2));
                if(!isset($data[1])){
                    $data[1] = '00';
                }elseif(strlen($data[1]) == 1){
                    $data[1].='0';
                }
                
                return $data;
                
        }
        
        public function changeimage() {
            //var_dump($this->request->get);
            //var_dump($this->request->post);
            $product_info['image']=false;
            $this->load->model('catalog/product');
            $this->load->model('tool/image');

			if (file_exists('catalog/view/theme/cosyone/js/countdown/jquery.countdown_' . $this->language->get('code') . '.js')) {
			$this->document->addScript('catalog/view/theme/cosyone/js/countdown/jquery.countdown_' . $this->language->get('code') . '.js');
			} else {
			$this->document->addScript('catalog/view/theme/cosyone/js/countdown/jquery.countdown_en.js');
			}
			$data['direction'] = $this->language->get('direction');
			
            
// Start cloud zoom
if ($product_info['image']) {
$data['small'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('theme_default_image_additional_width'), $this->config->get('theme_default_image_additional_height'));
} else {
$data['small'] = '';
}
// Cosyone ends

            $data['images'] = array();
            $results = array_reverse($this->model_catalog_product->getProductImages($this->request->get['product_id']));    
//                var_dump(getProductImages($this->request->get['product_id']));
            
            foreach ($results as $result) {

                    if(($result['number_of_slots'] == $this->request->post['number_of_slots']) || ($result['lattice_type'] == $this->request->post['lattice_type'])){
                        $data['images'][] = array(
                                'popup' => $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height')),
                                // Cloud zoom thumb start
'small' => $this->model_tool_image->resize($result['image'], $this->config->get('theme_default_image_additional_width'), $this->config->get('theme_default_image_additional_height')),
//Cloud zoom thumb ends
// New thumb function
'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get('theme_default_image_thumb_width'), $this->config->get('theme_default_image_thumb_height'))
// Cosyone ends
,
                        );
                    }
 
            }


//            var_dump($data['images']);
//            die();
            $this->response->setOutput(json_encode($data));
        }
        
        
}
