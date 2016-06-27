<?php
class User_Model_SiswaModel {
	protected $_dbTableProduct;
	protected $_db;
	
	public function __construct()
	{
		$this->_dbTableProduct = new User_Model_DbTables_SiswaModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

	public function getPelatihan($status) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getPelatihan($status);
	
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

}