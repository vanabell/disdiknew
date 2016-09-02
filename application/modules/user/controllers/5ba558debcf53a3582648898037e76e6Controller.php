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
                      $this->view->message = '<div class="alert alert-danger saved">Please Fill out The Form First!</div>';
                    } else if($size>=655360) {
                      $this->view->message = '<div class="alert alert-danger saved">Image Maximum 600Kb</div>';
                    } else {
                      $filename=$info['file']['name'];

                      if($filename!="") {
                        $extension=end(explode(".", $filename));
                        $newfilename= $id.".".$extension;
                        $path = realpath(APPLICATION_PATH . '/../public/images/profil/');
                        //var_dump($path);die();
                        unlink($path.'/'.$newfilename);
                          $a =  move_uploaded_file($info['file']['tmp_name'],$path.'/'.$newfilename);
                          $up = $model->upProfilPhoto($Dataform,$newfilename);
                          //Zend_Debug::dump($up);die();
                          if($up==true){
                           $this->view->message = '<div class="alert alert-success saved">Upload Foto Sukses!</div>';
                          } else {
                             $this->view->message = '<div class="alert alert-danger saved">Upload Foto Gagal!</div>';
                          }
                      } else {
                         $up = $model->upProfil($Dataform);
                           //Zend_Debug::dump($up);die();
                          if($up==true){
                           $this->view->message = '<div class="alert alert-success saved">Ubah Data Sukses</div>';
                          } else {
                             $this->view->message = '<div class="alert alert-danger saved">Insert Gagal</div>';
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
		public function passAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
				$model = new User_Model_SiswaModel();
				$sessionuser = Zend_Registry::get('session_user');
				$id = $sessionuser->noreg;
				$email = $sessionuser->email;

				if ($this->_request->isPost()) {
					$getpass = $model->getPass($id);
					$Dataform = $this->_request->getPost();
					$pass_lama = $getpass[0]['password'];
					$cek_lama = md5($email.$Dataform['pass_lama']);
					$mail_baru = md5($email.$Dataform['password']);

					if($pass_lama == $cek_lama){
						if($Dataform['password']==$Dataform['confirm']) {
							$up = $model->upPass($id,$mail_baru);
							 if($up==true){
								$this->view->message = '<div class="alert alert-success saved">Ubah Password Sukses</div>';
							 } else {
									$this->view->message = '<div class="alert alert-danger saved">Ubah Password Gagal</div>';
							 }
						} else {
							$this->view->message = '<div class="alert alert-danger saved">Password dan Confirm tidak sama!</div>';
						}
					} else {
						$this->view->message = '<div class="alert alert-danger saved">Password Lama Salah!</div>';
					}

				}
    }
		public function daftarAction() {
        $model = new User_Model_SiswaModel();
        $req = $this->getRequest();
				$sessionuser = Zend_Registry::get('session_user');
				$id_peserta = $sessionuser->noreg;
        $id_pelatihan = $req->getParam('key');
      //  Zend_Debug::dump($id_peserta.' '.$id_pelatihan);die();
				$cek = $model->cekdaftar($id_peserta, $id_pelatihan);
				if(count($cek)==0) {
					$modeladmin = new Admin_Model_PelatihanModel();
					$datapelatihan = $modeladmin->getDetPelatihan($id_pelatihan);
					$kuota = $datapelatihan[0]['kuota'];
					if($kuota!=0) {
						$daftar = $model->daftar($id_peserta, $id_pelatihan, $kuota);
						return $this->_helper->json(
							array(
								'edit' => $daftar,
							)
						);
					} else {
						return $this->_helper->json(
							array(
								'edit' => 'penuh',
							)
						);
					}
					// Zend_Debug::dump($daftar);die();

				} else {
					return $this->_helper->json(
						array(
							'edit' => false,
						)
					);
				}
    }
}
