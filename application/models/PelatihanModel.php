<?php
class Application_Model_PelatihanModel {
	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Application_Model_DbTables_PelatihanModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

	public function getAllpelatihan() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllpelatihan();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function getAllsertifikasi() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllsertifikasi();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function getAllpelserf() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllpelserf();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getAllPelDet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllPelDet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

}
