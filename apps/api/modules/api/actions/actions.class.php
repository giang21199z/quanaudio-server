<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class apiActions extends sfActions
{
    public function preExecute(){
        $this->getResponse()->setHttpHeader('Content-Type', 'application/json');
        $this->getResponse()->setHttpHeader('Access-Control-Allow-Headers', 'origin, content-type, accept');
        $this->getResponse()->setHttpHeader('Access-Control-Allow-Origin', '*');
        $this->getResponse()->setHttpHeader('Access-Control-Allow-Methods', 'POST, GET, PUT, DELETE, PATCH, OPTIONS');
        parent::preExecute();
    }

    /**
     * Api get slides
     */
    public function executeGetSlides(sfWebRequest $request){
        return $this->renderText(json_encode(SlideTable::getAllSlide()));
    }

    /**
     * Api get type
     */
    public function executeGetTypesMenu(sfWebRequest $request){
        return $this->renderText(json_encode(TypeTable::getMenuType()));
    }

    /**
     * Api get all audio
     */
    public function executeGetAudios(sfWebRequest $request){
        return $this->renderText(json_encode(AudioTable::getAudios()));
    }

    /**
     * Api get cart items
     */
    public function executeGetCartItems(sfWebRequest $request){
        $ids = explode(',', $request->getParameter('ids'));
        return $this->renderText(json_encode(AudioTable::getCartItems($ids)));
    }

    /**
     * Api get detail audio
     */
    public function executeGetAudio(sfWebRequest $request){
        $id = $request->getParameter('id');
        return $this->renderText(json_encode(AudioTable::getAudioById($id)));
    }

    /**
     * Api get audio by type
     */
    public function executeGetAudioByType(sfWebRequest $request){
        $idtype = $request->getParameter('idtype');
        return $this->renderText(json_encode(AudioTable::getAudioByType($idtype)));
    }
    /**
     * Api checkout
     */
    public function executePostCheckout(sfWebRequest $request){
        if($request->isMethod('POST')){
            $dataPost = json_decode($request->getContent());
            $user = new User();
            $user->setFullname($dataPost->user->fullname);
            $user->setPhone($dataPost->user->phone);
            $user->setEmail($dataPost->user->email);
            $user->setAddress($dataPost->user->address);
            $user->setMessage($dataPost->user->message);
            $user->save();
            $cartItems = array();
            foreach($dataPost->cartItem as $value){
                $cartItem = new CartItem();
                $cartItem->setAmount($value->amount);
                $cartItem->setPrice($value->price);
                $cartItem->setIdaudio($value->idaudio);
                $cartItem->save();
                
                $cart = new Cart();
                $cart->setIdcartItem($cartItem->getId());
                $cart->setIduser($user->getIduser());
                $cart->save();
            }
            return $this->renderText(json_encode(array('status' => sfConfig::get('app_success'), 'message' => sfConfig::get('app_order_success'))));
        } else {
            return $this->renderText(json_encode(array('status' => sfConfig::get('app_error'))));
        }
    }
}