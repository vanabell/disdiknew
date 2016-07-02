<?php
class Admin_Model_GaleriModel {
	protected $_dbTableProduct;
	protected $_db;

  public function __construct()
	{
		$this->_dbTableProduct = new Admin_Model_DbTables_GaleriModel();
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

  public function insertVideo($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertVideo($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function getVideodet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getVideodet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function updateVideo($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateVideo($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function delVideo($id) {
    $productTable = $this->_dbTableProduct;
    try {
      $result = $productTable->delVideo($id);

    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
    return $result;
  }
}
