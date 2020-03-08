<?php

use \think\facade\Route;

Route::any('/', 'index/index');
Route::any('access', 'plugin.access.index/index');

Route::group('admin',function () {

    Route::get('access_token', 'oauth.auth/index');
    Route::get('refresh_token', 'oauth.auth/refresh');

    Route::group('assets', function () {
        Route::group('upload', function () {
            Route::post('image', 'assets.upload.image/index');
            Route::post('audio', 'assets.upload.audio/index');
            Route::post('video', 'assets.upload.video/index');
            Route::post('file', 'assets.upload.file/index');
        });
        Route::delete('delete', 'assets.delete/index');
    });

    Route::group('user', function () {
        Route::post('create', 'user.reg/index');
        Route::post('login', 'user.login/index')->middleware(\app\www_api\middleware\Auth::class);
        Route::post('exit', 'user.login/logout');
        Route::get('info', 'user.info/index');
        Route::put('updatePwd', 'user.update/password');
    });

    Route::group('system', function () {
        Route::any('init', 'system.index/init');
        Route::get('info', 'system.index/info');
        Route::group('role', function () {
            Route::post('create', 'system.role.create/index');
            Route::delete('delete', 'system.role.delete/index');
            Route::put('update', 'system.role.update/index');
            Route::put('rights', 'system.role.update/rights');
            Route::put('user_auth', 'system.role.auth/index');
            Route::get('read', 'system.role.read/index');
        });
        Route::group('user', function () {
            Route::post('create', 'system.user.create/index');
            Route::delete('delete', 'system.user.delete/index');
            Route::put('update', 'system.user.update/index');
            Route::get('read', 'system.user.read/index');
            Route::put('reset', 'system.user.reset/index');
            Route::put('auth', 'system.user.auth/index');
            Route::delete('delete_auth', 'system.user.auth/deletes');
        });
        Route::group('log', function () {
            Route::get('login', 'system.log.login/index');
        });
    });

    Route::group('portal', function () {
        Route::group('article', function () {
            Route::group('type', function () {
                Route::post('create', 'portal.article.type.create/index');
                Route::delete('delete', 'portal.article.type.delete/index');
                Route::put('update', 'portal.article.type.update/index');
                Route::get('read', 'portal.article.type.read/index');
            });
            Route::group('data', function () {
                Route::post('create', 'portal.article.data.create/index');
                Route::delete('delete', 'portal.article.data.delete/index');
                Route::put('update', 'portal.article.data.update/index');
                Route::put('like', 'portal.article.data.update/like');
                Route::put('hits', 'portal.article.data.update/hits');
                Route::get('read', 'portal.article.data.read/index');
                Route::get('details', 'portal.article.data.read/details');
            });
            Route::group('page', function () {
                Route::post('create', 'portal.article.page.create/index');
                Route::delete('delete', 'portal.article.page.delete/index');
                Route::put('update', 'portal.article.page.update/index');
                Route::get('read', 'portal.article.page.read/index');
            });
            Route::group('attach', function () {
                Route::group('file', function () {
                    Route::delete('delete', 'portal.article.attach.file/delete');
                });
                Route::group('image', function () {
                    Route::delete('delete', 'portal.article.attach.image/delete');
                });
            });
        });
        Route::group('nav', function () {
            Route::post('create', 'portal.nav.create/index');
            Route::delete('delete', 'portal.nav.delete/index');
            Route::put('update', 'portal.nav.update/index');
            Route::get('read', 'portal.nav.read/index');
        });
        Route::group('slide', function () {
            Route::post('create', 'portal.slide.create/index');
            Route::delete('delete', 'portal.slide.delete/index');
            Route::put('update', 'portal.slide.update/index');
            Route::get('read', 'portal.slide.read/index');
        });
        Route::group('notice', function () {
            Route::post('create', 'portal.notice.create/index');
            Route::delete('delete', 'portal.notice.delete/index');
            Route::put('update', 'portal.notice.update/index');
            Route::put('release', 'portal.notice.update/releases');
            Route::get('read', 'portal.notice.read/index');
        });
        Route::group('message', function () {
            Route::post('create', 'portal.message.create/index');
            Route::delete('delete', 'portal.message.delete/index');
            Route::put('reply', 'portal.message.reply/index');
            Route::get('read', 'portal.message.read/index');
        });
    });

    Route::group('basis', function () {
        Route::group('link', function () {
            Route::get('read', 'basis.link.read/index');
            Route::post('create', 'basis.link.create/index');
            Route::delete('delete', 'basis.link.delete/index');
            Route::put('update', 'basis.link.update/index');
        });
        Route::group('site', function () {
            Route::get('read', 'basis.site.read/index');
            Route::post('submit', 'basis.site.submit/index');
        });
        Route::group('theme', function () {
            Route::get('template', 'basis.theme.template/index');
        });
    });


    Route::group('plugin', function () {
        Route::get('read', 'plugin.index/read');
        Route::post('install', 'plugin.index/install');
        Route::post('uninstall', 'plugin.index/uninstall');
        Route::post('state', 'plugin.index/state');
        Route::post('submit', 'plugin.index/submit');
        Route::group('capacity', function () {
            Route::post('submit', 'plugin.capacity.submit/index');
            Route::get('read', 'plugin.capacity.read/index');
        });
    });

    Route::group('analyze', function () {
        Route::group('access', function () {
            Route::any('referer', 'plugin.access.referer/get');
            Route::any('traffic', 'plugin.access.traffic/get');
        });
    });

    Route::group('region', function () {
        Route::any('read', 'common.region.read/index');
        Route::any('child/:id', 'common.region.read/child');
    });

    Route::group('nation', function () {
        Route::any('read', 'common.nation.read/index');
    });
})->allowCrossDomain([
    'Access-Control-Allow-Origin' => '*',
    'Access-Control-Allow-Headers' => 'access_token,content-type'
]);

Route::miss(function () {
    return '404 Not Found!';
});