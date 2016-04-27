<?php
class Application_Plugin_AccessAdmin extends Zend_Controller_Plugin_Abstract {
	
	private $_acl = null;
	private $_auth = null;
	
	public function __construct(Zend_acl $acl, Zend_auth $auth){
	
		$this->_acl = $acl;
		$this->_auth = $auth;
	
	}
	
	Public function preDispatch(Zend_Controller_Request_Abstract $request)
    {
    	 
		  $module = $request->getModuleName();
    	  $controller = $request->getControllerName();
    	  $action = $request->getActionName();
		  $session_editor=new Zend_Session_Namespace('session_admin');
		  $role = $session_editor->roles; 
			//Zend_Debug::dump($session_editor->roles);die();
		  //roless
		  if(($role)&&($module=='admin'))
		  {
		  	if(!$this->_acl->isAllowed($role, $controller, $action)){
			  		if($role=='merchant')
					{
						$request->setControllerName('managevoc')
							->setActionName('index');
					}else{
			  		$request->setControllerName('admin')
							->setActionName('index');
					}  
			}
		  }
		 
    	  
    }
}