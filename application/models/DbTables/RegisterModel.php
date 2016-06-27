<?php
class Application_Model_DbTables_RegisterModel extends Zend_Db_Table_Abstract {

	public function insertGuru($data, $password) {
		$golruang = $data['gol_ruang'].$data['ruang'];
		try {
			$stmt=$this->_db->prepare("INSERT INTO master_guru
													(
														nip,
														nama_lengkap,
														no_tlp,
														alamat,
														email,
														password,
														foto,
														jenis_sekolah,
														jenis_peg,
														kec,
														tingkat_sekolah,
														nama_sekolah,
														umur,
														masa_kerja,
														jkelamin,
														mapel,
														status_sek,
														stat_peg,
														golruang,
														jabatan,
														sertifikasi,
														thn_sertifikasi,
														pendidikan,
														thn_pendidikan,
														domisili
													)
													VALUES
													(
														:nip,
														:nama_lengkap,
														:no_tlp,
														:alamat,
														:email,
														:password,
														:foto,
														:jenis_sekolah,
														:jenis_peg,
														:kec,
														:tingkat_sekolah,
														:nama_sekolah,
														:umur,
														:masa_kerja,
														:jkelamin,
														:mapel,
														:status_sek,
														:stat_peg,
														:golruang,
														:jabatan,
														:sertifikasi,
														:thn_sertifikasi,
														:pendidikan,
														:thn_pendidikan,
														:domisili
													)
													"
			);
			$stmt->bindParam(':nip', $data['nip']);
			$stmt->bindParam(':nama_lengkap', $data['nama']);
			$stmt->bindParam(':no_tlp', $data['tlp']);
			$stmt->bindParam(':alamat', $data['alamat']);
			$stmt->bindParam(':email', $data['email']);
			$stmt->bindParam(':password', $password);
			$stmt->bindParam(':foto', $data['foto']);
			$stmt->bindParam(':jenis_sekolah', $data['jenis_sek']);
			$stmt->bindParam(':jenis_peg', $data['jenis_peg']);
			$stmt->bindParam(':kec', $data['kec']);
			$stmt->bindParam(':tingkat_sekolah', $data['tingkat_sekolah']);
			$stmt->bindParam(':nama_sekolah', $data['nama_sekolah']);
			$stmt->bindParam(':umur', $data['umur']);
			$stmt->bindParam(':masa_kerja', $data['masa_kerja']);
			$stmt->bindParam(':jkelamin', $data['jkelamin']);
			$stmt->bindParam(':mapel', $data['mapel']);
			$stmt->bindParam(':status_sek', $data['status']);
			$stmt->bindParam(':stat_peg', $data['stat_peg']);
			$stmt->bindParam(':golruang', $golruang);
			$stmt->bindParam(':jabatan', $data['jabatan']);
			$stmt->bindParam(':sertifikasi', $data['sertifikasi']);
			$stmt->bindParam(':thn_sertifikasi', $data['thn_sertifikasi']);
			$stmt->bindParam(':pendidikan', $data['pendidikan']);
			$stmt->bindParam(':thn_pendidikan', $data['thn_pendidikan']);
			$stmt->bindParam(':domisili', $data['domisili']);
			$a = $stmt->execute();

			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function cekEmailGuru($data,$nip) {
		try {
			$select="SELECT * FROM master_guru where email='".$data."' or nip='".$nip."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function loadKecamatan() {
		try {
			$select="SELECT * FROM kecamatan order by nama_kec asc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function loadMapel()	{
		try {
			$select="SELECT * FROM mapel order by nama_mapel asc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function loadSekolah($kecamatan,$tksekolah)	{
		try {
			$select='SELECT * FROM master_sekolah where tingkat ='.$tksekolah.' and id_kecamatan = '.$kecamatan.' order by nama_sekolah asc';
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function loadIjazah()	{
		try {
			$select="SELECT * FROM ijazah order by id_ijazah asc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function loadJabatan()	{
		try {
			$select="SELECT * FROM jabatan order by nama_jabatan asc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function loadGolongan()	{
		try {
			$select="SELECT * FROM golongan order by nama_golongan asc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function loadRuang()	{
		try {
			$select="SELECT * FROM ruang order by nama_ruang asc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function loadStatpeg()	{
		try {
			$select="SELECT * FROM status_kepegawaian order by nama_statuspeg asc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
}
