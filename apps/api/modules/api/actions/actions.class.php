<?php
/**
 * Created by PhpStorm.
 * User: Giang21199z
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
header('Access-Control-Allow-Origin: *');
class apiActions extends sfActions
{

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
        $type = $request->getParameter('type');
        if ($type == NULL) {
            return $this->renderText(json_encode(AudioTable::getAudios()));
        } else {
            return $this->renderText(json_encode(AudioTable::getAudioByType($type)));
        }
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

    /**
     * Api get latest news
     */
    public function executeGetLatestNews(sfWebRequest $request){
        $offset = $request->getParameter('pageNum');
        $limit = 1;
        $category = $request->getParameter('category');
        return $this->renderText(json_encode(NewsTable::getLatestNews($category,$limit, $offset)));
    }

    /**
     * Api get detail new
     */
    public function executeGetDetailNew(sfWebRequest $request){
        $id = $request->getParameter('id');
        return $this->renderText(json_encode(NewsTable::getDetailNew($id)));
    }

    /**
     * Api get random new
     */
    public function executeGetRandomNew(sfWebRequest $request){
        $id = $request->getParameter('id');
        return $this->renderText(json_encode(NewsTable::getNewRandom($id)));
    }

    /**
     * API ADMINISTRATOR
     */

    /**
     * Api login
     */
    public function executePostLogin(sfWebRequest $request){
        if($request->isMethod('POST')){
            $dataPost = json_decode($request->getContent());
            if(
                $dataPost->username && $dataPost->password &&
                $dataPost->username == 'quanaudio' && $dataPost->password == 'muoisau9'
            ){
                $header = [
                    "alg"     => "RS256",
                    "typ"     => "JWT"
                ];

                $payload = [
                    "username" => $dataPost->username,
                    "expired" => strtotime(date('Y/m/d')) + 3600
                ];
                $jwt = [
                    "token" => $this->generateJWT($header, $payload)
                ];
                return $this->renderText(json_encode($jwt));
            }
        }
        return $this->renderText(json_encode(["message" => "mày định hack à con!!!"]));
    }

    private function generateJWT( $header, $payload){
        $PRIVATE_KEY = "qu@n@udi0.Vn";

        $ALGO = "sha256";

        $headerEncoded = $this->base64UrlEncode(json_encode($header));

        $payloadEncoded = $this->base64UrlEncode(json_encode($payload));

        $dataEncoded = "$headerEncoded.$payloadEncoded";

        $rawSignature = hash_hmac($ALGO, $dataEncoded, $PRIVATE_KEY, true);

        $signatureEncoded = $this->base64UrlEncode($rawSignature);

        $jwt = "$dataEncoded.$signatureEncoded";

        return $jwt;
    }

    private function base64UrlEncode($data){
        $urlSafeData = strtr(base64_encode($data), '+/', '-_');

        return rtrim($urlSafeData, '=');
    }

    private function base64UrlDecode($data){
        $urlUnsafeData = strtr($data, '-_', '+/');

        $paddedData = str_pad($urlUnsafeData, strlen($data) % 4, '=', STR_PAD_RIGHT);

        return base64_decode($paddedData);
    }

    private function verifyJWT($jwt){
        $PRIVATE_KEY = "qu@n@udi0.Vn";

        $ALGO = "sha256";

        list($headerEncoded, $payloadEncoded, $signatureEncoded) = explode('.', $jwt);

        $dataEncoded = "$headerEncoded.$payloadEncoded";

        $signature = $this->base64UrlDecode($signatureEncoded);

        $rawSignature = hash_hmac($ALGO, $dataEncoded, $PRIVATE_KEY, true);

        return hash_equals($rawSignature, $signature);
    }

    public function executePostAddProduct(sfWebRequest $request){
        if($request->isMethod('POST')) {
            $dataPost = json_decode($request->getContent());
            $audio = new Audio();
            $audio->setName($dataPost->name);
            $audio->setBrand($dataPost->brand);
            $audio->setPrice($dataPost->price);
            $audio->setCondition($dataPost->condition);
            $audio->setDescription($dataPost->description);
            $audio->setImage($dataPost->image);
            $audio->setImage2($dataPost->image2);
            $audio->setImage3($dataPost->image3);
            $audio->setImage4($dataPost->image4);
            $audio->setIdtype($dataPost->idtype);
            $audio->save();
            return $this->renderText(json_encode(["message" => "POST SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "SUCCESS"]));
    }
}