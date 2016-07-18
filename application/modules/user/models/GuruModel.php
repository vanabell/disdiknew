<?php
class User_Model_GuruModel {
	protected $_dbTableProduct;
	protected $_db;

    public function __construct()
  	{
  		$this->_dbTableProduct = new User_Model_DbTables_GuruModel();
  		$this->_db = Zend_Registry::get('db_doc');
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

    public function getStatuspeglist() {
  		$productTable = $this->_dbTableProduct;
  		try {
  			$result = $productTable->getStatuspeglist();

  		} catch (Zend_Exception $e) {
  			return $e->getMessage();
  		}
  		return $result;
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

  public function daftar($id_peserta, $id_latih) {
	    $productTable = $this->_dbTableProduct;
	    try {
	      $result = $productTable->daftar($id_peserta, $id_latih);

	    } catch (Zend_Exception $e) {
	      return $e->getMessage();
	    }
	    return $result;
  }
}
