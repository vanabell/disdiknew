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

	public function loadAllEmail($data,$akses) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadAllEmail($data,$akses);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function insertSiswa($data, $password) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertSiswa($data, $password);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function cekEmailSiswa($data,$nis) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->cekEmailSiswa($data,$nis);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function loadKecamatan() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadKecamatan();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function loadMapel($tksekolah) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadMapel($tksekolah);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function loadSekolah($kecamatan,$tksekolah) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadSekolah($kecamatan,$tksekolah);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function loadJabatan($tksekolah) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadJabatan($tksekolah);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function loadGolongan() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadGolongan();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function loadRuang() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadRuang();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function loadStatpeg() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadStatpeg();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function loadIjazah() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadIjazah();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
