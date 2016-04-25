<?php

class NewsController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $model = new Application_Model_NewsModel();
        $data = $model->getAllNews();
        $this->view->data = $data;
    }

    public function detailAction()
    {
        $model = new Application_Model_NewsModel();
        $req = $this->getRequest();
        $id = $req->getParam('p');
        $getnews = $model->getAllNewsDet($id);
        $this->view->data = $getnews;
    }

}
