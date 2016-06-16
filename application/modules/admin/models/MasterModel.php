<?php
class Admin_Model_MasterModel {
	protected $_dbTableProduct;
	protected $_db;

  public function __construct()
	{
		$this->_dbTableProduct = new Admin_Model_DbTables_MasterModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

  /* MASTER KECAMATAN */
  public function getKecamatanlist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getKecamatanlist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function insertKecamatan($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertKecamatan($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function cekKecamatan($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->cekKecamatan($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function getKecamatandet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getKecamatandet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
  public function updateKecamatan($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateKecamatan($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
  public function delKecamatan($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delKecamatan($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  /* MASTER GURU */

}
