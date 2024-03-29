(jQuery.easing._dd_easing = function (a, b, c, d, e) {
  return -d * ((b = b / e - 1) * b * b * b - 1) + c;
}),
  (function (a) {
    a.fn.dateDropper = function (b) {
      return a(this).each(function () {
        if (a(this).is('input') && 'text' == a(this).attr('type')) {
          let value = a(this).val();
          var f,
            g,
            h,
            i,
            c = value ? new Date(value).getFullYear() : new Date().getFullYear(),
            d = value ? new Date(value).getDate() : new Date().getDate(),
            e = value ? new Date(value).getMonth() : new Date().getMonth(),
            j = a('.dd-w').length,
            k =
              '<div class="dd-w dd-init" id="dd-w-' +
              j +
              '"><div class="dd-o"></div><div class="dd-c"><div class="dd-w-c"><div class="dd-b dd-m"><div class="dd-ul"><a class="dd-n dd-n-left"><i class="dd-icon-left" ></i></a><a class="dd-n dd-n-right"><i class="dd-icon-right" ></i></a><ul></ul></div></div><div class="dd-b dd-d"><div class="dd-ul"><a class="dd-n dd-n-left"><i class="dd-icon-left" ></i></a><a class="dd-n dd-n-right"><i class="dd-icon-right" ></i></a><ul></ul></div></div><div class="dd-b dd-y"><div class="dd-ul"><a class="dd-n dd-n-left"><i class="dd-icon-left" ></i></a><a class="dd-n dd-n-right"><i class="dd-icon-right" ></i></a><ul></ul></div></div><div class="dd-s-b dd-s-b-m dd-trans"><div class="dd-s-b-ul"><ul></ul></div></div><div class="dd-s-b dd-s-b-d dd-trans"><div class="dd-s-b-ul"><ul></ul></div></div><div class="dd-s-b dd-s-b-y dd-trans"><div class="dd-s-b-ul"><ul></ul></div></div><div class="dd-s-b dd-s-b-s-y dd-trans"><div class="dd-s-b-ul"><ul></ul></div></div><div class="dd-s-b-s"><i class="dd-icon-close" ></i></div><div class="dd-b dd-sub-y"><div class="dd-ul"><a class="dd-n dd-n-left"><i class="dd-icon-left" ></i></a><a class="dd-n dd-n-right"><i class="dd-icon-right" ></i></a><ul></ul></div></div><div class="dd-s"><a><i class="dd-icon-check" ></i></a></div></div></div></div>';
          a('body').append(k);
          var l = a(this),
            m = a('#dd-w-' + j),
            n = function (a) {
              return !(a % 4 || (!(a % 100) && a % 400));
            },
            o = function (a) {
              return a < 10 ? '0' + a : a;
            },
            p = a.extend(
              {
                animate: !0,
                init_animation: 'fadein',
                format: 'm/d/Y',
                lang: 'en',
                lock: !1,
                maxYear: new Date().getFullYear() + 10,
                minYear: new Date().getFullYear(),
                yearsRange: 1,
                dropPrimaryColor: '#967ADC',
                dropTextColor: '#1D2B36',
                dropBackgroundColor: '#FFFFFF',
                dropBorder: '1px solid #967ADC',
                dropBorderRadius: 8,
                dropShadow: '0 0 10px 0 rgba(0, 136, 204, 0.45)',
                dropWidth: 124,
                dropTextWeight: 'bold',
              },
              b
            ),
            q = null,
            r = !1,
            t = function (color, amount) {
              return (
                '#' +
                color
                  .replaceAll(' ', '')
                  .replace(/^#/, '')
                  .replace(/../g, (color) => {
                    return (
                      '0' +
                      Math.min(
                        255,
                        Math.max(0, parseInt(color, 16) + amount)
                      ).toString(16)
                    ).substr(-2);
                  })
              );
            };
          switch (
            (a(
              '<style>#dd-w-' +
                j +
                ' { font-weight: ' +
                p.dropTextWeight +
                '; } #dd-w-' +
                j +
                ' .dd-w-c,#dd-w-' +
                j +
                ' .dd-ul li,#dd-w-' +
                j +
                ' .dd-s-b-ul ul { width:' +
                p.dropWidth +
                'px; } #dd-w-' +
                j +
                ' .dd-w-c{color:' +
                p.dropTextColor +
                ';background:' +
                p.dropBackgroundColor +
                ';border:' +
                p.dropBorder +
                ';box-shadow:' +
                p.dropShadow +
                ';border-radius:' +
                p.dropBorderRadius +
                'px}#dd-w-' +
                j +
                ' .dd-w-c,#dd-w-' +
                j +
                ' .dd-s-b{background:' +
                p.dropBackgroundColor +
                '}#dd-w-' +
                j +
                ' .dd-sun,#dd-w-' +
                j +
                ' .dd-s-b-ul li.dd-on{color:' +
                p.dropPrimaryColor +
                '}#dd-w-' +
                j +
                ' .dd-c .dd-s,#dd-w-' +
                j +
                ' .dd-s-b-s,#dd-w-' +
                j +
                ' .dd-s-b-sub-y,#dd-w-' +
                j +
                ' .dd-sub-y{background:' +
                p.dropPrimaryColor +
                ';color:' +
                p.dropBackgroundColor +
                '}#dd-w-' +
                j +
                ' .dd-c .dd-s a,#dd-w-' +
                j +
                ' .dd-c .dd-s a:hover{color:' +
                p.dropBackgroundColor +
                '}#dd-w-' +
                j +
                ' .dd-c:after{border-left:' +
                p.dropBorder +
                ';border-top:' +
                p.dropBorder +
                '}#dd-w-' +
                j +
                '.dd-bottom .dd-c:after{background:' +
                p.dropBackgroundColor +
                '}#dd-w-' +
                j +
                '.dd-top .dd-c:after{background:' +
                p.dropPrimaryColor +
                '}#dd-w-' +
                j +
                ' .dd-n,#dd-w-' +
                j +
                ' .dd-sun{color:' +
                p.dropPrimaryColor +
                '}#dd-w-' +
                j +
                ' .dd-sub-y .dd-n{color:' +
                p.dropBackgroundColor +
                '} #dd-w-' +
                j +
                ' .dd-c .dd-s:hover,#dd-w-' +
                j +
                ' .dd-s-b-s:hover { background:' +
                t(p.dropPrimaryColor, -50) +
                '; }</style>'
            ).appendTo('head'),
            p.lang)
          ) {
            case 'ar':
              var v = [
                  'جانفي',
                  'فيفري',
                  'مارس',
                  'أفريل',
                  'ماي',
                  'جوان',
                  'جويلية',
                  'أوت',
                  'سبتمبر',
                  'أكتوبر',
                  'نوفمبر',
                  'ديسمبر',
                ],
                w = [
                  'الأحد',
                  'الإثنين',
                  'الثلثاء',
                  'الأربعاء',
                  'الخميس',
                  'الجمعة',
                  'السبت',
                ];
              break;
            case 'it':
              var v = [
                  'Gennaio',
                  'Febbraio',
                  'Marzo',
                  'Aprile',
                  'Maggio',
                  'Giugno',
                  'Luglio',
                  'Agosto',
                  'Settembre',
                  'Ottobre',
                  'Novembre',
                  'Dicembre',
                ],
                w = [
                  'Domenica',
                  'Lunedì',
                  'Martedì',
                  'Mercoledì',
                  'Giovedì',
                  'Venerdì',
                  'Sabato',
                ];
              break;
            case 'hu':
              var v = [
                  'január',
                  'február',
                  'március',
                  'április',
                  'május',
                  'június',
                  'július',
                  'augusztus',
                  'szeptember',
                  'október',
                  'november',
                  'december',
                ],
                w = [
                  'vasárnap',
                  'hétfő',
                  'kedd',
                  'szerda',
                  'csütörtök',
                  'péntek',
                  'szombat',
                ];
              break;
            case 'gr':
              var v = [
                  'Ιανουάριος',
                  'Φεβρουάριος',
                  'Μάρτιος',
                  'Απρίλιος',
                  'Μάιος',
                  'Ιούνιος',
                  'Ιούλιος',
                  'Αύγουστος',
                  'Σεπτέμβριος',
                  'Οκτώβριος',
                  'Νοέμβριος',
                  'Δεκέμβριος',
                ],
                w = [
                  'Κυριακή',
                  'Δευτέρα',
                  'Τρίτη',
                  'Τετάρτη',
                  'Πέμπτη',
                  'Παρασκευή',
                  'Σάββατο',
                ];
              break;
            case 'es':
              var v = [
                  'Enero',
                  'Febrero',
                  'Marzo',
                  'Abril',
                  'Mayo',
                  'Junio',
                  'Julio',
                  'Agosto',
                  'Septiembre',
                  'Octubre',
                  'Noviembre',
                  'Diciembre',
                ],
                w = [
                  'Domingo',
                  'Lunes',
                  'Martes',
                  'Miércoles',
                  'Jueves',
                  'Viernes',
                  'Sábado',
                ];
              break;
            case 'da':
              var v = [
                  'januar',
                  'februar',
                  'marts',
                  'april',
                  'maj',
                  'juni',
                  'juli',
                  'august',
                  'september',
                  'oktober',
                  'november',
                  'december',
                ],
                w = [
                  'søndag',
                  'mandag',
                  'tirsdag',
                  'onsdag',
                  'torsdag',
                  'fredag',
                  'lørdag',
                ];
              break;
            case 'de':
              var v = [
                  'Januar',
                  'Februar',
                  'März',
                  'April',
                  'Mai',
                  'Juni',
                  'Juli',
                  'August',
                  'September',
                  'Oktober',
                  'November',
                  'Dezember',
                ],
                w = [
                  'Sonntag',
                  'Montag',
                  'Dienstag',
                  'Mittwoch',
                  'Donnerstag',
                  'Freitag',
                  'Samstag',
                ];
              break;
            case 'nl':
              var v = [
                  'januari',
                  'februari',
                  'maart',
                  'april',
                  'mei',
                  'juni',
                  'juli',
                  'augustus',
                  'september',
                  'oktober',
                  'november',
                  'december',
                ],
                w = [
                  'zondag',
                  'maandag',
                  'dinsdag',
                  'woensdag',
                  'donderdag',
                  'vrijdag',
                  'zaterdag',
                ];
              break;
            case 'fr':
              var v = [
                  'Janvier',
                  'Février',
                  'Mars',
                  'Avril',
                  'Mai',
                  'Juin',
                  'Juillet',
                  'Août',
                  'Septembre',
                  'Octobre',
                  'Novembre',
                  'Décembre',
                ],
                w = [
                  'Dimanche',
                  'Lundi',
                  'Mardi',
                  'Mercredi',
                  'Jeudi',
                  'Vendredi',
                  'Samedi',
                ];
              break;
            case 'pl':
              var v = [
                  'styczeń',
                  'luty',
                  'marzec',
                  'kwiecień',
                  'maj',
                  'czerwiec',
                  'lipiec',
                  'sierpień',
                  'wrzesień',
                  'październik',
                  'listopad',
                  'grudzień',
                ],
                w = [
                  'niedziela',
                  'poniedziałek',
                  'wtorek',
                  'środa',
                  'czwartek',
                  'piątek',
                  'sobota',
                ];
              break;
            case 'pt':
              var v = [
                  'Janeiro',
                  'Fevereiro',
                  'Março',
                  'Abril',
                  'Maio',
                  'Junho',
                  'Julho',
                  'Agosto',
                  'Setembro',
                  'Outubro',
                  'Novembro',
                  'Dezembro',
                ],
                w = [
                  'Domingo',
                  'Segunda',
                  'Terça',
                  'Quarta',
                  'Quinta',
                  'Sexta',
                  'Sábado',
                ];
              break;
            case 'si':
              var v = [
                  'januar',
                  'februar',
                  'marec',
                  'april',
                  'maj',
                  'junij',
                  'julij',
                  'avgust',
                  'september',
                  'oktober',
                  'november',
                  'december',
                ],
                w = [
                  'nedelja',
                  'ponedeljek',
                  'torek',
                  'sreda',
                  'četrtek',
                  'petek',
                  'sobota',
                ];
              break;
            case 'uk':
              var v = [
                  'січень',
                  'лютий',
                  'березень',
                  'квітень',
                  'травень',
                  'червень',
                  'липень',
                  'серпень',
                  'вересень',
                  'жовтень',
                  'листопад',
                  'грудень',
                ],
                w = [
                  'неділя',
                  'понеділок',
                  'вівторок',
                  'середа',
                  'четвер',
                  "п'ятниця",
                  'субота',
                ];
              break;
            case 'ru':
              var v = [
                  'январь',
                  'февраль',
                  'март',
                  'апрель',
                  'май',
                  'июнь',
                  'июль',
                  'август',
                  'сентябрь',
                  'октябрь',
                  'ноябрь',
                  'декабрь',
                ],
                w = [
                  'воскресенье',
                  'понедельник',
                  'вторник',
                  'среда',
                  'четверг',
                  'пятница',
                  'суббота',
                ];
              break;
            case 'tr':
              var v = [
                  'Ocak',
                  'Şubat',
                  'Mart',
                  'Nisan',
                  'Mayıs',
                  'Haziran',
                  'Temmuz',
                  'Ağustos',
                  'Eylül',
                  'Ekim',
                  'Kasım',
                  'Aralık',
                ],
                w = [
                  'Pazar',
                  'Pazartesi',
                  'Sali',
                  'Çarşamba',
                  'Perşembe',
                  'Cuma',
                  'Cumartesi',
                ];
              break;
            case 'ko':
              var v = [
                  '1월',
                  '2월',
                  '3월',
                  '4월',
                  '5월',
                  '6월',
                  '7월',
                  '8월',
                  '9월',
                  '10월',
                  '11월',
                  '12월',
                ],
                w = [
                  '일요일',
                  '월요일',
                  '화요일',
                  '수요일',
                  '목요일',
                  '금요일',
                  '토요일',
                ];
              break;
            case 'fi':
              var v = [
                  'Tammikuu',
                  'Helmikuu',
                  'Maaliskuu',
                  'Huhtikuu',
                  'Toukokuu',
                  'Kesäkuu',
                  'Heinäkuu',
                  'Elokuu',
                  'Syyskuu',
                  'Lokakuu',
                  'Marraskuu',
                  'Joulukuu',
                ],
                w = [
                  'Sunnuntai',
                  'Maanantai',
                  'Tiistai',
                  'Keskiviikko',
                  'Torstai',
                  'Perjantai',
                  'Lauantai',
                ];
              break;
            default:
              var v = [
                  'January',
                  'February',
                  'March',
                  'April',
                  'May',
                  'June',
                  'July',
                  'August',
                  'September',
                  'October',
                  'November',
                  'December',
                ],
                w = [
                  'Sunday',
                  'Monday',
                  'Tuesday',
                  'Wednesday',
                  'Thursday',
                  'Friday',
                  'Saturday',
                ];
          }

          var x = function () {
              m.find('.dd-d li,.dd-s-b li').show(),
                n(h) && 2 == f
                  ? (m.find('.dd-d ul').width(29 * p.dropWidth),
                    (30 != g && 31 != g) || (g = 29),
                    m.find('li[data-id=30],li[data-id=31]').hide())
                  : n(h) || 2 != f
                  ? 4 == f || 6 == f || 9 == f || 11 == f
                    ? (m.find('.dd-d ul').width(30 * p.dropWidth),
                      31 == g && (g = 30),
                      m.find('li[data-id=31]').hide())
                    : m.find('.dd-d ul').width(31 * p.dropWidth)
                  : (m.find('.dd-d ul').width(28 * p.dropWidth),
                    (29 != g && 30 != g && 31 != g) || (g = 28),
                    m
                      .find('li[data-id=29],li[data-id=30],li[data-id=31]')
                      .hide()),
                m.find('.dd-d li').each(function (b, c) {
                  var d = a(this).attr('data-id'),
                    d = new Date(f + '/' + d + '/' + h),
                    d = d.getDay();
                  0 == d || 6 == d
                    ? a(this).addClass('dd-sun')
                    : a(this).removeClass('dd-sun'),
                    a(this).find('span').html(w[d]);
                }),
                m.find('.dd-s-b-d li').each(function (b, c) {
                  var d = a(this).attr('data-id'),
                    d = new Date(f + '/' + d + '/' + h),
                    d = d.getDay();
                  0 == d || 6 == d
                    ? a(this).addClass('dd-sun')
                    : a(this).removeClass('dd-sun'),
                    a(this).find('span').html(w[d].substr(0, 3));
                }),
                m.find('.dd-s-b li').removeClass('dd-on'),
                m
                  .find(
                    '.dd-s-b-d li[data-id="' +
                      g +
                      '"],.dd-s-b-m li[data-id="' +
                      f +
                      '"],.dd-s-b-s-y li[data-id="' +
                      h +
                      '"],.dd-s-b-y li[data-id="' +
                      i +
                      '"]'
                  )
                  .addClass('dd-on'),
                p.animate
                  ? m.hasClass('dd-init')
                    ? (m.find('.dd-m .dd-ul').animate(
                        {
                          scrollLeft:
                            m.find('.dd-m li[data-id="' + f + '"]').index() *
                            p.dropWidth,
                        },
                        1200,
                        'swing'
                      ),
                      setTimeout(function () {
                        m.find('.dd-d .dd-ul').animate(
                          {
                            scrollLeft:
                              m.find('.dd-d li[data-id="' + g + '"]').index() *
                              p.dropWidth,
                          },
                          1200,
                          'swing'
                        ),
                          setTimeout(function () {
                            m.find('.dd-y .dd-ul').animate(
                              {
                                scrollLeft:
                                  m
                                    .find('.dd-y li[data-id="' + h + '"]')
                                    .index() * p.dropWidth,
                              },
                              1200,
                              'swing',
                              function () {
                                (r = !0), m.removeClass('dd-init');
                              }
                            );
                          }, 200);
                      }, 400))
                    : (m
                        .find('.dd-d .dd-ul')
                        .stop()
                        .animate(
                          {
                            scrollLeft:
                              m.find('.dd-d li[data-id="' + g + '"]').index() *
                              p.dropWidth,
                          },
                          260
                        ),
                      m
                        .find('.dd-m .dd-ul')
                        .stop()
                        .animate(
                          {
                            scrollLeft:
                              m.find('.dd-m li[data-id="' + f + '"]').index() *
                              p.dropWidth,
                          },
                          260
                        ),
                      m
                        .find('.dd-y .dd-ul')
                        .stop()
                        .animate(
                          {
                            scrollLeft:
                              m.find('.dd-y li[data-id="' + h + '"]').index() *
                              p.dropWidth,
                          },
                          260
                        ),
                      m
                        .find('.dd-sub-y .dd-ul')
                        .stop()
                        .animate(
                          {
                            scrollLeft:
                              m
                                .find('.dd-sub-y li[data-id="' + i + '"]')
                                .index() * p.dropWidth,
                          },
                          260
                        ))
                  : (setTimeout(function () {
                      m
                        .find('.dd-d .dd-ul')
                        .scrollLeft(
                          m.find('.dd-d li[data-id="' + g + '"]').index() *
                            p.dropWidth
                        ),
                        m
                          .find('.dd-m .dd-ul')
                          .scrollLeft(
                            m.find('.dd-m li[data-id="' + f + '"]').index() *
                              p.dropWidth
                          ),
                        m
                          .find('.dd-y .dd-ul')
                          .scrollLeft(
                            m.find('.dd-y li[data-id="' + h + '"]').index() *
                              p.dropWidth
                          ),
                        m
                          .find('.dd-sub-y .dd-ul')
                          .scrollLeft(
                            m
                              .find('.dd-sub-y li[data-id="' + i + '"]')
                              .index() * p.dropWidth
                          );
                    }, 1),
                    m.hasClass('dd-init') &&
                      (m.removeClass('dd-init'), (r = !0))),
                B(i);
            },
            y = function () {
              m.addClass('dd-bottom'),
                m
                  .find('.dd-c')
                  .css({
                    top: l.offset().top + l.innerHeight() - 6,
                    left:
                      l.offset().left + (l.innerWidth() / 2 - p.dropWidth / 2),
                  })
                  .addClass('dd-' + p.init_animation);
            },
            z = function () {
              m
                .find('.dd-c')
                .addClass('dd-alert')
                .removeClass('dd-' + p.init_animation),
                setTimeout(function () {
                  m.find('.dd-c').removeClass('dd-alert');
                }, 500);
            },
            A = function () {
              if (p.lock) {
                var a = Date.parse(c + '-' + (e + 1) + '-' + d) / 1e3,
                  b = Date.parse(h + '-' + f + '-' + g) / 1e3;
                if ('from' == p.lock) {
                  if (b < a) return z(), !1;
                } else if (b > a) return z(), !1;
              }
              var i = new Date(f + '/' + g + '/' + h),
                i = i.getDay(),
                j = p.format
                  .replace(/\b(d)\b/g, o(g))
                  .replace(/\b(m)\b/g, o(f))
                  .replace(/\b(Y)\b/g, h)
                  .replace(/\b(D)\b/g, w[i].substr(0, 3))
                  .replace(/\b(l)\b/g, w[i])
                  .replace(/\b(F)\b/g, v[f - 1])
                  .replace(/\b(M)\b/g, v[f - 1].substr(0, 3))
                  .replace(/\b(n)\b/g, f)
                  .replace(/\b(j)\b/g, g);
              l.val(j),
                m
                  .find('.dd-c')
                  .addClass('dd-fadeout')
                  .removeClass('dd-' + p.init_animation),
                (q = setTimeout(function () {
                  m.hide(), m.find('.dd-c').removeClass('dd-fadeout');
                }, 400)),
                l.change();
            },
            B = function (b) {
              m.find('.dd-s-b-s-y ul').empty();
              var c = parseInt(b),
                d = c + (p.yearsRange - 1);
              d > p.maxYear && (d = p.maxYear);
              for (var e = c; e <= d; e++) {
                if (e % p.yearsRange == 0) var f = e;
                m.find('.dd-s-b-s-y ul').append(
                  '<li data-id="' +
                    e +
                    '" data-filter="' +
                    f +
                    '">' +
                    e +
                    '</li>'
                );
              }
              m.find('.dd-s-b-s-y ul').append('<div class="dd-clear"></div>'),
                (i = parseInt(b)),
                m
                  .find('.dd-sub-y .dd-ul')
                  .scrollLeft(
                    m.find('.dd-sub-y li[data-id="' + i + '"]').index() *
                      p.dropWidth
                  ),
                m.find('.dd-s-b-s-y li').each(function (b, c) {
                  a(this).click(function () {
                    m.find('.dd-s-b-s-y li').removeClass('dd-on'),
                      a(this).addClass('dd-on'),
                      (h = parseInt(a(this).attr('data-id'))),
                      m.find('.dd-s-b-y,.dd-s-b-s-y').removeClass('dd-show'),
                      m.find('.dd-s-b-s,.dd-sub-y').hide(),
                      x();
                  });
                });
            },
            C = function () {
              m.find('.dd-s-b').each(function (b, c) {
                var d = a(this),
                  e = 0;
                if (d.hasClass('dd-s-b-m') || d.hasClass('dd-s-b-d')) {
                  if (d.hasClass('dd-s-b-m'))
                    for (var h = 12, j = e; j < h; j++)
                      d.find('ul').append(
                        '<li data-id="' +
                          (j + 1) +
                          '">' +
                          v[j].substr(0, 3) +
                          '<span>' +
                          o(j + 1) +
                          '</span></li>'
                      );
                  if (d.hasClass('dd-s-b-d'))
                    for (var h = 31, j = e; j < h; j++)
                      d.find('ul').append(
                        '<li data-id="' +
                          (j + 1) +
                          '">' +
                          o(j + 1) +
                          '<span></span></li>'
                      );
                }
                if (d.hasClass('dd-s-b-y'))
                  for (var j = p.minYear; j <= p.maxYear; j++)
                    j % p.yearsRange == 0 &&
                      d
                        .find('ul')
                        .append('<li data-id="' + j + '">' + j + '</li>');
                d.find('ul').append('<div class="dd-clear"></div>'),
                  d.find('ul li').click(function () {
                    (d.hasClass('dd-s-b-m') || d.hasClass('dd-s-b-d')) &&
                      (d.hasClass('dd-s-b-m') &&
                        (f = parseInt(a(this).attr('data-id'))),
                      d.hasClass('dd-s-b-d') &&
                        (g = parseInt(a(this).attr('data-id'))),
                      x(),
                      d.removeClass('dd-show'),
                      m.find('.dd-s-b-s').hide()),
                      d.hasClass('dd-s-b-y') &&
                        (m.find('.dd-sub-y').show(),
                        B(a(this).attr('data-id')),
                        m.find('.dd-s-b-s-y').addClass('dd-show'));
                  });
                var k = 0,
                  l = !1;
                d.on('mousewheel DOMMouseScroll', function (a) {
                  (l = !0),
                    (a.originalEvent.wheelDeltaY < 0 ||
                      a.originalEvent.detail > 0) &&
                      (k = d.scrollTop() + 100),
                    (a.originalEvent.wheelDeltaY > 0 ||
                      a.originalEvent.detail < 0) &&
                      (k = d.scrollTop() - 100),
                    d.stop().animate(
                      {
                        scrollTop: k,
                      },
                      600,
                      '_dd_easing',
                      function () {
                        l = !1;
                      }
                    );
                }).on('scroll', function () {
                  l || (k = d.scrollTop());
                });
              }),
                m.find('.dd-b').each(function (b, c) {
                  var j,
                    d = a(this),
                    e = 0;
                  if (d.hasClass('dd-m')) {
                    for (var k = 0; k < 12; k++)
                      d.find('ul').append(
                        '<li data-id="' +
                          (k + 1) +
                          '">' +
                          v[k].substr(0, 3) +
                          '</li>'
                      );
                    d.find('li').click(function () {
                      return (
                        'm' != p.format &&
                        'n' != p.format &&
                        'F' != p.format &&
                        'M' != p.format &&
                        void m.find('.dd-s-b-m').addClass('dd-show')
                      );
                    });
                  }
                  if (d.hasClass('dd-d')) {
                    for (var k = 1; k <= 31; k++)
                      d.find('ul').append(
                        '<li data-id="' +
                          k +
                          '"><strong>' +
                          o(k) +
                          '</strong><br><span></span></li>'
                      );
                    d.find('li').click(function () {
                      m.find('.dd-s-b-d').addClass('dd-show');
                    });
                  }
                  if (d.hasClass('dd-y')) {
                    for (var k = p.minYear; k <= p.maxYear; k++) {
                      var l;
                      k % p.yearsRange == 0 && (l = 'data-filter="' + k + '"'),
                        d
                          .find('ul')
                          .append(
                            '<li data-id="' + k + '" ' + l + '>' + k + '</li>'
                          );
                    }
                    d.find('li').click(function () {
                      return (
                        'Y' != p.format &&
                        void m.find('.dd-s-b-y').addClass('dd-show')
                      );
                    });
                  }
                  if (d.hasClass('dd-sub-y'))
                    for (var k = p.minYear; k <= p.maxYear; k++)
                      k % p.yearsRange == 0 &&
                        d
                          .find('ul')
                          .append('<li data-id="' + k + '">' + k + '</li>');
                  d.find('ul').width(d.find('li').length * p.dropWidth),
                    d.find('.dd-n').click(function () {
                      clearInterval(j);
                      var b, c, e;
                      d.hasClass('dd-y') && (c = h),
                        d.hasClass('dd-m') && (c = f),
                        d.hasClass('dd-d') && (c = g),
                        d.hasClass('dd-sub-y') && (c = i),
                        a(this).hasClass('dd-n-left')
                          ? ((b = d.find('li[data-id="' + c + '"]').prev('li')),
                            (e =
                              b.length && b.is(':visible')
                                ? parseInt(b.attr('data-id'))
                                : parseInt(
                                    d.find('li:visible:last').attr('data-id')
                                  )))
                          : ((b = d.find('li[data-id="' + c + '"]').next('li')),
                            (e =
                              b.length && b.is(':visible')
                                ? parseInt(b.attr('data-id'))
                                : parseInt(
                                    d.find('li:first').attr('data-id')
                                  ))),
                        d.hasClass('dd-y') && (h = e),
                        d.hasClass('dd-m') && (f = e),
                        d.hasClass('dd-d') && (g = e),
                        d.hasClass('dd-sub-y') && (i = e),
                        x();
                    });
                  var n = function () {
                    if (r) {
                      e = Math.round(
                        d.find('.dd-ul').scrollLeft() / p.dropWidth
                      );
                      var a = parseInt(d.find('li').eq(e).attr('data-id'));
                      d.hasClass('dd-y') && (h = a),
                        d.hasClass('dd-m') && (f = a),
                        d.hasClass('dd-d') && (g = a),
                        d.hasClass('dd-sub-y') && (i = a);
                    }
                  };
                  d.find('.dd-ul').on('scroll', function () {
                    n();
                  });
                  var q = !1;
                  d.find('.dd-ul').on('mousedown touchstart', function () {
                    q || (q = !0),
                      clearInterval(j),
                      a(window).on('mouseup touchend touchmove', function () {
                        q &&
                          (clearInterval(j),
                          (j = setTimeout(function () {
                            x(), (q = !1);
                          }, 780)));
                      });
                  }),
                    'Y' == p.format && m.find('.dd-m,.dd-d').hide(),
                    ('m' != p.format &&
                      'n' != p.format &&
                      'F' != p.format &&
                      'M' != p.format) ||
                      m.find('.dd-y,.dd-d').hide();
                }),
                m.find('.dd-b li').click(function () {
                  return (
                    'm' != p.format &&
                    'n' != p.format &&
                    'F' != p.format &&
                    'M' != p.format &&
                    'Y' != p.format &&
                    void m.find('.dd-s-b-s').show()
                  );
                }),
                m.find('.dd-s-b-s').click(function () {
                  m.find('.dd-s-b').removeClass('dd-show'),
                    m.find('.dd-s-b-s').hide();
                }),
                m.find('.dd-s').click(function () {
                  A();
                }),
                m.find('.dd-o').click(function () {
                  m
                    .find('.dd-c')
                    .addClass('dd-fadeout')
                    .removeClass('dd-' + p.init_animation),
                    (q = setTimeout(function () {
                      m.hide(), m.find('.dd-c').removeClass('dd-fadeout');
                    }, 400));
                }),
                x();
            },
            D = function () {
              clearInterval(q),
                m.hasClass('dd-init') &&
                  (l
                    .attr({
                      readonly: 'readonly',
                    })
                    .blur(),
                  (f = e + 1),
                  (g = d),
                  (h = c),
                  parseInt(l.attr('data-d')) &&
                    parseInt(l.attr('data-d')) <= 31 &&
                    (g = parseInt(l.attr('data-d'))),
                  parseInt(l.attr('data-m')) &&
                    parseInt(l.attr('data-m')) <= 11 &&
                    (f = parseInt(l.attr('data-m')) + 1),
                  parseInt(l.attr('data-y')) &&
                    4 == l.attr('data-y').length &&
                    (h = parseInt(l.attr('data-y'))),
                  h > p.maxYear && (p.maxYear = h),
                  h < p.minYear && (p.minYear = h),
                  C()),
                m.show(),
                y();
            };
          l.click(function () {
            D();
          }),
            l.bind('focusin focus', function (a) {
              a.preventDefault();
            }),
            a(window).resize(function () {
              y();
            });
        }
      });
    };
  })(jQuery);
