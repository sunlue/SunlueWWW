<?php


namespace app\www_api\controller\basis\site;


use app\www_api\common\controller\eWwwApi;
use app\www_api\model\BasisSite;

class Site extends eWwwApi {
    private $model;

    protected function _init() {
        parent::_init();
        parent::_checkToken();
        $this->model = new BasisSite();
    }

    protected function submit($data) {
        try {
            $this->model->replace()->save($data);
            $this->ajaxReturn(200, $data);
        } catch (\exception $e) {
            $this->ajaxReturn(400, $e->getMessage());
        }
    }

    protected function read($where = array()) {
        $data = $this->model->getFind($where);
        $this->ajaxReturn(200, $data);
    }
}