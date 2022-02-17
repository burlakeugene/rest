(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[0],{

/***/ "./src/js/cart.js":
/*!************************!*\
  !*** ./src/js/cart.js ***!
  \************************/
/*! exports provided: update, add */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "update", function() { return update; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "add", function() { return add; });
/* harmony import */ var _request__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./request */ "./src/js/request.js");

var update = function update() {
  _request__WEBPACK_IMPORTED_MODULE_0__["default"].get({
    url: '/dsds',
    data: {
      test1: 'test',
      test2: 'test'
    }
  }).then(function (resp) {
    var html = new DOMParser();
    html = html.parseFromString(resp.response, 'text/html');
    var cart = html.querySelector('.cart'),
        oldCart = document.querySelector('.cart');
    oldCart.parentNode.replaceChild(cart, oldCart);
  });
};
var add = function add(data) {
  _request__WEBPACK_IMPORTED_MODULE_0__["default"].post({
    url: '?wc-ajax=add_to_cart',
    data: data,
    headers: {
      'Content-Type': ''
    }
  }).then(function (resp) {
    update();
  });
};

/***/ }),

/***/ "./src/js/request-package.js":
/*!***********************************!*\
  !*** ./src/js/request-package.js ***!
  \***********************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

var Request =
/*#__PURE__*/
function () {
  function Request(props) {
    _classCallCheck(this, Request);

    this.config = {
      url: props.url || '',
      needAuthorization: props.hasOwnProperty('needAuthorization') ? props.needAuthorization : true,
      authorization: this.getAuthorization(),
      commonData: props.hasOwnProperty('commonData') ? props.commonData : {},
      middlewares: props.middlewares || [],
      headers: props.hasOwnProperty('headers') ? props.headers : {
        'Content-Type': 'application/json'
      },
      clearResponse: props.hasOwnProperty('clearResponse') ? props.clearResponse : true
    };
  }

  _createClass(Request, [{
    key: "request",
    value: function request(method, _request) {
      var _this = this;

      var _this$config = this.config,
          commonData = _this$config.commonData,
          headers = _this$config.headers,
          needAuthorization = _this$config.needAuthorization,
          url = _this$config.url,
          _this$config$middlewa = _this$config.middlewares,
          middlewares = _this$config$middlewa === void 0 ? [] : _this$config$middlewa,
          clearResponse = _this$config.clearResponse,
          self = this;
      return new Promise(function (resolve, reject) {
        _request.start && _request.start();
        var xhr = new XMLHttpRequest();

        var requestUrl = _this.buildUrl(url, _request.url);

        var async = _request.async ? _request.async : true;
        if (_request.responseType) xhr.responseType = _request.responseType;
        var requestData = _request.data || {};
        var responseHeaders;
        requestData = _objectSpread({}, commonData, {}, requestData);
        headers = _objectSpread({}, headers, {}, _request.headers || {});

        if (needAuthorization) {
          headers['authorization'] = self.getAuthorization();
        }

        console.log(headers);
        if (!headers['Content-Type']) delete headers['Content-Type'];
        console.log(headers);

        if (!headers['Content-Type']) {
          var formData = new FormData();
          Object.keys(requestData).forEach(function (key) {
            formData.append(key, requestData[key]);
          });
          requestData = formData;
        }

        if (method === 'GET') {
          requestUrl += '?';

          for (var data in requestData) {
            requestUrl += data + '=' + requestData[data] + '&';
          }
        }

        xhr.open(method, requestUrl, async);

        if (needAuthorization) {
          headers['authorization'] = self.getAuthorization();
        }

        for (var header in headers) {
          xhr.setRequestHeader(header, headers[header]);
        }

        xhr.send(requestData);

        xhr.onreadystatechange = function () {
          if (this.readyState === this.HEADERS_RECEIVED) {
            responseHeaders = xhr.getAllResponseHeaders().trim().split(/[\r\n]+/);
            var headersMap = {};
            responseHeaders.forEach(function (line) {
              var parts = line.split(': '),
                  header = parts.shift(),
                  value = parts.join(': ');
              headersMap[header] = value;
              if ((_request.hasOwnProperty('needAuthorization') ? _request.needAuthorization : needAuthorization) && header.toLowerCase() === 'authorization') self.setAuthorization(value);
            });
            responseHeaders = headersMap;
          }

          if (xhr.readyState !== 4) return;
          var response = clearResponse ? xhr.response : xhr;

          try {
            response = JSON.parse(response);
          } catch (e) {}

          _request.end && _request.end(); // if (request.responseType === 'blob') {
          //   response = {
          //     responseType: 'blob',
          //     objectURL: URL.createObjectURL(xhr.response),
          //   };
          // }

          if (middlewares.length) {
            for (var i = 0; i <= middlewares.length - 1; i++) {
              response = middlewares[i](response);
            }
          }

          if (xhr.status < 200 || xhr.status > 300) reject(response);else resolve(response);
        };
      });
    }
  }, {
    key: "buildUrl",
    value: function buildUrl() {
      var base = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : '';
      var relative = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : '';

      if (base[base.length - 1] === '/' && relative[0] === '/') {
        base = base.slice(0, base.length - 1);
      }

      return base + relative;
    }
  }, {
    key: "getAuthorization",
    value: function getAuthorization() {
      return localStorage.getItem('authorization') || '';
    }
  }, {
    key: "setAuthorization",
    value: function setAuthorization(key) {
      localStorage.setItem('authorization', key);
    }
  }, {
    key: "removeAuthorization",
    value: function removeAuthorization() {
      localStorage.removeItem('authorization');
    }
  }, {
    key: "logout",
    value: function logout() {
      this.removeAuthorization();
    }
  }, {
    key: "post",
    value: function post(query) {
      return this.request('POST', query);
    }
  }, {
    key: "get",
    value: function get(query) {
      return this.request('GET', query);
    }
  }, {
    key: "put",
    value: function put(query) {
      return this.request('PUT', query);
    }
  }, {
    key: "delete",
    value: function _delete(query) {
      return this.request('DELETE', query);
    }
  }, {
    key: "patch",
    value: function patch(query) {
      return this.request('PATCH', query);
    }
  }]);

  return Request;
}();

/* harmony default export */ __webpack_exports__["default"] = (Request);

/***/ }),

/***/ "./src/js/request.js":
/*!***************************!*\
  !*** ./src/js/request.js ***!
  \***************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _request_package__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./request-package */ "./src/js/request-package.js");
// import { Request } from 'burlak';

var body = document.body,
    url = body ? body.getAttribute('data-home') : '';
alert(url);
var request = new _request_package__WEBPACK_IMPORTED_MODULE_0__["default"]({
  url: url
});
/* harmony default export */ __webpack_exports__["default"] = (request);

/***/ })

}]);
//# sourceMappingURL=0.bundle.js.map