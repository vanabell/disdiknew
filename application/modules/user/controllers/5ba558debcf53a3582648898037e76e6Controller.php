<?php
class User_5ba558debcf53a3582648898037e76e6Controller extends Zend_Controller_Action {
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
				$model = new User_Model_SiswaModel();
				$sessionuser = Zend_Registry::get('session_user');
				$id = $sessionuser->noreg;

				$det = $model->getSiswadet($id);
				$this->view->det = $det;
				if ($this->_request->isPost()) {
					$Dataform = $this->_request->getPost();
                    $upload = new Zend_File_Transfer();
                    $info = $upload->getFileInfo('file');
                    $size = $info['file']['size'];
					
					if($Dataform['nis']==null) {
                      $this->view->message = 'Please Fill out The Form First!';
                    } else if($size>=655360) {
                      $this->view->message = 'Image Maximum 600Kb';
                    } else {
                      $filename=$info['file']['name'];
                     
                      if($filename!="") {
                        $extension=end(explode(".", $filename));
                        $newfilename= $Dataform['nis'].".".$extension;
                        $path = realpath(APPLICATION_PATH . '/../public/images/profil/');
                        //var_dump($path);die();
                        unlink($path.'/'.$newfilename);
                          $a =  move_uploaded_file($info['file']['tmp_name'],$path.'/'.$newfilename);
                          $up = $model->upProfilPhoto($Dataform,$newfilename);
                          //Zend_Debug::dump($up);die();
                          if($up==true){
                           $this->view->msg = 'Insert Sukses';
                          } else {
                             $this->view->massage = 'Insert Gagal';
                          }
                      } else {
                         $up = $model->upProfil($Dataform);
                           //Zend_Debug::dump($up);die();
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
					$det = $model->getSiswadet($id);
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
        $model = new User_Model_SiswaModel();
        $data = $model->getPelatihan($sessionuser->tingkat);
       // var_dump($sessionuser->tingkat);die();
        $this->view->data = $data;
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
        $model = new User_Model_SiswaModel();
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

