Map {
  background-color: @water-color;
}

@book-fonts:    "DejaVu Sans Book", "unifont Medium";
@bold-fonts:    "DejaVu Sans Bold", "DejaVu Sans Book", 
                "unifont Medium";

@oblique-fonts: "DejaVu Sans Oblique", "DejaVu Sans Book", "unifont Medium";

@water-color: #b5d0d0;
@land-color: #f2efe9;


#waynametagsnaturalas {
  [zoom >= 19]{
    marker-width:16;
    //marker-fill:#f45;
    //marker-line-color:#813;
    //marker-allow-overlap:true;
    [natural='tree'] {
      marker-file: url(symbols/trees.png);
      [type='palm'] { marker-file: url(symbols/trees_palm.png); }
      [type='coniferus'],[type='coniferous'] { marker-file: url(symbols/trees_conifer.png); }
      [type='broad_leaved'] { marker-file: url(symbols/trees_broad_leaved.png); }
    }
    [highway='street_lamp'] {
      marker-file: url(symbols/streetlamp.png);
    }
    [highway='crossing'] {
      marker-file: url(symbols/vehicle/zebra_crossing.png);
    }
    [noexit='yes'] {
      marker-file: url(symbols/vehicle/restriction/dead_end.png);
    }
  }
}
