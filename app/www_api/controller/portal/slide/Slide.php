<?php

namespace app\www_api\controller\portal\slide;

use app\www_api\common\controller\eWwwApi;
use app\www_api\model\PortalSlide;

class Slide extends eWwwApi {

    private $model;

    protected function _init() {
        parent::_init();
        parent::_checkToken();
        $this->model = new PortalSlide();
    }

    /**
     * 创建幻灯片
     * @param array $data
     */
    protected function createSlide($data = array()) {
        try {
            $this->model->save($data);
            $saveData = $this->model->getData();
            $this->ajaxReturn(200, $saveData);
        } catch (\exception $e) {
            $this->ajaxReturn(400, $e->getMessage());
        }
    }

    /**
     * 删除幻灯片
     * @param $uniqid
     */
    protected function deleteSlide($uniqid) {
        try {
            PortalSlide::destroy($uniqid);
            $this->ajaxReturn(200);
        } catch (\exception $e) {
            $this->ajaxReturn(400, $e->getMessage());
        }
    }

    /**
     * 修改幻灯片
     * @param $uniqid
     * @param $data
     */
    protected function updateSlide($uniqid, $data) {
        try {
            unset($data['uniqid']);
            $this->model->where('uniqid', $uniqid)->update($data);
            $this->ajaxReturn(200, $data);
        } catch (\exception $e) {
            $this->ajaxReturn(400, $e->getMessage());
        }
    }

    /**
     * 获取幻灯片
     * @param $where
     */
    protected function readSlide($where) {
        if (input('param.page')) {
            $data = PortalSlide::getList($where);
        } else {
            $data = PortalSlide::getAll($where);
        }
        $this->ajaxReturn(200, $data);
    }
}