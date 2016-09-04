<?php
class Application_Model_GaleriModel {
	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Application_Model_DbTables_GaleriModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

	public function getVideolist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getVideolist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getFotolist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getFotolist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
