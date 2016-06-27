<?php
class User_Model_DbTables_SiswaModel extends Zend_Db_Table_Abstract {

	public function getPelatihan($tk) {
		try {
			$select="SELECT * FROM  pelatihan
					 WHERE  status_peserta!=1 and (tingkat_peserta='".$tk."' or tingkat_peserta='ALL')";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
}