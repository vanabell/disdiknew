<?php
class Application_Plugin_Userauth extends Zend_Controller_Plugin_Abstract
{
public function preDispatch(Zend_Controller_Request_Abstract $request)
    {
    	  
    	  $module = $request->getModuleName();
    	  $controller = $request->getControllerName();
    	  $action = $request->getActionName();
    	  
         // Zend_Debug::dump($controller);die();
    	  //echo $module.$controller.$action;
    	  $redirector = Zend_Controller_Action_HelperBroker::getStaticHelper('redirector');
    	  $session_user=new Zend_Session_Namespace('session_user');
    	  
    	  Zend_Registry::set('session_user',$session_user);
    	  
    	  if($module=='user'  && $controller!='a22ee85e6bbede780075466dbf9e00c3'){/* @var $redirector Zend_Controller_Action_Helper_Redirector */
    	  	if(!isset($session_user->user_id) || $session_user->user_id == ''){
    	  		return $redirector->gotoSimple('index', 'a22ee85e6bbede780075466dbf9e00c3', 'user', array());
    	  	}
    	  }
    }
}