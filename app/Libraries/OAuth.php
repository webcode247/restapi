<?php
namespace App\Libraries;

// bring pdo storage from the library
use \OAuth2\Storage\Pdo;

class OAuth {

    var $server;

    public function __construct() {
        $this->init();
    }

    public function init() {
        // db credentials
        $dsn = getenv('database.default.DSN');
        $username = getenv('database.default.username');
        $password = getenv('database.default.password');

        // instantiate pdo obj
        $storage = new Pdo(['dsn' => $dsn, 'username' => $username, 'password' => $password]);

        // instantiate library server
        $this->server = new \OAuth2\Server($storage);

        $this->server->addGrantType(new \OAuth2\GrantType\UserCredentials($storage));
        
    }
}