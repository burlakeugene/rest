import Request from './request';

export const update = (cart) => {
  if (!cart.fragments) return;
  for (let fragment in cart.fragments) {
    let html = cart.fragments[fragment],
      elements = document.querySelectorAll(fragment);
    elements.forEach((element) => {
      let parser = new DOMParser(),
        htmlDoc = parser.parseFromString(html, 'text/html'),
        htmlFragment = htmlDoc.querySelector(fragment);
      element.parentNode.replaceChild(htmlFragment, element);
    });
  }
};

export const add = (data) => {
  Notic.loadingOn();
  return Request.post({
    url: '?wc-ajax=add_to_cart',
    data,
    headers: {
      'Content-Type': '',
    },
  })
    .then((resp) => {
      Notic.addMessage({
        message: 'Товар "' + data.product_title + '" добавлен в корзину',
        type: 'success',
        delay: 5000,
      });
      update(resp);
      return resp;
    })
    .catch((error) => {
      return error;
    })
    .finally(() => {
      setTimeout(() => {
        Notic.loadingOff();
      }, 300);
    });
};

export const clear = () => {
  Notic.loadingOn();
  return Request.post({
    url: '?wc-ajax=clear_cart',
  })
    .then((resp) => {
      Notic.addMessage({
        message: 'Корзина очищена',
        type: 'success',
        delay: 5000,
      });
      update(resp);
      return resp;
    })
    .catch((error) => {
      return error;
    })
    .finally(() => {
      setTimeout(() => {
        Notic.loadingOff();
      }, 300);
    });
};

window.cartClear = clear;