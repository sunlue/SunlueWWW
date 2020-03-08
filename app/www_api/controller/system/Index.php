<?php

namespace app\www_api\controller\system;

use app\www_api\common\controller\eWwwApi;
use app\www_api\model\BasisSite;

class Index extends eWwwApi {

    public function initialize() {
        parent::_init();
        parent::_checkToken();
    }

    public function init() {
        $basisModel = new BasisSite();
        $upload = $basisModel->getFind(array(
            'type' => 'upload'
        ));
        $this->ajaxReturn(200, array(
            'upload' => $upload['content'],
            'server' => get_server_info(false),
            'customer'=>array(
                'developers'=>'四川上略互动网络技术有限公司技术中心'
            )
        ));
    }

    public function info() {
        $this->ajaxReturn(200, get_server_info());
    }
}