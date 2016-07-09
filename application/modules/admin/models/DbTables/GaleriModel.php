<?php
class Admin_Model_DbTables_GaleriModel extends Zend_Db_Table_Abstract {

  public function getVideolist() {
    try {
      $select="SELECT id_galeri, judul, video FROM galeri order by id_galeri asc";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function insertVideo($data) {
      try {
        $stmt=$this->_db->prepare("INSERT INTO galeri
                            (judul, video) VALUES (:nama, :url)");

        $stmt->bindParam(':nama', $data['nama']);
        $stmt->bindParam(':url', $data['url']);
        $a = $stmt->execute();

        return true;
      } catch (Zend_Exception $e) {
        return $e->getMessage();
      }
  }

  public function getVideodet($id) {
   try {
     $select="SELECT * FROM galeri where id_galeri='".$id."'";
     $rows=$this->_db->fetchAll($select);
     return $rows;
   } catch (Zend_Exception $e) {
     return $e->getMessage();
   }
 }

 public function updateVideo($data) {
     try {
       $stmt=$this->_db->prepare("UPDATE galeri SET
                     judul=:nama,
                     video=:url
                     WHERE id_galeri=:id" );

       $stmt->bindParam(':id', $data['id']);
       $stmt->bindParam(':nama', $data['nama']);
       $stmt->bindParam(':url', $data['url']);
       $a = $stmt->execute();

       return true;
     } catch (Zend_Exception $e) {
       return array("sts"=>false,"msg"=>$e->getMessage());
     }
 }
 public function delVideo($id) {
   //Zend_Debug::dump($id);die();
   try{
     $stmt1 = $this->_db->prepare("DELETE FROM galeri where id_galeri=:id");
     $stmt1->bindParam(':id', $id);
     $a = $stmt1->execute();
     return $a;
   } catch(Zend_Db_Exception $e) {
     return array("sts"=>false,"msg"=>$e->getMessage());
   }
 }
}
