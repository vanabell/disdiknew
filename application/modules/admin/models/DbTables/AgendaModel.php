<?php
class Admin_Model_DbTables_AgendaModel extends Zend_Db_Table_Abstract {

  public function getAllAgenda() {
		try {
			$select="SELECT * FROM agenda";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function insertAgenda($data) {
		try {
			$stmt=$this->_db->prepare("INSERT INTO agenda
													(
														isi,
														judul,
														gambar
													)
													VALUES
													(
														:name,
														:title,
														:image
													)
													"
			);
			$stmt->bindParam(':name', $data['nama']);
			$stmt->bindParam(':title', $data['nama']);
			$stmt->bindParam(':image', $filename);
			$a = $stmt->execute();

			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
}
