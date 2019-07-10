function getRootPath() {
    var pathName = window.location.pathname.substring(1);
    var webName = pathName == '' ? '' : pathName.substring(0, pathName.indexOf('/'));
    if (webName == "") {
        return window.location.protocol + '//' + window.location.host;
    } else {
        return window.location.protocol + '//' + window.location.host + '/' + webName;
    }
}

var i18n = $.i18n;
var rootdir = window.location.protocol + '//' + window.location.host;
var lang = Cookies.get('lang');

i18n.properties({
    path: rootdir + '/i18n/',//这里表示访问路径
    name: 'messages',//文件名开头
    language: lang,//文件名语言 例如en_US
    mode: 'both'//默认值
});

//初始化i18n函数
function geti18n(msgKey) {
    try {
        return i18n.prop(msgKey);
    } catch (e) {
        let arr = msgKey.split(".");
        return arr.length > 1 ? arr[1] : msgKey;
    }
}

//获取国际化翻译值
console.log(geti18n('user.title'));
console.log(geti18n('user.login'));
console.log(geti18n('user.account'));