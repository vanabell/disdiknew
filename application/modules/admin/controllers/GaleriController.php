<?php
class Admin_GaleriController extends Zend_Controller_Action {
    public function indexAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
  	}

    /* Photo Crud */
    public function photoAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_GaleriModel();

  	}
    public function addphotoAction() {
      $this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_GaleriModel();
  	}
    public function editphotoAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_GaleriModel();
  	}
    public function delphotoAction() {
      $model = new Admin_Model_GaleriModel();

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
