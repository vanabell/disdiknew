<?php
class Application_Model_ArtikelModel {
	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Application_Model_DbTables_ArtikelModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

	public function getAllArtikel() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllArtikel();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	
	public function getAllArtikeldesc() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllArtikeldesc();
	
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	
	public function getAllArtikelDet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllArtikelDet($id);
	
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	
	public function upArtikel($data, $tgl, $filename) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->upArtikel($data,$tgl, $filename);
	
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
	
	public function insertArtikel($data, $filename, $newid) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertArtikel($data, $filename, $newid);

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