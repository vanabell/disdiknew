<?php
class Admin_Model_DbTables_ProfileModel extends Zend_Db_Table_Abstract {

	public function getAllProfile() {
		try {
			$select="SELECT * FROM profile";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function getAllProfiledesc() {
		try {
			$select="SELECT * FROM profile order by id_profil desc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function getAllProfileDet($id) {
		try {
			$select="SELECT * FROM profile where id_profil='".$id."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function insertProfile($data, $filename, $newid) {
		try {
			$stmt=$this->_db->prepare("INSERT INTO profile
													(
														id_profil,
														nama_profil,
														konten,
														gambar
													)
													VALUES
													(
														:id,
														:name,
														:title,
														:image
													)
													"
			);
			$stmt->bindParam(':id', $newid);
			$stmt->bindParam(':title', $data['tos']);
			$stmt->bindParam(':name', $data['nama']);
			$stmt->bindParam(':image', $filename);
			$a = $stmt->execute();
	
			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function upProfile($data, $tgl, $filename) {
		try {
			$stmt=$this->_db->prepare("UPDATE profile SET
										nama_profil=:title,
										konten=:tos,
										gambar=:image
									   WHERE id_profil=:id" );
	
			$stmt->bindParam(':id', $data['id']);
			$stmt->bindParam(':title', $data['nama']);
			$stmt->bindParam(':tos', $data['tos']);
			$stmt->bindParam(':image', $filename);
			$a = $stmt->execute();
			return true;
		} catch (Zend_Exception $e) {
			return array("sts"=>false,"msg"=>$e->getMessage());
		}
	}
}