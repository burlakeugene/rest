function mapInit() {
  var isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent),
    map = document.getElementById('map');
  if (map) {
    var data = JSON.parse(map.dataset.data);
    ymaps.ready(init);
    var myMap;
    function renderPins(data) {
      myMap.geoObjects.removeAll();
      data.forEach((item) => {
        let width = item.fields.map.marker.width / 2,
          height = item.fields.map.marker.height / 2;
        item.originalSizes = [width, height];
        item.originalImage = item.fields.map.marker.url;
        item.placemark = new ymaps.Placemark(
          [item.fields.map.lat, item.fields.map.lng],
          {
            id: item.id,
          },
          {
            iconLayout: 'default#image',
            iconImageHref: item.originalImage,
            iconImageSize: item.originalSizes,
            iconImageOffset: [-(width / 2), -height],
            hideIconOnBalloonOpen: false,
            balloonOffset: [0, 0],
          }
        );
        myMap.geoObjects.add(item.placemark);
      });
    }
    function checkActive(data) {
      data.forEach((item) => {
      });
    }
    function init() {
      myMap = new ymaps.Map('map', {
        center: [44.958835, 34.108635],
        controls: [],
        zoom: 12,
      });
      renderPins(data);
      checkActive(data);
      // map.setCenter([54.704815, 20.46638], 10);
      // map.panTo(
      //   [
      //     [55.751574, 37.573856],
      //     [43.134091, 131.928478],
      //   ],
      //   {
      //     callback: function () {
      //       alert('Прилетели!');
      //     },
      //   }
      // );
      let bounds = myMap.geoObjects.getBounds();
      bounds[0][0] -= 0.02;
      bounds[0][1] -= 0.02;
      bounds[1][0] += 0.02;
      bounds[1][1] += 0.02;
      myMap.setBounds(bounds, {
        checkZoomRange: true,
      });
      myMap.geoObjects.events.add('click', function (e) {
        let id = e.get('target').properties._data.id;
        data.forEach((item) => {
          item.active = item.id === id;
        });
        checkActive(data);
        let stores = document.querySelectorAll('.store');
        stores.length &&
          stores.forEach((store) => {
            store.classList.remove('store--active');
            if (id == store.dataset.id) store.classList.add('store--active');
          });
      });
      if (isMobile) {
        myMap.behaviors.enable('multiTouch');
      } else {
        myMap.behaviors.enable('drag');
      }
      // if (mapData.balloonState) myPlacemark.balloon.open();
    }
  }
}

export default mapInit;
