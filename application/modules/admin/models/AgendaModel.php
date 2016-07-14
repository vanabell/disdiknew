<?php
class Admin_Model_AgendaModel {
	protected $_dbTableProduct;
	protected $_db;

  public function __construct()
	{
		$this->_dbTableProduct = new Admin_Model_DbTables_AgendaModel();
		$this->_db = Zend_Registry::get('db_doc');
	}

  public function getAllAgenda() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllAgenda();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function insertAgenda($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->insertAgenda($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function getDetAgenda($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getDetAgenda($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function updateAgenda($data) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->updateAgenda($data);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

	public function delAgenda($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->delAgenda($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
