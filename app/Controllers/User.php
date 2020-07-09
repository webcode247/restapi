<?php

namespace App\Controllers;

use \App\Libraries\OAuth;

// bring request module from installed oauth2
use \OAuth2\Request;

use CodeIgniter\API\ResponseTrait;


class User extends BaseController {

    use ResponseTrait;

    public function login() {
        // instantiate created library
        $oauth = new OAuth();

        // instantiate obj of request module
        $request = new Request(); 
        
        // server respond
        $respond = $oauth->server->HandleTokenRequest($request->createFromGlobals());
        // response code
        $responseStatus = $respond->getStatusCode();
        $responseBody = $respond->getResponseBody();

        return $this->respond( \json_decode($responseBody), $responseStatus);
    }
}