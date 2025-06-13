document.addEventListener('DOMContentLoaded', function () {
  const platform = new H.service.Platform({
    apikey: '9_zHbkL8cSCfGl0wAhjsSDUGdWwLxfcJg5FCG-0GUCE' 
  });

  const defaultLayers = platform.createDefaultLayers();

  const map = new H.Map(
    document.getElementById('japan-map'),
    defaultLayers.vector.normal.map,
    {
      zoom: 9,
      center: { lat: 35.6895, lng: 139.6917 } // 東京
    }
  );

  const behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));
  const ui = H.ui.UI.createDefault(map, defaultLayers);
});
