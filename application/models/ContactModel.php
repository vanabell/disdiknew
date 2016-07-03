<?php
class Application_Model_ContactModel {
	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Application_Model_DbTables_ContactModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

  public function insertContact($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertContact($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
