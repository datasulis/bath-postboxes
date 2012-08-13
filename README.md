BATH POST BOX DATA
------------------

This project contains data related to post boxes in the BA1 and BA2 area of Bath.

The data originates from [a Freedom of Information request made through What Do They Know][1] on 
21st June 2012. The request as for an extract of the Post Office's Central Collections Management Database
which includes data on post boxes around the country.

The [response to the request][2] was a zipped CSV file containing post box data from around the 
country.

The script in the bin directory of this project extracts just those post boxes which have been marked 
as being in the BA1 and BA2 post code areas. It also converts the OSGB references into lat/long.

Co-ordinate conversions are handled by the [OSGB Convert][3] gem.

The results of running that script have been uploaded into the data directory.

If you just want the local bath data then grab the CSV file from the project. You could modify the 
script to collect data for a different selection of post codes, or grab the entire snapshot from the 
FOI response.

See the README in the data directory for notes on the data format.

LICENSE
-------

The code and text in this project is hereby released into the Public Domain. The data is covered by 
its own license. 

To view a copy of the public domain dedication, visit 
http://creativecommons.org/licenses/publicdomain or send a letter to 
Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.

[1]: http://www.whatdotheyknow.com/request/postbox_data_in_central_collecti_2
[2]: http://www.whatdotheyknow.com/request/postbox_data_in_central_collecti_2#incoming-296922
[3]: https://github.com/fidothe/osgb_convert