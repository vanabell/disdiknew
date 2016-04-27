<?php
class Admin_Model_DbTables_ArtikelModel extends Zend_Db_Table_Abstract {

	public function getAllartikellimit() {
		try {
			$select="SELECT * FROM artikel order by id_artikel desc limit 3";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function getAllartikel() {
		try {
			$select="SELECT * FROM artikel";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function getAllartikeldesc() {
		try {
			$select="SELECT * FROM artikel order by id_artikel desc";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function getAllartikelDet($id) {
		try {
			$select="SELECT * FROM artikel where id_artikel='".$id."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function insertartikel($data, $filename, $newid) {
		try {
			$stmt=$this->_db->prepare("INSERT INTO artikel
													(
														id_artikel,
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
	
	public function upartikel($data, $tgl, $filename) {
		try {
			$stmt=$this->_db->prepare("UPDATE artikel SET
										judul=:title,
										edit_time=:sub,
										isi=:tos,
										gambar=:image
									   WHERE id_artikel=:id" );
	
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