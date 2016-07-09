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

	public function getKecamatanlist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getKecamatanlist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getSiswadet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getSiswadet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function updateSiswa($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateSiswa($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
