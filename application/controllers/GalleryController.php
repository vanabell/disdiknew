<?php
class GalleryController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function photoAction()
    {
        // action body
    }

    public function videoAction()
    {
        $model = new Application_Model_GaleriModel();
        $listvideo = $model->getVideolist();
    		$this->view->data = $listvideo;
    }
}
