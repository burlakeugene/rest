import Request from './request';
export const update = () => {
  Request.get({
    url: '',
  }).then((resp) => {
    let html = new DOMParser();
    html = html.parseFromString(resp, 'text/html');
    let cart = html.querySelector('.cart'),
      oldCart = document.querySelector('.cart');
    oldCart.parentNode.replaceChild(cart, oldCart);
  });
};

export const add = (data) => {
  Notic.loadingOn();
  Request.post({
    url: '?wc-ajax=add_to_cart',
    data,
    headers: {
      'Content-Type': '',
    },
  })
    .then((resp) => {
      Notic.addMessage({
        message: 'Товар "' + data.product_title + '" добавленв корзину',
        type: 'success',
        delay: 5000,
      });
      update();
    })
    .catch(() => {})
    .finally(() => {
      setTimeout(() => {
        Notic.loadingOff();
      }, 300);
    });
};
