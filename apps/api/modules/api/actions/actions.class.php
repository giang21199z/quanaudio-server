<?php
/**
 * Created by PhpStorm.
 * User: Giang21199z
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
class apiActions extends sfActions
{

    /**
     * Api get slides
     */
    public function executeGetSlides(sfWebRequest $request){
        return $this->renderText(json_encode(SlideTable::getAllSlide()));
    }

    public function executeGetSlideDetail(sfWebRequest $request){
        $id = $request->getParameter('id');
        return $this->renderText(json_encode(SlideTable::getSlideById($id)));
    }

    public function executeUpdateSlide(sfWebRequest $request){
        if($request->isMethod('PUT')){
            $id = $request->getParameter('id');
            $dataPut = json_decode($request->getContent());
            $slide = new Slide();
            $slide->setTitle($dataPut->title);
            $slide->setDescription($dataPut->description);
            $slide->setContent($dataPut->content);
            $slide->setImage($dataPut->image);
            $slide->setAdvertisement($dataPut->advertisement);
            SlideTable::updateSlide($id, $slide);

            return $this->renderText(json_encode(["message" => "Update SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "FALSE"]));
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
        $limit = $request->getParameter('limit');
        $offset = $request->getParameter('offset');
        $keyword = $request->getParameter('keyword');
        if ($type == NULL) {
            return $this->renderText(json_encode(AudioTable::getAudios($keyword,$limit, $offset)));
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
        $limit = 10;
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
     * Api get random new
     */
    public function executeGetRandomAudio(sfWebRequest $request){
        $id = $request->getParameter('id');
        return $this->renderText(json_encode(AudioTable::getAudioRandom($id)));
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
            $audio->setDescription($dataPost->description);
            $audio->setSale($dataPost->sale);
            $audio->setImage($dataPost->image);
            $audio->setImage2($dataPost->image2);
            $audio->setImage3($dataPost->image3);
            $audio->setImage4($dataPost->image4);
            $audio->setIdtype($dataPost->idtype);
            $audio->save();
            return $this->renderText(json_encode(["message" => "POST SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "FALSE"]));
    }

    public function executeDeleteProduct(sfWebRequest $request){
        if($request->isMethod('DELETE')){
            $id = $request->getParameter('id');
            AudioTable::deleteAudioById($id);
            return $this->renderText(json_encode(["message" => "DELETE SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "FALSE"]));
    }

    public function executeUpdateImageSrc(sfWebRequest $request){
        if($request->isMethod('PUT')){
            $id = $request->getParameter('id');
            $dataPut = json_decode($request->getContent());
            AudioTable::updateImageAudio($id, $dataPut->image);
            return $this->renderText(json_encode(["message" => "Update SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "FALSE"]));
    }

    public function executeUpdateAudio(sfWebRequest $request){
        if($request->isMethod('PUT')){
            $id = $request->getParameter('id');
            $dataPut = json_decode($request->getContent());
//            var_dump($dataPut);
//            die($id);
            $audio = new Audio();
            $audio->setName($dataPut->name);
            $audio->setPrice($dataPut->price);
            $audio->setBrand($dataPut->brand);
            $audio->setDescription($dataPut->description);
            $audio->setSale($dataPut->sale);
            AudioTable::updateAudio($id, $audio);

            return $this->renderText(json_encode(["message" => "Update SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "FALSE"]));
    }

    public function executePostNews(sfWebRequest $request){
        if($request->isMethod('POST')) {
            $dataPost = json_decode($request->getContent());
            $news = new News();
            $news->setTitle($dataPost->title);
            $news->setDescription($dataPost->description);
            $news->setImage($dataPost->image);
            $news->setContent($dataPost->content);
            $news->setIdcategory($dataPost->category);
            $news->save();
            return $this->renderText(json_encode(["message" => "POST SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "FALSE"]));
    }

    public function executeDeleteNews(sfWebRequest $request){
        if($request->isMethod('DELETE')){
            $id = $request->getParameter('id');
            NewsTable::deleteNewsById($id);
            return $this->renderText(json_encode(["message" => "DELETE SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "FALSE"]));
    }

    public function executeUpdateNews(sfWebRequest $request){
        if($request->isMethod('PUT')){
            $id = $request->getParameter('id');
            $dataPut = json_decode($request->getContent());
            $news = new News();
            $news->setTitle($dataPut->title);
            $news->setDescription($dataPut->description);
            $news->setImage($dataPut->image);
            $news->setContent($dataPut->content);
            NewsTable::updateNews($id, $news);
            return $this->renderText(json_encode(["message" => "Update SUCCESS"]));
        }
        return $this->renderText(json_encode(["message" => "FALSE"]));
    }
}