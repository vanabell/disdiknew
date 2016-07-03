<?php
class Application_Model_DbTables_ContactModel extends Zend_Db_Table_Abstract {

  public function insertContact($data) {
    try {
      $stmt=$this->_db->prepare("INSERT INTO kontak
                          (
                            nama,
                            deskripsi,
                            tlp,
                            email
                          )
                          VALUES
                          (
                            :nama,
                            :deskripsi,
                            :tlp,
                            :email
                          )
                          "
      );
      $stmt->bindParam(':nama', $data['nama']);
      $stmt->bindParam(':email', $data['email']);
      $stmt->bindParam(':deskripsi', $data['desc']);
      $stmt->bindParam(':tlp', $data['tlp']);
      $a = $stmt->execute();

      return true;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }
}
