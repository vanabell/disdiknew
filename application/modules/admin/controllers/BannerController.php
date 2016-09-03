<?php
class Admin_BannerController extends Zend_Controller_Action {
    public function indexAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_BannerModel();
      $detail = $model->getAllBanner();
      $this->view->detail = $detail;
      $count = count($detail);
      $this->view->total = $count;
  	}

    public function addAction() {
      $this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_BannerModel();
      $detail = $model->getAllBanner();
      $count = count($detail);
      $this->view->total = $count;

      if ($this->_request->isPost()) {
        $Dataform = $this->_request->getPost();
        $upload = new Zend_File_Transfer();
        $info = $upload->getFileInfo('file');
        $size = $info['file']['size'];

        if($size>=655360) {
          $this->view->message = 'Image Maximum 600Kb';
        } else {
          $filename=$info['file']['name'];
          if($filename!="") {
            $extension=end(explode(".", $filename));
            $newfilename= $Dataform['nama'].".".$extension;
            $path = realpath(APPLICATION_PATH . '/../public/img/slider/');
              $a =  move_uploaded_file($info['file']['tmp_name'],$path.'/'.$newfilename);
              $up = $model->addPhoto($newfilename, $Dataform);
              if($up==true){
               $this->view->msg = 'Insert Sukses';
              }
          }
        }
      }

    }

    public function editAction() {
      $this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_BannerModel();
      $req = $this->getRequest();
      $id = $req->getParam('p');

      $det = $model->getFotodet($id);
      $this->view->det = $det;

      if ($this->_request->isPost()) {
        $Dataform = $this->_request->getPost();
        $upload = new Zend_File_Transfer();
        $info = $upload->getFileInfo('file');
        $size = $info['file']['size'];

        if($Dataform['nama']==null) {
          $this->view->message = 'Please Fill out The Form First!';
        } else if($size>=655360) {
          $this->view->message = 'Image Maximum 600Kb';
        } else {
          $filename="";
          $filename=$info['file']['name'];
          if($filename!="") {
            $extension=end(explode(".", $filename));
            $newfilename= $Dataform['nama'].".".$extension;
            $path = realpath(APPLICATION_PATH . '/../public/img/slider/');
            //var_dump($path);die();
            $fotolawas = $Dataform['fotolawas'];
            unlink($path.'/'.$fotolawas);
              $a =  move_uploaded_file($info['file']['tmp_name'],$path.'/'.$newfilename);
              $up = $model->upPhoto($newfilename, $Dataform);
              if($up==true){
               $this->view->msg = 'Insert Sukses';
              } else {
                 $this->view->massage = 'Insert Gagal';
              }
          } else {
                 $this->view->massage = 'Foto harus diisi';
              
          }
        }

      }

      $id = $req->getParam('p');
      if($id!='') {
        $det = $model->getFotodet($id);
        $this->view->det = $det;
      }

    }

    public function delbannerAction() {
      $model = new Admin_Model_BannerModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delPhoto($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );

    }


}
