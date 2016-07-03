<?php

class ContactController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
      if ($this->_request->isPost()) {
          $model = new Application_Model_ContactModel();
          $Dataform = $this->_request->getPost();
              //Zend_Debug::dump($cekemail);die();
            if($Dataform['email'] != "" && $Dataform['nama'] != "" && $Dataform['tlp'] != "" && $Dataform['desc'] !="") {
              $insert = $model->insertContact($Dataform);
              if($insert===true) {
                  //zend_debug::dump($insert);die();
                  $this->view->message = '<div class="alert alert-success saved">Insert Success</div>';
              } else {
                  $this->view->message = '<div class="alert alert-danger saved">Insert Failed</div>';
              }
          } else {
              $this->view->message = '<div class="alert alert-danger saved">Data Harus Di isi!</div>';
          }

      }
    }

}
