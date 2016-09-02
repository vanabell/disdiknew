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

	public function getPass($id) {
		 try {
			 $select="SELECT password FROM master_siswa where id_siswa='".$id."'";
			 $rows=$this->_db->fetchAll($select);
			 return $rows;
		 } catch (Zend_Exception $e) {
			 return $e->getMessage();
		 }
	}

	public function upPass($id,$data) {
		try {
			$stmt=$this->_db->prepare("UPDATE master_siswa SET
										password=:pass WHERE id_siswa=:id" );

			$stmt->bindParam(':id', $id);
			$stmt->bindParam(':pass', $data);
			$a = $stmt->execute();
		return true;
		} catch (Zend_Exception $e) {
			return array("sts"=>false,"msg"=>$e->getMessage());
		}
	}

	public function upProfil($data) {
		 try {
			 $stmt=$this->_db->prepare("UPDATE master_siswa SET
										 nama_lengkap=:nama,
										 no_tlp=:tlp,
										 alamat=:alamat,
										 jkelamin=:jk,
										 nama_sekolah=:ns,
										 tingkat_sekolah=:ts,
										 kec=:kec,
										 agama=:agama,
										 tempat_lahir=:tempat_lahir,
										 tgl_lahir=:tgl_lahir,
										 alamat_sekolah=:alamat_sekolah
										 WHERE nis=:id" );

			 $stmt->bindParam(':id', $data['nis']);
			 $stmt->bindParam(':nama', $data['nama']);
			 $stmt->bindParam(':tlp', $data['tlp']);
			 $stmt->bindParam(':alamat', $data['alamat']);
			 $stmt->bindParam(':jk', $data['jkelamin']);
			 $stmt->bindParam(':ns', $data['nama_sekolah']);
			 $stmt->bindParam(':alamat_sekolah', $data['alamat_sekolah']);
			 $stmt->bindParam(':ts', $data['tingkat_sekolah']);
			 $stmt->bindParam(':kec', $data['kec']);
			 $stmt->bindParam(':agama', $data['agama']);
			 $stmt->bindParam(':tempat_lahir', $data['tl']);
			 $stmt->bindParam(':tgl_lahir', $data['tgllahir']);
			 $a = $stmt->execute();

			 return true;
		 } catch (Zend_Exception $e) {
			 return array("sts"=>false,"msg"=>$e->getMessage());
		 }
	}
	public function cekdaftar($id_peserta, $id_latih) {
		try {
			$select="SELECT * FROM pendaftaran where id_peserta='".$id_peserta."' AND id_pelatihan='".$id_latih."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function upProfilPhoto($data,$file) {
		 try {
			 $stmt=$this->_db->prepare("UPDATE master_siswa SET
										 nama_lengkap=:nama,
										 no_tlp=:tlp,
										 alamat=:alamat,
										 jkelamin=:jk,
										 nama_sekolah=:ns,
										 tingkat_sekolah=:ts,
										 kec=:kec,
										 agama=:agama,
										 tempat_lahir=:tempat_lahir,
										 tgl_lahir=:tgl_lahir,
										 alamat_sekolah=:alamat_sekolah,
										 foto=:foto
										 WHERE nis=:id" );

			 $stmt->bindParam(':id', $data['nis']);
			 $stmt->bindParam(':nama', $data['nama']);
			 $stmt->bindParam(':tlp', $data['tlp']);
			 $stmt->bindParam(':alamat', $data['alamat']);
			 $stmt->bindParam(':jk', $data['jkelamin']);
			 $stmt->bindParam(':ns', $data['nama_sekolah']);
			 $stmt->bindParam(':alamat_sekolah', $data['alamat_sekolah']);
			 $stmt->bindParam(':ts', $data['tingkat_sekolah']);
			 $stmt->bindParam(':kec', $data['kec']);
			 $stmt->bindParam(':agama', $data['agama']);
			 $stmt->bindParam(':tempat_lahir', $data['tl']);
			 $stmt->bindParam(':tgl_lahir', $data['tgllahir']);
			 $stmt->bindParam(':foto', $file);
			 $a = $stmt->execute();

			 return true;
		 } catch (Zend_Exception $e) {
			 return array("sts"=>false,"msg"=>$e->getMessage());
		 }
	}

	public function daftar($id_peserta, $id_latih) {
		try {
			$hardcode = 'siswa';
			$stmt=$this->_db->prepare("INSERT INTO pendaftaran
													(
														id_peserta,
														id_pelatihan,
														status_daftar
													)
													VALUES
													(
														:id,
														:name,
														:status
													)
													"
			);
			$stmt->bindParam(':id', $id_peserta);
			$stmt->bindParam(':name', $id_latih);
			$stmt->bindParam(':status', $hardcode);
			$a = $stmt->execute();
			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function updateSisa($id, $sisa) {
		try {
			$stmt=$this->_db->prepare("UPDATE pelatihan SET
										kuota=:nilai
									   WHERE id_pelatihan=:id" );

			$stmt->bindParam(':id', $id);
			$stmt->bindParam(':nilai', $sisa);
			$a = $stmt->execute();
			return true;
		} catch (Zend_Exception $e) {
			return array("sts"=>false,"msg"=>$e->getMessage());
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
