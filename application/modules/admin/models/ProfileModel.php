<?php
class Admin_Model_ProfileModel {
	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Admin_Model_DbTables_ProfileModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

	public function getAllProfile() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllProfile();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	
	public function getAllProfiledesc() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllProfiledesc();
	
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	
	public function getAllProfileDet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllProfileDet($id);
	
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	
	public function upProfile($data, $tgl, $filename) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->upProfile($data,$tgl, $filename);
	
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	
	public function insertProfile($data, $filename, $newid) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertProfile($data, $filename, $newid);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}