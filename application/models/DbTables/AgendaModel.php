<?php
class Application_Model_DbTables_AgendaModel extends Zend_Db_Table_Abstract {

  public function getAllagendalimit() {
		try {
			$select="SELECT * FROM agenda order by id_agenda desc limit 3";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function getAllAgenda() {
		try {
			$select="SELECT * FROM agenda";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function getAllAgendadesc() {
		try {
			$select="SELECT * FROM agenda order by id_agenda desc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function getAllAgendaDet($id) {
		try {
			$select="SELECT * FROM agenda where id_agenda='".$id."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
}
