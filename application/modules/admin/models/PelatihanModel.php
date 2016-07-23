<?php
class Admin_Model_PelatihanModel {
	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Admin_Model_DbTables_PelatihanModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

  public function getAllLembaga() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllLembaga();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function insertPelatihan($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertPelatihan($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	

}
