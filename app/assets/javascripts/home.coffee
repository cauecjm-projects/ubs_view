$(document).ready ->
  navigator.geolocation.getCurrentPosition (position) ->
    map = new (google.maps.Map)(document.getElementById('map'),
      center:
        lat: parseFloat(position.coords.latitude)
        lng: parseFloat(position.coords.longitude)
      zoom: 14)

    $.ajax '/burcar_ubs',
      type: 'GET'
      dataType: 'json'
      data: {
              latitude:  position.coords.latitude,
              longitude: position.coords.longitude
            }
      error: (jqXHR, textStatus, errorThrown) ->
        alert(textStatus)
        return false;
      success: (data, text, jqXHR) ->
        $('#ubs_list').removeClass('d-none').addClass('d-block')
        $('#ubs_total').html(data.length)

        for value in data
          new (google.maps.Marker)(
            position: new (google.maps.LatLng)(value.lat, value.lng)
            map:      map
            title:    value.nom_estab
          )

          html = "
            <div class='col-12 py-2 border border-light border-top-0 border-left-0 border-right-0'>
              <h5><strong>"+value.nom_estab+"</strong></h5>
              <h6 class='m-0'>" + value.endereco + "</h6>
              <h6 class='m-0'>" + value.bairro + " - " + value.cidade+"</h6>
              <h6 class='m-0'>" + value.tel + "</h6>
            </div>
          "
          $('.dv-lista').append(html)
    return false;
