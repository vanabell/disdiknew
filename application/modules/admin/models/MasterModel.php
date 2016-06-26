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

	/* MASTER SISWA */

	/* MASTER MAPEL */
	public function getMapellist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getMapellist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function cekMapel($nama,$tingkat) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->cekMapel($nama,$tingkat);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function insertMapel($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertMapel($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getMapeldet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getMapeldet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function updateMapel($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateMapel($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function delMapel($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delMapel($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	/* MASTER JABATAN */
	public function getJabatanlist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getJabatanlist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function cekJabatan($nama) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->cekJabatan($nama);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function insertJabatan($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertJabatan($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	/* MASTER STATUS PEGAWAI */
	public function getStatuspeglist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getStatuspeglist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function cekStatpeg($nama) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->cekStatpeg($nama);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function insertStatpeg($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertStatpeg($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getStatpegdet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getStatpegdet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function updateStatpeg($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateStatpeg($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function delStatpeg($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delStatpeg($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
