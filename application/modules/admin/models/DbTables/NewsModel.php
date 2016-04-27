<?php
class Admin_Model_DbTables_NewsModel extends Zend_Db_Table_Abstract {

	public function getAllnewslimit() {
		try {
			$select="SELECT * FROM news order by id_berita desc limit 3";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function getAllNews() {
		try {
			$select="SELECT * FROM news";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function getAllNewsdesc() {
		try {
			$select="SELECT * FROM news order by id_berita desc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function getAllNewsDet($id) {
		try {
			$select="SELECT * FROM news where id_berita='".$id."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function insertNews($data, $filename, $newid) {
		try {
			$stmt=$this->_db->prepare("INSERT INTO news
													(
														id_berita,
														isi,
														judul,
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
			$stmt->bindParam(':name', $data['tos']);
			$stmt->bindParam(':title', $data['nama']);
			$stmt->bindParam(':image', $filename);
			$a = $stmt->execute();
	
			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function upNews($data, $tgl, $filename) {
		try {
			$stmt=$this->_db->prepare("UPDATE news SET
										judul=:title,
										edit_time=:sub,
										isi=:tos,
										gambar=:image
									   WHERE id_berita=:id" );
	
			$stmt->bindParam(':id', $data['id']);
			$stmt->bindParam(':title', $data['nama']);
			$stmt->bindParam(':sub', $tgl);
			$stmt->bindParam(':tos', $data['tos']);
			$stmt->bindParam(':image', $filename);
			$a = $stmt->execute();
			return true;
		} catch (Zend_Exception $e) {
			return array("sts"=>false,"msg"=>$e->getMessage());
		}
	}
	
	public function search($kategori, $kunci) {
		try {
			if($kategori=='all'){
				$select="SELECT * FROM useradmin order by ua_created desc";
				$rows=$this->_db->fetchAll($select);
				return $rows;
			} else if($kategori=='firstname') {
				$select="SELECT * FROM useradmin where ua_firstname like'%".$kunci."%'";
				$rows=$this->_db->fetchAll($select);
				return $rows;
	
			} else if($kategori=='lastname') {
				$select="SELECT * FROM useradmin where ua_lastname like'%".$kunci."%'";
				$rows=$this->_db->fetchAll($select);
				return $rows;
	
			} else if($kategori=='email') {
				$select="SELECT * FROM useradmin where ua_email like'%".$kunci."%'";
				$rows=$this->_db->fetchAll($select);
				return $rows;
	
			} else if($kategori=='akses') {
				$select="SELECT * FROM useradmin where ua_akses like'%".$kunci."%'";
				$rows=$this->_db->fetchAll($select);
				return $rows;
	
			}
	
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
}