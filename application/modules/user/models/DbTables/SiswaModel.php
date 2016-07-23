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

	public function upProfil($data) {
		 try {
			 $stmt=$this->_db->prepare("UPDATE master_siswa SET
										 nama_lengkap=:nama, no_tlp=:tlp,
										 alamat=:alamat,jkelamin=:jk,
										 nama_sekolah=:ns, tingkat_sekolah=:ts,
										 kec=:kec WHERE nis=:id" );

			 $stmt->bindParam(':id', $data['nis']);
			 $stmt->bindParam(':nama', $data['nama']);
			 $stmt->bindParam(':tlp', $data['tlp']);
			 $stmt->bindParam(':alamat', $data['alamat']);
			 $stmt->bindParam(':jk', $data['jkelamin']);
			 $stmt->bindParam(':ns', $data['nama_sekolah']);
			 $stmt->bindParam(':ts', $data['tingkat_sekolah']);
			 $stmt->bindParam(':kec', $data['kec']);
			 $a = $stmt->execute();

			 return true;
		 } catch (Zend_Exception $e) {
			 return array("sts"=>false,"msg"=>$e->getMessage());
		 }
	}

	public function upProfilPhoto($data,$file) {
		 try {
			 $stmt=$this->_db->prepare("UPDATE master_siswa SET
										 nama_lengkap=:nama, no_tlp=:tlp,
										 alamat=:alamat,jkelamin=:jk,
										 nama_sekolah=:ns, tingkat_sekolah=:ts,
										 kec=:kec,foto=:foto WHERE nis=:id" );

			 $stmt->bindParam(':id', $data['nis']);
			 $stmt->bindParam(':nama', $data['nama']);
			 $stmt->bindParam(':tlp', $data['tlp']);
			 $stmt->bindParam(':alamat', $data['alamat']);
			 $stmt->bindParam(':jk', $data['jkelamin']);
			 $stmt->bindParam(':ns', $data['nama_sekolah']);
			 $stmt->bindParam(':ts', $data['tingkat_sekolah']);
			 $stmt->bindParam(':kec', $data['kec']);
			 $stmt->bindParam(':foto', $file);
			 $a = $stmt->execute();

			 return true;
		 } catch (Zend_Exception $e) {
			 return array("sts"=>false,"msg"=>$e->getMessage());
		 }
	}
	
	public function daftar($id_peserta, $id_latih) {
		try {
			$stmt=$this->_db->prepare("INSERT INTO pendaftaran
													(
														id_peserta,
														id_pelatihan
													)
													VALUES
													(
														:id,
														:name
													)
													"
			);
			$stmt->bindParam(':id', $id_peserta);
			$stmt->bindParam(':name', $id_latih);
			$a = $stmt->execute();
			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function getDetSekolah($id) {
		 try {
			 $select="SELECT * FROM master_sekolah where induk_sekolah='".$id."'";
			 $rows=$this->_db->fetchAll($select);
			 return $rows;
		 } catch (Zend_Exception $e) {
			 return $e->getMessage();
		 }
	}

	public function getDetKecamatan($id) {
		 try {
			 $select="SELECT * FROM kecamatan where id_kec='".$id."'";
			 $rows=$this->_db->fetchAll($select);
			 return $rows;
		 } catch (Zend_Exception $e) {
			 return $e->getMessage();
		 }
	}

}
