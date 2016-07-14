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
														nama_agenda,
														tgl
													)
													VALUES
													(
														:name,
														:title,
														:image
													)
													"
			);
			$stmt->bindParam(':name', $data['detail']);
			$stmt->bindParam(':title', $data['nama']);
			$stmt->bindParam(':image', $data['tgl']);
			$a = $stmt->execute();

			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function updateAgenda($data) {
    		try {
    			$stmt=$this->_db->prepare("UPDATE agenda SET
    										isi=:isi, nama_agenda=:nama,
    										tgl=:tgl WHERE id_agenda=:id" );

    			$stmt->bindParam(':id', $data['id']);
          		$stmt->bindParam(':nama', $data['nama']);
    			$stmt->bindParam(':tgl', $data['tgl']);
    			$stmt->bindParam(':isi', $data['detail']);
    			$a = $stmt->execute();

    			return true;
    		} catch (Zend_Exception $e) {
    			return array("sts"=>false,"msg"=>$e->getMessage());
    		}
  	}

  	public function getDetAgenda($id) {
		try {
			$select="SELECT * FROM agenda WHERE id_agenda='".$id."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function delAgenda($id) {
      //Zend_Debug::dump($id);die();
      try{
        $stmt1 = $this->_db->prepare("DELETE FROM agenda where id_agenda=:id");
        $stmt1->bindParam(':id', $id);
        $a = $stmt1->execute();
        return $a;
      } catch(Zend_Db_Exception $e) {
        return array("sts"=>false,"msg"=>$e->getMessage());
      }
    }

}
