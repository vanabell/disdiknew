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

	public function upProfil($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->upProfil($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function upProfilPhoto($data,$file) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->upProfilPhoto($data,$file);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function daftar($id_peserta, $id_latih) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->daftar($id_peserta, $id_latih);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getDetSekolah($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getDetSekolah($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getDetKecamatan($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getDetKecamatan($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}


