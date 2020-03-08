<?php


namespace app\www_api\controller\portal\slide;

use app\www_api\validate\PortalSlide;
use think\exception\ValidateException;

class Delete extends Slide {
    public function initialize() {
        parent::_init();
    }

    /**
     * 提交数据验证
     * @param array $data
     * @return array|string|true
     */
    protected function dataValidate($data = array()) {
        try {
            validate(PortalSlide::class)->scene('delete')->check($data);
        } catch (ValidateException $e) {
            $this->ajaxReturn(400, $e->getError());
        }
    }

    public function index() {
        $this->dataValidate(input('delete.'));
        $uniqid = input('delete.uniqid');
        parent::deleteSlide($uniqid);
    }
}