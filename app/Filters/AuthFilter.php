<?php namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;

use \App\Libraries\OAuth;
use \OAuth2\Request;
use \OAuth2\Response;

class AuthFilter implements FilterInterface {

    public function before(RequestInterface $request) {

        $oauth = new OAuth();
        $response = new Response();
        $request = Request::createFromGlobals();


        if(! $oauth->server->verifyResourceRequest($request)) {
            $oauth->server->getResponse()->send();
            //this app must be killed
            die();
        }
    }
    

    public function after(RequestInterface $request, ResponseInterface $response) {

    }
}