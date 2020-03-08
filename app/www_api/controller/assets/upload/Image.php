<?php

namespace app\www_api\controller\assets\upload;


use app\www_api\controller\assets\Upload;

class Image extends Upload {
    public function index() {
        $this->verify('image');
    }
}
