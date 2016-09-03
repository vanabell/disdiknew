<?php
class Admin_Model_BannerModel {
	protected $_dbTableProduct;
	protected $_db;

  public function __construct()
	{
		$this->_dbTableProduct = new Admin_Model_DbTables_BannerModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

  public function getAllBanner() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllBanner();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function addPhoto($newfilename, $Dataform) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->addPhoto($newfilename, $Dataform);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getFotodet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getFotodet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function upPhoto($newfilename, $Dataform) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->upPhoto($newfilename, $Dataform);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function delPhoto($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delPhoto($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
