<?php
class Application_Model_AgendaModel {
	protected $_dbTableProduct;
	protected $_db;

	public function __construct()
	{
		$this->_dbTableProduct = new Application_Model_DbTables_AgendaModel();
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

  public function getAllAgendadesc() {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllAgendadesc();

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}

  public function getAllAgendaDet($id) {
		$productTable = $this->_dbTableProduct;
		try {
			$result = $productTable->getAllAgendaDet($id);

		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
		return $result;
	}
}
