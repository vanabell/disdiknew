<?php
class User_a22ee85e6bbede780075466dbf9e00c3Controller extends Zend_Controller_Action {
	public function indexAction() {
		//$this->_helper->layout->disableLayout();
		$this->view->title = "Login User";

		if ($this->_request->isPost()) {
			$dataform = $this->_request->getPost();
			$user = $dataform['email'];
			$pwd = $dataform['password'];
			//
			$model = new User_Model_EditorModel();
			$data = $model->getAccount($user);
			$datasiswa= $model->getAccountSiswa($user);
			$passencrypt = md5($user.$pwd);
			if(count($data)!=0){
				//
				$password = $data[0]['password'];
				if($password==$passencrypt && count($data)!=0) {
					$sessionuser = Zend_Registry::get('session_user');
					$sessionuser->user_id = $data[0]['nama_lengkap'];
					$sessionuser->noreg = $data[0]['nip'];
					$sessionuser->status = 'guru';
					$sessionuser->tingkat = $datasiswa[0]['tingkat_sekolah'];
					$this->_helper->redirector('index','3e72758f0fc77cdad787f58b41e9985f','user');
				} else {
					$this->view->message = 'Wrong Password or Email, Please Try Again..';
				}
			} else {
				$passwordsiswa = $datasiswa[0]['password'];
				// Zend_Debug::dump($datasiswa);die();
				if($passwordsiswa==$passencrypt && count($datasiswa)!=0) {
					$sessionuser = Zend_Registry::get('session_user');
					$sessionuser->user_id = $datasiswa[0]['nama_lengkap'];
					$sessionuser->noreg = $datasiswa[0]['id_siswa'];
					$sessionuser->status = 'siswa';
					$this->_helper->redirector('index','5ba558debcf53a3582648898037e76e6','user');
				} else {
					$this->view->message = 'Wrong Password or Email, Please Try Again..';
				}
			}


		}
	}

	public function logoutAction() {
	  Zend_Session::destroy(true);
      $this->_helper->redirector('index','a22ee85e6bbede780075466dbf9e00c3','user');
	}
}
