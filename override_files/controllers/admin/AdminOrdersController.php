<?php
/**
 * This file is part of a NewQuest Project
 *
 * (c) NewQuest <contact@newquest.fr>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 * @author    NewQuest
 * @copyright NewQuest
 * @license   NewQuest
 */

/**
 * Class AdminOrdersController
 * Ce fichier doit être placé dans le dossier override de votre Prestashop en respectant les sous dossiers.
 */
class AdminOrdersController extends AdminOrdersControllerCore
{

	public function __construct()
	{
		parent::__construct();

		$this->_select .= ', a.id_order AS shipto_order
			, a.id_order as shipto_status
			, os.id_order_state as current_state
			, zso.state_send, zso.state_address
			, CONCAT(zsc.receiver_lastname, ",", zsc.receiver_firstname) as shipto_receiver_name
			, zsc.receiver_email as shipto_receiver_email';

		$this->_join .= 'LEFT JOIN '._DB_PREFIX_.'shiptomyid_order zso ON zso.id_order = a.id_order ';
		$this->_join .= 'LEFT JOIN '._DB_PREFIX_.'shiptomyid_cart zsc ON zsc.id_cart = a.id_cart ';

		$iceberg_fields_list = array(
			'shipto_order' => array(
				'title' => $this->l('Ship2MyId Order'),
				'align' => 'center',
				'width' => 'auto',
				'callback' => 'getShiptoOrder',
				'orderby' => false,
				'search' => false,
			),
			'shipto_receiver_name' => array(
				'title' => $this->l('Receiver name'),
				'align' => 'center',
				'width' => 'auto',
				'callback' => 'getShiptoOrderName',
				'orderby' => false,
				'search' => false,
			),
			'shipto_receiver_email' => array(
				'title' => $this->l('Receiver email'),
				'align' => 'center',
				'width' => 'auto',
				'callback' => 'getShiptoOrderEmail',
				'orderby' => false,
				'search' => false,
			),
			'shipto_status' => array(
				'title' => $this->l('Ship2MyId status'),
				'align' => 'center',
				'width' => 'auto',
				'callback' => 'getShiptoOrderStatus',
				'orderby' => false,
				'search' => false,
			)
		);

		$this->fields_list = array_merge($this->fields_list, $iceberg_fields_list);
	}

	public function getShiptoOrder($value, $tr)
	{
		/** @var Shiptomyid $module */
		$tr = isset($tr) && !empty($tr)?$tr:null;
		$module = Module::getInstanceByName('shiptomyid');
		if ($module->hasShiptomyidOption($value))
			return $this->l('Ship2MyId Order');
		else
			return '-';
	}

	public function getShiptoOrderName($value, $tr)
	{
		/** @var Shiptomyid $module */
		$module = Module::getInstanceByName('shiptomyid');
		if ($module->hasShiptomyidOption($tr['id_order']))
			return $value;
		else
			return '-';
	}

	public function getShiptoOrderEmail($value, $tr)
	{
		/** @var Shiptomyid $module */
		$module = Module::getInstanceByName('shiptomyid');
		if ($module->hasShiptomyidOption($tr['id_order']))
			return $value;
		else
			return '-';
	}

	public function getShiptoOrderStatus($value, $tr)
	{
		$module = Module::getInstanceByName('shiptomyid');
		if ($module->hasShiptomyidOption($value))
		{
			if ($tr['current_state'] == Shiptomyid::$os_ps_canceled || $tr['current_state'] == Shiptomyid::$os_cancel)
				return $this->l('Rejected');
			elseif ($tr['state_address'])
				return $this->l('Accepted');
			else
				return $this->l('Pending');
		}
		else
			return '-';
	}
}