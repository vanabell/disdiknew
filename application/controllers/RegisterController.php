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
                if(count($cekemail)==0) {
                    $password = md5($Dataform['email'].$Dataform['password']);
                    $insert = $model->insertGuru($Dataform, $password);
                    if($insert===true) {
                        //zend_debug::dump($insert);die();
                        $this->view->message = 'Insert Success';
                    } else {
                        $this->view->message = 'Insert Failed';
                    }
                } else {
                    $this->view->message = 'Data Sudah Ada';
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
        // action body
    }

}
