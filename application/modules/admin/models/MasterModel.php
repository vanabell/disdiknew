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

	public function loadIjazah() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->loadIjazah();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getGurulist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getGurulist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getGurudet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getGurudet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function updateGuru($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateGuru($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function delGuru($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delGuru($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	/* MASTER SISWA */
	public function getSiswalist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getSiswalist();

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

	public function delSiswa($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delSiswa($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

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

	public function getJabatandet($nama) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getJabatandet($nama);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function updateJabatan($nama) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateJabatan($nama);

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

	public function delJabatan($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delJabatan($id);

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

	/* MASTER SEKOLAH */
	public function getSekolahlist() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getSekolahlist();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function cekSekolah($nama,$tingkat) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->cekSekolah($nama,$tingkat);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function cekStatsek($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->cekStatsek($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function insertSekolah($data,$id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertSekolah($data,$id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getSekolahdet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getSekolahdet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function updateSekolah($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateSekolah($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function delSekolah($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delSekolah($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function search($kategori, $kunci) {
		$productTable = $this->_dbTableProduct;
		try {

			$result = $productTable->search($kategori, $kunci);


		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
