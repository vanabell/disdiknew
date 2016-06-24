<?php
class Application_Model_RegisterModel {

	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Application_Model_DbTables_RegisterModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

	public function insertGuru($data, $password) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertGuru($data, $password);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function cekEmailGuru($data,$nip) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->cekEmailGuru($data,$nip);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	/*iki jak dicontoh*/
	public function loadKecamatan() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadKecamatan();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

}