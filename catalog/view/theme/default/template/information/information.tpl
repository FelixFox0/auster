<?php echo $header; ?>
<div class="static-page">
  <div class="container">
    <?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content"><?php echo $content_top; ?>
        <div class="title title--green">
          <h1><?php echo $heading_title; ?></h1>
        </div>
        


<?php echo $description; ?><?php echo $content_bottom; ?>
        </div>
      <?php echo $column_right; ?>
  </div>
</div>

<div class="contact-block">
  <div class="contact-block__container">
    <div class="contact-block__col contact-block__map" id="map">
      
    </div>
    <div class="contact-block__col contact-block__form">
      <div class="consult__form consult__form--white">
        <h3 class="consult__form-title"><span><?php echo $text_questions; ?></span></h3>
        <p class="consult__form-subtitle"><?php echo $text_answer; ?></p>
        <form action="" type="POST" id="form3">
          <div class="consult__input consult__input--white">
            <label for=""><?php echo $text_name; ?></label>
            <input type="text" placeholder="<?php echo $text_name2; ?>">
          </div>
          <div class="consult__input consult__input--white">
            <label for=""><?php echo $text_phone; ?></label>
            <input type="text" placeholder="<?php echo $text_phone2; ?>">
          </div>
          <div class="consult__input consult__input--white">
            <label for=""><?php echo $text_mail; ?></label>
            <input type="email" placeholder="<?php echo $text_mail2; ?>">
          </div>
          <div class="consult__input">
            <button>
              <i class="ic-send"></i>
              <span><?php echo $text_button; ?></span>
            </button>
          </div>
          <div class="consult__txt"><?php echo $text_post_text; ?></div>
        </form>
      </div>
    </div>
  </div>
</div>


<script>
    
function initMap() {

var map;

      var styles = [
    {
        "featureType": "administrative",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#444444"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "all",
        "stylers": [
            {
                "color": "#f2f2f2"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "all",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "lightness": 45
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "all",
        "stylers": [
            {
                "color": "#46bcec"
            },
            {
                "visibility": "on"
            }
        ]
    }
]

var myLatlng = new google.maps.LatLng(50.462654, 30.599236);

var options = {
mapTypeControlOptions: {
mapTypeIds: ['Styled']
},
center: myLatlng,
zoom: 15,
disableDefaultUI: true, 
mapTypeId: 'Styled'
};

var div = document.getElementById('map');
var map = new google.maps.Map(div, options);
var styledMapType = new google.maps.StyledMapType(styles, { name: 'Styled' });
map.mapTypes.set('Styled', styledMapType);

var marker = new google.maps.Marker({
    position: myLatlng,
    icon: '/image/location.png',
    title: "Strunhange"
});

// To add the marker to the map, call setMap();
marker.setMap(map);

}

    </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFMJaMmO8Y93QKqpEOCGH6pfJqs52gCLE&callback=initMap"
    async defer></script>
<?php echo $footer; ?>