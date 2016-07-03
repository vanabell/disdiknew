<?php
class Admin_Model_ContactModel {
	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Admin_Model_DbTables_ContactModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

  public function getAllContact() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllContact();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function getAllcontactDet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllcontactDet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function delContact($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delContact($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
