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
    marker-width:6;
    marker-fill:#f45;
    marker-line-color:#813;
    marker-allow-overlap:true;
    [natural='tree'] {
      marker-file: url(symbols/tree2.png);
    }
  }
}
