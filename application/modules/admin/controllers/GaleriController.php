<?php
class Admin_GaleriController extends Zend_Controller_Action {
    public function indexAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
  	}

    /* Photo Crud */
    public function photoAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_GaleriModel();
      $data = $model->getFotolist();

      $this->view->detail = $data;

  	}
    public function addphotoAction() {
      $this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_GaleriModel();

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
            $path = realpath(APPLICATION_PATH . '/../public/images/media/');
              $a =  move_uploaded_file($info['file']['tmp_name'],$path.'/'.$newfilename);
              $up = $model->addPhoto($newfilename, $Dataform);
              if($up==true){
               $this->view->msg = 'Insert Sukses';
              }
          }
        }
      }
  	}
    public function editphotoAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_GaleriModel();
      $req = $this->getRequest();
      $id = $req->getParam('p');

      $det = $model->getFotodet($id);
      $this->view->det = $det;

      if ($this->_request->isPost()) {
        $Dataform = $this->_request->getPost();
        $upload = new Zend_File_Transfer();
        $info = $upload->getFileInfo('file');
        $size = $info['file']['size'];

        /*Zend_Debug::dump($Dataform);die();*/
        if($Dataform['nama']==null) {
          $this->view->message = 'Please Fill out The Form First!';
        } else if($size>=655360) {
          $this->view->message = 'Image Maximum 600Kb';
        } else {
          $filename=$info['file']['name'];
          if($filename!="") {
            $extension=end(explode(".", $filename));
            $newfilename= $Dataform['nama'].".".$extension;
            $path = realpath(APPLICATION_PATH . '/../public/images/media/');
            //var_dump($path);die();
            unlink($path.'/'.$newfilename);
              $a =  move_uploaded_file($info['file']['tmp_name'],$path.'/'.$newfilename);
              $up = $model->upPhoto($newfilename, $Dataform);
              if($up==true){
               $this->view->msg = 'Insert Sukses';
              } else {
                 $this->view->massage = 'Insert Gagal';
              }
          } else {
             $up = $model->upPhoto($Dataform['image'], $Dataform);
              if($up==true){
               $this->view->msg = 'Insert Sukses';
              } else {
                 $this->view->massage = 'Insert Gagal';
              }
          }
        }

      }

      $id = $req->getParam('p');
      if($id!='') {
        $det = $model->getFotodet($id);
        $this->view->det = $det;
      }
  	}
    public function delphotoAction() {
      $model = new Admin_Model_GaleriModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delPhoto($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );

  	}

    /* Video Crud */
    public function videoAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_GaleriModel();
      $listvideo = $model->getVideolist();
  		$this->view->detail = $listvideo;
  	}
    public function addvideoAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      if ($this->_request->isPost()) {
        $model = new Admin_Model_GaleriModel();
  			$Dataform = $this->_request->getPost();

  			if($Dataform['url']==null || $Dataform['nama']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				//Zend_Debug::dump(count($cekemail));die();
  					$insert = $model->insertVideo($Dataform);
  					if($insert===true) {
  						//zend_debug::dump($insert);die();
  						$this->view->msg = 'Insert Success';
  					} else {
  						$this->view->message = 'Insert Failed';
  					}
  			}
  		}
  	}
    public function editvideoAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_GaleriModel();
      $req = $this->getRequest();
  		$id = $req->getParam('p');

  		$det = $model->getVideodet($id);
  		$this->view->det = $det;
  		if ($this->_request->isPost()) {
  			$Dataform = $this->_request->getPost();
  			/*Zend_Debug::dump($Dataform);die();*/
  			if($Dataform['nama']==null || $Dataform['url']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				//Zend_Debug::dump($Dataform);die();
  				$insert = $model->updateVideo($Dataform);
  			}

  			if($insert===true) {
  				$this->view->msg = 'Insert Success';
  			} else {
  				$this->view->message = 'Insert Failed';
  			}

  		}
  		$id = $req->getParam('p');
  		if($id!='') {
  			$det = $model->getVideodet($id);
  			$this->view->det = $det;
  		}
  	}
    public function delvideoAction() {
      $model = new Admin_Model_GaleriModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delVideo($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );
  	}

}
