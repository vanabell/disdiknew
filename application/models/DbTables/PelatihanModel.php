<?php
class Application_Model_DbTables_PelatihanModel extends Zend_Db_Table_Abstract {

	public function getAllpellimit() {
		try {
			$select="SELECT * FROM pelatihan order by id_pelatihan desc limit 3";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function getAllpelatihan() {
		try {
			$select="SELECT * FROM pelatihan where jenis_pelatihan=1 order by id_pelatihan ";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function getAllsertifikasi() {
		try {
			$select="SELECT * FROM pelatihan where jenis_pelatihan=2 order by id_pelatihan";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function getAllpelserf() {
		try {
			$select="SELECT * FROM pelatihan where jenis_pelatihan=3 order by id_pelatihan";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
}
