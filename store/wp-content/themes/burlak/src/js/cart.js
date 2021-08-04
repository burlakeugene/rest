import Request from './request';

let body = document.body,
  homeUrl = body ? body.getAttribute('data-home') : '';

export const update = () => {
  Request.get({
    url: '',
  }).then((resp) => {
    let html = new DOMParser();
    html = html.parseFromString(resp.response, 'text/html');
    let cart = html.querySelector('.cart'),
      oldCart = document.querySelector('.cart');
    oldCart.parentNode.replaceChild(cart, oldCart);
  });
};

export const add = (query) => {
  let data = new FormData();
  Object.keys(query).forEach((key) => {
    data.append(key, query[key]);
  });
  let url = homeUrl + '?wc-ajax=add_to_cart';
  Request.post({
    url,
    data,
  }).then((resp) => {
    update();
  });
};
