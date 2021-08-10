import Request from './request';

class Cart {
  constructor(props = {}) {
    this.props = props;
    this.button = document.querySelector('.cart__button');
    this.popup = document.querySelector('.cart__popup');
    this.init();
  }
  hide() {
    this.props.onHide && this.props.onHide();
    this.popup.classList.remove('cart__popup--active');
    this.button.classList.remove('cart__button--active');
  }
  show() {
    this.props.onShow && this.props.onShow();
    this.popup.classList.add('cart__popup--active');
    this.button.classList.add('cart__button--active');
  }
  listeners() {
    this.props.listeners && this.props.listeners(this)
  }
  init() {
    [this.button, this.popup].forEach((item) => {
      item.addEventListener('click', (e) => {
        e.stopPropagation();
      });
    });
    this.button.addEventListener('click', (e) => {
      let nextState = !this.button.classList.contains('cart__button--active');
      nextState ? this.show() : this.hide();
    });
    document.addEventListener('click', (event) => {
      this.hide();
    });
    this.listeners();
  }
  update(cart) {
    if (cart.fragments) {
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
    }
    this.listeners();
  }
  remove(data) {
    Notic.loadingOn();
    return Request.post({
      url: '?wc-ajax=cart_remove',
      data,
      headers: {
        'Content-Type': '',
      },
    })
      .then((resp) => {
        Notic.addMessage({
          message: '',
          type: 'success',
          delay: 5000,
        });
        this.update(resp);
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
  }
  add(data) {
    Notic.loadingOn();
    return Request.post({
      url: '?wc-ajax=add_to_cart',
      data,
      headers: {
        'Content-Type': '',
      },
    })
      .then((resp) => {
        if (resp.error) {
          Notic.addMessage({
            message: 'Ошибка добавления товара',
            type: 'error',
            delay: 5000,
          });
        } else {
          Notic.addMessage({
            message: 'Товар добавлен в корзину',
            type: 'success',
            delay: 5000,
          });
          this.update(resp);
        }
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
  }
  qty(data) {
    Notic.loadingOn();
    return Request.post({
      url: '?wc-ajax=cart_qty',
      data,
      headers: {
        'Content-Type': '',
      },
    })
      .then((resp) => {
        this.update(resp);
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
  }
  clear() {
    Notic.loadingOn();
    return Request.post({
      url: '?wc-ajax=cart_clear',
    })
      .then((resp) => {
        Notic.addMessage({
          message: '',
          type: 'success',
          delay: 5000,
        });
        this.update(resp);
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
  }
}

export default Cart;
