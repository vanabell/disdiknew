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

	public function insertPelatihan($data) {
		try {
			$stmt=$this->_db->prepare("INSERT INTO pelatihan
													(
														nama_pelatihan,
														tgl_mulai,
														tgl_selesai,
														status_peserta,
														tingkat_peserta,
														jenis_pelatihan,
														deskripsi,
														gelombang,
														status_pendaftaran,
														id_lembaga,
														kkm,
														kuota
													)
													VALUES
													(
														:nama_pelatihan,
														:tgl_mulai,
														:tgl_selesai,
														:status_peserta,
														:tingkat_peserta,
														:jenis_pelatihan,
														:deskripsi,
														:gelombang,
														:status_pendaftaran,
														:id_lembaga,
														:kkm,
														:kuota
													)
													"
			);
			$stmt->bindParam(':nama_pelatihan', $data['nama']);
			$stmt->bindParam(':tgl_mulai', $data['tgl']);
			$stmt->bindParam(':tgl_selesai', $data['tgl2']);
			$stmt->bindParam(':status_peserta', $data['stat_peserta']);
			$stmt->bindParam(':tingkat_peserta', $data['tingkat_peserta']);
			$stmt->bindParam(':jenis_pelatihan', $data['jenis_pelatihan']);
			$stmt->bindParam(':deskripsi', $data['tos']);
			$stmt->bindParam(':gelombang', $data['gelombang']);
			$stmt->bindParam(':status_pendaftaran', $data['status_pendaftaran']);
			$stmt->bindParam(':id_lembaga', $data['lembaga']);
			$stmt->bindParam(':kkm', $data['kkm']);
			$stmt->bindParam(':kuota', $data['kuota']);
			$a = $stmt->execute();

			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function updatePel($data) {
		try {
			$stmt=$this->_db->prepare("UPDATE pelatihan SET
										nama_pelatihan=:nama_pelatihan,
										tgl_mulai=:tgl_mulai,
										tgl_selesai=:tgl_selesai,
										status_peserta=:status_peserta,
										tingkat_peserta=:tingkat_peserta,
										jenis_pelatihan=:jenis_pelatihan,
										deskripsi=:deskripsi,
										gelombang=:gelombang,
										kkm=:kkm,
										status_pendaftaran=:status_pendaftaran,
										id_lembaga=:id_lembaga,
										kuota=:kuota
									   WHERE id_pelatihan=:id" );

			$stmt->bindParam(':id', $data['id']);
			$stmt->bindParam(':nama_pelatihan', $data['nama']);
			$stmt->bindParam(':tgl_mulai', $data['tgl']);
			$stmt->bindParam(':tgl_selesai', $data['tgl2']);
			$stmt->bindParam(':status_peserta', $data['stat_peserta']);
			$stmt->bindParam(':tingkat_peserta', $data['tingkat_peserta']);
			$stmt->bindParam(':jenis_pelatihan', $data['jenis_pelatihan']);
			$stmt->bindParam(':deskripsi', $data['tos']);
			$stmt->bindParam(':gelombang', $data['gelombang']);
			$stmt->bindParam(':status_pendaftaran', $data['status_pendaftaran']);
			$stmt->bindParam(':id_lembaga', $data['lembaga']);
			$stmt->bindParam(':kkm', $data['kkm']);
			$stmt->bindParam(':kuota', $data['kuota']);
			$a = $stmt->execute();
			return true;
		} catch (Zend_Exception $e) {
			return array("sts"=>false,"msg"=>$e->getMessage());
		}
	}

	public function getAllPelatihan() {
		try {
			$select="SELECT * FROM pelatihan";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function getDetPelatihan($idpel) {
		try {
			$select="SELECT * FROM pelatihan WHERE id_pelatihan='".$idpel."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function getAllPeserta($idpel) {
		try {
			$select="SELECT * FROM pendaftaran WHERE id_pelatihan='".$idpel."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function delPeserta($id) {
    //Zend_Debug::dump($id);die();
    try{
      $stmt1 = $this->_db->prepare("DELETE FROM pendaftaran where id_daftar=:id");
      $stmt1->bindParam(':id', $id);
      $a = $stmt1->execute();
      return $a;
    } catch(Zend_Db_Exception $e) {
      return array("sts"=>false,"msg"=>$e->getMessage());
    }
  }

	public function updatedaftar($id, $nilai) {
		try {
			$stmt=$this->_db->prepare("UPDATE pendaftaran SET
										nilai=:nilai
									   WHERE id_daftar=:id" );

			$stmt->bindParam(':id', $id);
			$stmt->bindParam(':nilai', $nilai);
			$a = $stmt->execute();
			return true;
		} catch (Zend_Exception $e) {
			return array("sts"=>false,"msg"=>$e->getMessage());
		}
	}

}
