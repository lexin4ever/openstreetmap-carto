@building: #E2CFCF;
@station: #d4aaaa;
@supermarket: pink;
@placeOfWorship: #777;
@terminal: #cc99ff;

#buildings-lz {
  [zoom >= 10] {
    [railway = 'station']::railway,
    [building = 'station'] {
      polygon-fill: @station;
      polygon-clip: false;
    }

    [building = 'supermarket'] {
      polygon-fill: @supermarket;
      polygon-opacity: 0.5;
      polygon-clip: false;
    }

    [amenity = 'place_of_worship']::amenity {
      polygon-opacity: 0.5;
      polygon-fill: @placeOfWorship;
      polygon-clip: false;
      [zoom >= 15] {
        polygon-opacity: 0.9;
        polygon-fill: lighten(@placeOfWorship, 20%);
        line-width: 0.3;
        line-color: darken(@placeOfWorship, 40%);
      }
    }
  }
}

#buildings {
  [building = 'INT-light'][zoom >= 12] {
    polygon-fill: darken(@building, 15%);
    polygon-opacity: 0.7;
    polygon-clip: false;
  }
  [building != 'INT-light'][building != ''][zoom >= 12][zoom < 16] {
    polygon-fill: darken(@building, 5%);
    polygon-opacity: 0.9;
    polygon-clip: false;
  }
  [building != 'INT-light'][building != ''][zoom >= 16] {
      //building-fill: @building;
      //building-height: [height];
    polygon-fill: @building;
    polygon-opacity: 0.9;
    polygon-clip: false;
        line-width: 0.3;
        line-color: darken(@building, 5%);
  }
  [aeroway = 'terminal'][zoom >= 12]::aeroway {
    polygon-fill: @terminal;
    polygon-clip: false;
    [zoom >= 14] {
      line-color: saturate(darken(@terminal, 50%), 20%);
      line-width: 0.2;
    }
  }
}


#roofs{
  [zoom = 19] {
	building-fill: darken(@building, 15%);
    building-height: 0.1; 
  }
}