The data in this directory was generated on 13th August 2012 by [Leigh Dodds][1]. The data was 
downloaded and extracted from an [FOI response][2] on the What Do They Know website 
using the script contained in this project.

No explicit license was given to this data in [the FOI response][1]. However it is believed 
to be Crown Copyright and Database Right Royal Mail 2012.

It is not known how complete the data is. For more information comment on the FOI request.

FIELDS
------

The CSV file has the following structure

* The type of post box (see below)
* Address / location of the box
* Box number part 1 (this is the Post Code District where the box can be found)
* Box number part 2
* Another internal box number (possibly a barcode inside the box)
* OSGB grid numerical easting
* OSGB grid numerical northing
* Collection unit name?
* Collection unit ID number?
* Box type / model
* Mo-Fr last collection
* Sat last collection
* latitude
* longitude

Note: the last two fields were not present in the original data. These have been calculated from the 
OSGB easting and northing information.

The different types are as follows:

* Business Box = meter mail box
* Post Office Network Outlet = Post Office,
* Collection Unit = ? some sort of admin unit for collecting mail from a set of boxes.
* Pillar Box = regular post box

Thanks to Robert Whittaker for providing detail on the data structure.

[1]: http://www.ldodds.com
[2]: http://www.whatdotheyknow.com/request/postbox_data_in_central_collecti_2#incoming-296922