<?php

class ArticleController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $model = new Application_Model_ArtikelModel();
        $data = $model->getAllArtikel();
        foreach ($data as $artikel) {
            $truncated = $this->truncateIfNecessary($artikel['isi'],150);
            $artikeldata[] =  array('id_artikel' => $artikel['id_artikel'],'judul'=>$artikel['judul'], 'isi'=>$truncated,'gambar'=>$artikel['gambar'],'waktu'=>$artikel['waktu'],'edit_time'=>$artikel['edit_time'] );
        }
        $this->view->data = $artikeldata;
    }

    public function detailAction()
    {
        $model = new Application_Model_ArtikelModel();
        $req = $this->getRequest();
        $id = $req->getParam('p');
        $getartikel = $model->getAllArtikelDet($id);
        $this->view->data = $getartikel;
    }

    function truncateIfNecessary($string, $length) {
       if(strlen($string) > $length) {
           $string = html_entity_decode(strip_tags($string));
           $string = substr($string, 0, $length).'...';
           $string = htmlentities($string);
           return $string;
       } else {
           return strip_tags($string);
       }
    }
}
