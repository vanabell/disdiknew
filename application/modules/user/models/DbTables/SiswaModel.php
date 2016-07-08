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

	public function getKecamatanlist() {
		try {
			$select="SELECT * FROM kecamatan";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function getSiswadet($id) {
		 try {
			 $select="SELECT * FROM master_siswa where id_siswa='".$id."'";
			 $rows=$this->_db->fetchAll($select);
			 return $rows;
		 } catch (Zend_Exception $e) {
			 return $e->getMessage();
		 }
	}

	public function updateSiswa($data) {
		 try {
			 $stmt=$this->_db->prepare("UPDATE master_guru SET
										 nama_kec=:nama    										    									   WHERE nip=:id" );

			 $stmt->bindParam(':id', $data['id']);
			 $stmt->bindParam(':nama', $data['nama']);
			 $a = $stmt->execute();

			 return true;
		 } catch (Zend_Exception $e) {
			 return array("sts"=>false,"msg"=>$e->getMessage());
		 }
	}
}
