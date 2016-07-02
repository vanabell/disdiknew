<?php

class RegisterController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function guruAction()
    {
        if ($this->_request->isPost()) {
            $model = new Application_Model_RegisterModel();
            $Dataform = $this->_request->getPost();
            $cekemail = $model->cekEmailGuru($Dataform['email'], $Dataform['nip']);
                //Zend_Debug::dump($cekemail);die();
              if($Dataform['email'] != "" && $Dataform['nip'] != "") {
                if(count($cekemail)==0) {
                    $password = md5($Dataform['email'].$Dataform['password']);
                    $insert = $model->insertGuru($Dataform, $password);
                    if($insert===true) {
                        //zend_debug::dump($insert);die();
                        $this->view->message = '<div class="alert alert-success saved">Insert Success</div>';
                    } else {
                        $this->view->message = '<div class="alert alert-danger saved">Insert Failed</div>';
                    }
                } else {
                    $this->view->message = '<div class="alert alert-danger saved">Data Sudah Ada!</div>';
                }
            } else {
                $this->view->message = '<div class="alert alert-danger saved">Data Harus Di isi!</div>';
            }

        }
    }

    public function ajaxsekolahAction() {
        $request = $this->getRequest();
        $kecamatan = $request->getParam('id_kec');
        $tksekolah = $request->getParam('tingkat');
        $model = new Application_Model_RegisterModel();
          $data = $model->loadSekolah($kecamatan,$tksekolah);
          return $this->_helper->json(
                  array(
                          'data' => $data,
                  )
          );
    }

    public function ajaxmapelAction() {
        $request = $this->getRequest();
        $tksekolah = $request->getParam('tingkat');
        $model = new Application_Model_RegisterModel();
        $data = $model->loadMapel($tksekolah);
        return $this->_helper->json(
                array(
                        'data' => $data,
                )
        );
    }

    public function ajaxjabatanAction() {
        $request = $this->getRequest();
        $tksekolah = $request->getParam('tingkat');
        $model = new Application_Model_RegisterModel();
        $data = $model->loadJabatan($tksekolah);
        return $this->_helper->json(
                array(
                        'data' => $data,
                )
        );
    }

    public function siswaAction()
    {
        if ($this->_request->isPost()) {
            $model = new Application_Model_RegisterModel();
            $Dataform = $this->_request->getPost();

            $cekemail = $model->cekEmailSiswa($Dataform['email'], $Dataform['nis']);
            if($Dataform['email'] != "" && $Dataform['nis'] != "") {
                //Zend_Debug::dump($cekemail);die();
                if(count($cekemail)==0) {
                    $password = md5($Dataform['email'].$Dataform['password']);

                    $insert = $model->insertSiswa($Dataform, $password);
                    // Zend_Debug::dump($insert);die();
                    if($insert===true) {
                        $this->view->message = '<div class="alert alert-success saved">Insert Success</div>';
                    } else {
                        $this->view->message = '<div class="alert alert-danger saved">Insert Failed</div>';
                    }
                } else {
                    $this->view->message = '<div class="alert alert-danger saved">Data Sudah Ada</div>';
                }
            } else {
              $this->view->message = '<div class="alert alert-danger saved">Data Harus Di isi!</div>';
            }
        }
    }

}
