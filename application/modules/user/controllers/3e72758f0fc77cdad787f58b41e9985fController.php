<?php
class User_3e72758f0fc77cdad787f58b41e9985fController extends Zend_Controller_Action {
	public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        // action body
    }

    public function editAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
				$model = new User_Model_GuruModel();
				$sessionuser = Zend_Registry::get('session_user');
	  		$id = $sessionuser->noreg;

	  		$det = $model->getGurudet($id);
	  		$this->view->det = $det;
	  		if ($this->_request->isPost()) {
	  			$Dataform = $this->_request->getPost();
                $upload = new Zend_File_Transfer();
                $info = $upload->getFileInfo('file');
                $size = $info['file']['size'];
	  			/*Zend_Debug::dump($Dataform);die();*/    
	  			if($Dataform['nip']==null) {
                      $this->view->message = 'Please Fill out The Form First!';
                    } else if($size>=655360) {
                      $this->view->message = 'Image Maximum 600Kb';
                    } else {
                      $filename=$info['file']['name'];
                     
                      if($filename!="") {
                        $extension=end(explode(".", $filename));
                        $newfilename= $Dataform['nip'].".".$extension;
                        $path = realpath(APPLICATION_PATH . '/../public/images/profilguru/');
                        //var_dump($path);die();
                        unlink($path.'/'.$newfilename);
                          $a =  move_uploaded_file($info['file']['tmp_name'],$path.'/'.$newfilename);
                          $up = $model->updateGuruPhoto($Dataform,$newfilename);
                          Zend_Debug::dump($up);die();
                          if($up==true){
                           $this->view->msg = 'Insert Sukses';
                          } else {
                             $this->view->massage = 'Insert Gagal';
                          }
                      } else {

                         $up = $model->updateGuru($Dataform);
                         //Zend_Debug::dump($up);die();
                           //
                          if($up==true){
                           $this->view->msg = 'Insert Sukses';
                          } else {
                             $this->view->massage = 'Insert Gagal';
                          }
                      }
                  }
	  		}
			$id = $sessionuser->noreg;
	  		if($id!='') {
	  			$det = $model->getGurudet($id);
	  			$this->view->det = $det;
	  		}
    }

    public function trainingAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        // action body
    }

    public function certificationAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        $sessionuser = Zend_Registry::get('session_user');
        $model = new User_Model_GuruModel();

        $data = $model->getPelatihan($sessionuser->tingkat);
        $this->view->data = $data;
				// var_dump($data);die();
        // action body
    }

    public function nilaiAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        // action body
    }

    public function historyAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        // action body
    }

    public function daftarAction() {
        $model = new User_Model_GuruModel();
        $req = $this->getRequest();
				$sessionuser = Zend_Registry::get('session_user');
				$id_peserta = $sessionuser->noreg;
        $id_pelatihan = $req->getParam('key');
      //  Zend_Debug::dump($id_peserta.' '.$id_pelatihan);die();
        $daftar = $model->daftar($id_peserta, $id_pelatihan);

        return $this->_helper->json(
                array(
                        'edit' => $daftar,
                )
        );
    }
}
