import jQuery from './js/jquery/jquery';
import fancybox from './js/fancybox/fancybox.js';
import Swiper from './js/swiper/swiper.min.js';
import dateDropper from './js/datedropper/datedropper.js';
import timeDropper from './js/timedropper/timedropper.js';
import BurlakNavigation from './js/burlak-navigation.js';
import * as Burlak from 'burlak';
import mapInit from './js/map-yandex.js';
import Notic from 'notic';
import Search from './js/search';
import Cart from './js/cart';
import Request from './js/request';
(function ($) {
  if ($.fancybox) {
    $.fancybox.defaults.hash = false;
  }
  function runCount(item) {
    var bool = item.getAttribute('bool'),
      from = item.getAttribute('data-from'),
      to = item.getAttribute('data-to'),
      seconds = item.getAttribute('data-seconds'),
      milliseconds = parseInt(seconds) ? parseInt(seconds) * 1000 : 500;
    from = parseInt(from);
    to = parseInt(to);
    if (!bool) {
      item.setAttribute('bool', 1);
      $(item)
        .prop('Counter', from)
        .animate(
          {
            Counter: to,
          },
          {
            duration: milliseconds,
            easing: 'swing',
            step: function (now) {
              $(this).text(Math.ceil(now));
            },
          }
        );
    }
  }

  function clearCount(item) {
    var from = item.getAttribute('data-from');
    item.removeAttribute('bool');
    from = parseInt(from);
    $(item).text(from);
  }

  function eventDecorator({ target, event }) {
    if (target.dataset['event']) return;
    target.addEventListener(event.type, event.body);
    target.setAttribute('data-event', '1');
  }

  function setShippingField(data) {
    return Request.post({
      url: '?wc-ajax=shipping_set',
      data,
      headers: {
        'Content-Type': '',
      },
    });
  }

  var view = Burlak.InView;
  var isMobile = new Burlak.Detection().isMobile;
  $(document).ready(function () {
    window.Notic = new Notic();
    document.addEventListener('wpcf7mailsent', function (event) {
      $.fancybox.close();
      window.Notic.addMessage({
        message: event.detail.apiResponse.message,
        type: 'success',
        delay: 5000,
      });
    });

    window.callModal = function (name) {
      $.fancybox.open({
        src: '#callback',
        type: 'inline',
        opts: {
          baseClass: 'modal-wrapper',
          afterShow: function () {
            $('input.place').val(name ? name : '');
          },
          afterClose: function () {
            $('input.place').val('');
          },
        },
      });
    };

    var modalBool = localStorage.getItem('modalBool') || false;
    document.addEventListener('mouseout', function () {
      let e = event,
        t = e.relatedTarget || e.toElement;
      if ((!t || t.nodeName == 'HTML') && !modalBool) {
        modalBool = true;
        localStorage.setItem('modalBool', true);
        window.callModal('Убрали мышь');
      }
    });

    function commonFunc() {
      let callbackButtons = document.querySelectorAll('[data-callback]');
      callbackButtons.length &&
        callbackButtons.forEach((button) => {
          eventDecorator({
            target: button,
            event: {
              type: 'click',
              body: (e) => {
                e.preventDefault();
                callModal(button.dataset.callback);
              },
            },
          });
        });
      let search = new Search({
        onShow: () => {
          cart.hide();
        },
      });
      let cart = new Cart({
        onShow: () => {
          search.hide();
        },
        listeners: (cart) => {
          let products = document.querySelectorAll('.product__add');
          products.length &&
            products.forEach((button) => {
              eventDecorator({
                target: button,
                event: {
                  type: 'click',
                  body: (e) => {
                    button.disabled = true;
                    cart.add(button.dataset).finally(() => {
                      button.disabled = false;
                    });
                  },
                },
              });
            });
          let clearCart = document.querySelectorAll('.cart__clear');
          clearCart.length &&
            clearCart.forEach((button) => {
              eventDecorator({
                target: button,
                event: {
                  type: 'click',
                  body: (e) => {
                    cart.clear();
                  },
                },
              });
            });
          let continueCart = document.querySelectorAll('.cart__continue');
          continueCart.length &&
            continueCart.forEach((button) => {
              eventDecorator({
                target: button,
                event: {
                  type: 'click',
                  body: (e) => {
                    cart.hide();
                  },
                },
              });
            });
          let remove = document.querySelectorAll('.product__remove');
          remove.length &&
            remove.forEach((button) => {
              eventDecorator({
                target: button,
                event: {
                  type: 'click',
                  body: (e) => {
                    cart.remove(button.dataset);
                  },
                },
              });
            });
          let qty = document.querySelectorAll('.product__qty__action');
          qty.length &&
            qty.forEach((button) => {
              eventDecorator({
                target: button,
                event: {
                  type: 'click',
                  body: (e) => {
                    let buttons = button.parentNode.querySelectorAll(
                      '.product__qty__action'
                    );
                    buttons.forEach((button) => {
                      button.disabled = true;
                      button.classList.add('cursor--pointer');
                    });
                    cart.qty(button.dataset).finally(() => {
                      buttons.forEach((button) => {
                        button.disabled = false;
                        button.classList.remove('cursor--pointer');
                      });
                    });
                  },
                },
              });
            });
        },
      });
      window.search = search;
      window.cart = cart;

      //shipping
      let shippingSwitchers = document.querySelectorAll('[data-shipping-type]');
      shippingSwitchers.length &&
        shippingSwitchers.forEach((button) => {
          eventDecorator({
            target: button,
            event: {
              type: 'click',
              body: (e) => {
                let shipping = button.dataset.shippingType;
                let containers = document.querySelectorAll('.shipping');
                containers.length &
                  containers.forEach((container) => {
                    container.setAttribute('data-type', shipping);
                  });
                setShippingField({
                  key: 'type',
                  value: shipping,
                });
              },
            },
          });
        });
      let addressButtons = document.querySelectorAll(
        '.shipping__address__button'
      );
      addressButtons.length &&
        addressButtons.forEach((button) => {
          eventDecorator({
            target: button,
            event: {
              type: 'click',
              body: (e) => {
                button.classList.add('shipping__address__button--loading');
                button.disabled = true;
                let parent = button.closest('.shipping'),
                  input = parent.querySelector(
                    '.shipping__address__panel__input'
                  ),
                  select = parent.querySelector(
                    '.shipping__address__panel__select'
                  ),
                  target = parent.dataset.type === 'self' ? select : input,
                  key = parent.dataset.type === 'self' ? 'store' : 'address';
                setShippingField({
                  key,
                  value: target.value,
                }).then((resp) => {
                  button.disabled = false;
                  button.classList.remove('shipping__address__button--loading');
                });
              },
            },
          });
        });
      let timeRadios = document.querySelectorAll('[name="shipping_at_time"]');
      timeRadios.length &&
        timeRadios.forEach((radio) => {
          eventDecorator({
            target: radio,
            event: {
              type: 'change',
              body: (e) => {
                let checked = document.querySelector(
                    '[name="shipping_at_time"]:checked'
                  ),
                  containers = document.querySelectorAll('.shipping');
                containers.length &
                  containers.forEach((container) => {
                    container.setAttribute('data-at-time', checked.value);
                  });
                setShippingField({
                  key: 'at_time',
                  value: checked.value,
                });
              },
            },
          });
        });

      let themeColor = getComputedStyle(
        document.documentElement
      ).getPropertyValue('--theme');
      $('.shipping__time__control--calendar input').dateDropper({
        animate: false,
        lang: 'ru',
        dropWidth: 200,
        dropPrimaryColor: themeColor,
        dropBorder: '1px solid ' + themeColor,
      });
      $('.shipping__time__control--calendar input').on('change', (e) => {
        setShippingField({
          key: 'date',
          value: e.target.value,
        }).then((resp) => {
          $('.shipping__time__control--calendar input').val(e.target.value);
        });
      });

      $('.shipping__time__control--time input').timeDropper({
        format: 'HH:mm',
        primaryColor: themeColor,
        borderColor: themeColor,
        setCurrentTime: false,
      });

      $('.shipping__time__control--time input').on('change', (e) => {
        setShippingField({
          key: 'time',
          value: e.target.value,
        }).then((resp) => {
          $('.shipping__time__control--time input').val(e.target.value);
        });
      });

      let popularButtons = document.querySelectorAll('[data-set-popular]');
      popularButtons.length &&
        popularButtons.forEach((button) => {
          eventDecorator({
            target: button,
            event: {
              type: 'click',
              body: (e) => {
                let targets = button
                  .closest('.product__popular')
                  .querySelectorAll('[data-popular]');
                targets.forEach((current) => {
                  let next =
                    button.dataset.setPopular === current.dataset.popular;
                  if (next) {
                    current.setAttribute('data-active', 'true');
                  } else {
                    current.removeAttribute('data-active');
                  }
                });
              },
            },
          });
        });

      if (!isMobile()) {
        $('[data-fancybox="gallery"]').fancybox({
          thumbs: {
            autoStart: true,
          },
        });
      }
      let tabs = document.querySelectorAll('.tabs');
      tabs.length &&
        tabs.forEach((item, index) => {
          let buttons = item.querySelectorAll('.tabs__button');
          buttons.forEach((button, index) => {
            button.addEventListener('click', (e) => {
              let name = e.target.getAttribute('data-tab-id'),
                buttons = e.target
                  .closest('.tabs')
                  .querySelectorAll('.tabs__button'),
                targets = e.target
                  .closest('.tabs')
                  .querySelectorAll('.tabs__content');
              if (!name) return;
              buttons.forEach((button, index) => {
                button.classList.remove('tabs__button--active');
              });
              e.target.classList.add('tabs__button--active');
              targets.forEach((target, index) => {
                if (target.getAttribute('data-tab-id') === name) {
                  target.classList.add('tabs__content--active');
                } else {
                  target.classList.remove('tabs__content--active');
                }
              });
            });
          });
        });

      document.body.addEventListener('click', () => {
        document
          .querySelector('.header')
          .classList.remove('navigation-visible');
      });

      var slideBar = document.querySelector('.header-slidebar');
      slideBar &&
        slideBar.addEventListener('click', (e) => {
          e.stopPropagation();
        });

      var toggleButton = document.querySelector('.nav-toggle');
      if (toggleButton) {
        toggleButton.addEventListener('click', function (e) {
          e.preventDefault();
          e.stopPropagation();
          let header = document.querySelector('.header');
          header && header.classList.remove('search-visible');
          header && header.classList.toggle('navigation-visible');
        });
      }

      new view('.lazy', {
        in: (item) => {
          setTimeout(() => {
            let img = item.querySelector('img') || false,
              url = img ? img.getAttribute('data-lazy') : false,
              allImages = document.querySelectorAll(
                '[data-lazy="' + url + '"]'
              );
            if (!img || !url) return;
            var newImage = new Image();
            newImage.addEventListener('load', () => {
              allImages.forEach((img, index) => {
                img.src = url;
                img.removeAttribute('data-lazy');
                img.closest('.lazy') &&
                  img.closest('.lazy').classList.add('lazy-loaded');
              });
            });
            newImage.src = url;
          }, 0);
        },
      });

      new Swiper('.banners__slider', {
        speed: 600,
        slidesPerView: 1,
        spaceBetween: 10,
        navigation: {
          prevEl: '.banners__slider .swiper-button-prev',
          nextEl: '.banners__slider .swiper-button-next',
        },
        pagination: {
          el: '.banners__slider .swiper-pagination',
          clickable: true,
        },
        autoplay: {
          delay: 5000,
        },
      });

      mapInit();

      jQuery('.gallery').each(function () {
        jQuery(this)
          .find('.gallery-icon a')
          .attr('data-fancybox', 'group-' + jQuery(this).attr('id'));
      });

      let forms = document.querySelectorAll('.wpcf7-form');
      window.wpcf7 &&
        forms.length &&
        forms.forEach((form, index) => {
          if (!form.querySelector('.ajax-loader')) window.wpcf7.init(form);
        });

      let accordions = document.querySelectorAll('.accordion');
      for (let i = 0; i < accordions.length; i++) {
        var accordionToggle = accordions[i].querySelector('.accordion-toggle'),
          parent = accordionToggle.parentNode,
          target = parent.querySelector('.accordion-target');
        if (parent.classList.contains('opened')) {
          target.style.height = target.scrollHeight + 'px';
        }
        accordionToggle.addEventListener('click', function () {
          var parent = this.parentNode,
            target = parent.querySelector('.accordion-target');

          if (parent.classList.contains('opened')) {
            target.style.height = 0 + 'px';
          } else {
            target.style.height = target.scrollHeight + 'px';
          }

          accordions.forEach((item, index) => {
            if (item === parent) return;
            let target = item.querySelector('.accordion-target');
            item.classList.remove('opened');
            target.style.height = 0 + 'px';
          });

          parent.classList.toggle('opened');
        });
      }

      let scrollers = document.querySelectorAll('.scroller, .scroller a');
      scrollers.length &&
        scrollers.forEach((scroller) => {
          scroller.addEventListener('click', (e) => {
            let target = document.querySelector(scroller.getAttribute('href'));
            if (!target) return;
            e.preventDefault();
            let top = target.getBoundingClientRect().top + window.scrollY;
            window.scrollTo({ top, behavior: 'smooth' });
          });
        });
      let loadMore = document.querySelectorAll('.load-more');
      loadMore.length &&
        loadMore.forEach((container) => {
          let button = container.querySelector(
            '.load-more__pagination__button'
          );
          button &&
            eventDecorator({
              target: button,
              event: {
                type: 'click',
                body: (e) => {
                  e.preventDefault();
                  button.classList.add('button--loading');
                  button.disabled = true;
                  let navigation = button.closest('.load-more__pagination'),
                    list = button
                      .closest('.load-more')
                      .querySelector('.load-more__list'),
                    next = navigation.querySelector('.next'),
                    href = next.href;
                  Request.get({
                    url: href,
                    headers: {
                      'Content-Type': 'text/html; charset=utf-8',
                    },
                  }).then((html) => {
                    let parser = new DOMParser();
                    html = parser.parseFromString(html, 'text/html');
                    html = html.querySelector('.load-more');
                    let htmlNavigation = html.querySelector(
                        '.load-more__pagination'
                      ),
                      htmlList = html.querySelector('.load-more__list');
                    if (htmlList.children.length) {
                      for (let i = 0; i <= htmlList.children.length; i++) {
                        list.appendChild(htmlList.children[i]);
                      }
                      router.addLinksEvent();
                    }
                    if (htmlNavigation) {
                      navigation.parentNode.replaceChild(
                        htmlNavigation,
                        navigation
                      );
                    } else {
                      navigation.remove();
                    }
                    history.pushState(null, null, href);
                    commonFunc();
                  });
                },
              },
            });
        });

      let selects = document.querySelectorAll('.select');
      selects.length &&
        selects.forEach((select) => {
          let active = select.querySelector('.select__current');
          active &&
            eventDecorator({
              target: active,
              event: {
                type: 'click',
                body: (e) => {
                  e.stopPropagation();
                  active.closest('.select').classList.toggle('select--active');
                },
              },
            });
        });
      document.addEventListener('click', (e) => {
        selects.length &&
          selects.forEach((select) => {
            select.classList.remove('select--active');
          });
      });

      let fields = document.querySelectorAll('.field');
      fields.length && fields.forEach((field) => {
        let data = field.dataset,
          buttons = field.querySelectorAll('.field__button'),
          input = field.querySelector('.field__input');
        buttons.forEach((button) => {
          eventDecorator({
            target: button,
            event: {
              type: 'click',
              body: (e) => {
                e.stopPropagation();
                let nextValue = parseFloat(data.value) + parseFloat(button.dataset.direction) * parseFloat(data.step);
                if(data.max && nextValue > parseFloat(data.max)) nextValue = parseFloat(data.max);
                if(data.min && nextValue < parseFloat(data.min)) nextValue = parseFloat(data.min);
                data.value = nextValue;
                input.innerHTML = nextValue + data.postfix;
                if(field.closest('.product__cart')){
                  let button = field.closest('.product__cart').querySelector('.product__add');
                  button.dataset.quantity = nextValue;
                }
                buttons.forEach((button) => {
                  if(button.dataset.direction === '1' && data.max){
                    button.disabled = nextValue >= parseFloat(data.max);
                  }
                  if(button.dataset.direction === '-1' && data.min){
                    button.disabled = nextValue <= parseFloat(data.min);
                  }
                });
              },
            },
          });
        });
      });

      let shares = document.querySelectorAll('.ya-share');
      shares.length &&
        Ya &&
        Ya.share2 &&
        shares.forEach((share) => {
          Ya.share2(share.id, {
            content: { ...share.dataset },
          });
        });
    }

    window.router = new BurlakNavigation({
      container: '#app',
      navItems: '.ajax, .ajax a, .pagination a, .breadcrumbs a',
      preloader: true,
      beforeInit: function () {},
      beforeRendered: function () {
        $.fancybox.close();
      },
      afterRendered: function (appContainer) {
        window.scrollTo(0, 0);
        commonFunc();
        var hash = window.location.hash,
          item = null;
        if (hash) item = appContainer.querySelector(hash);
        if (item) {
          window.scroll({
            top:
              item.offsetTop - document.querySelector('.header').clientHeight,
            behavior: 'smooth',
          });
        }
        //safari height hack
        let images = document.querySelectorAll('img[srcset]');
        images.forEach((img, index) => {
          img.outerHTML = img.outerHTML;
        });
      },
      afterInit: function () {},
    });
    router.init();
  });

  window.addEventListener('load', function () {
    var preloader = document.querySelector('.preloader');
    if (preloader) {
      preloader.classList.remove('preloader__visible');
      setTimeout(function () {
        preloader.parentNode.removeChild(preloader);
      }, 400);
    }
  });

  window.addEventListener('scroll', function (e) {
    let top = document.documentElement.scrollTop || document.body.scrollTop,
      header = document.querySelector('.header');
    if (!header) return;
    if (top > 5) {
      header.classList.add('scrolled');
    } else {
      header.classList.remove('scrolled');
    }
  });
})(jQuery);
