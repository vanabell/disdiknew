<?php
class Admin_Model_DbTables_PelatihanModel extends Zend_Db_Table_Abstract {

	public function getAllLembaga() {
		try {
			$select="SELECT * FROM useradmin WHERE ua_akses='merchant'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}


}
