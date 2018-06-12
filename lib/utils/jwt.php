<?php

class JWT
{

    public static function generateJWT( $header, $payload){
        $PRIVATE_KEY = "qu@n@udi0.Vn";

        $ALGO = "sha256";

        $headerEncoded = JWT::base64UrlEncode(json_encode($header));
 
        $payloadEncoded = JWT::base64UrlEncode(json_encode($payload));
    
        $dataEncoded = "$headerEncoded.$payloadEncoded";
    
        $rawSignature = hash_hmac($ALGO, $dataEncoded, $PRIVATE_KEY, true);
    
        $signatureEncoded = JWT::base64UrlEncode($rawSignature);
    
        $jwt = "$dataEncoded.$signatureEncoded";
    
        return $jwt;
    }

    public static function base64UrlEncode($data){
        $urlSafeData = strtr(base64_encode($data), '+/', '-_');
    
        return rtrim($urlSafeData, '='); 
    } 
 
    public static function base64UrlDecode($data){
        $urlUnsafeData = strtr($data, '-_', '+/');
    
        $paddedData = str_pad($urlUnsafeData, strlen($data) % 4, '=', STR_PAD_RIGHT);
    
        return base64_decode($paddedData);
    }

    function verifyJWT($jwt){
        $PRIVATE_KEY = "qu@n@udi0.Vn";

        $ALGO = "sha256";

        list($headerEncoded, $payloadEncoded, $signatureEncoded) = explode('.', $jwt);
    
        $dataEncoded = "$headerEncoded.$payloadEncoded";
    
        $signature = JWT::base64UrlDecode($signatureEncoded);
    
        $rawSignature = hash_hmac($ALGO, $dataEncoded, $PRIVATE_KEY, true);
        
        return hash_equals($rawSignature, $signature);
    }
}