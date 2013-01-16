This project uses the JSONParser from https://github.com/mcasperson/birt-jsonparser to download data from a JSON based REST API. See more details at https://github.com/mcasperson/birt-jsonparser/wiki/Getting-Started.

Make sure you set a number of Java properties before trying to run the reports. These properties reflect internal network settings and credentials that have been specificially excluded from the reports. 

If you want to set this property in Eclipse (which you need to do to preview data sets), edit the eclipse.ini file and add the line

-DBIRT_CCMS_BASE_URL=http://ccms_host:8080/TopicIndex/seam/resource/rest/
-DBugzillaDatabase=database
-DBugzillaDatabaseURL=jdbc:vendor://host:1234/database
-DBugzillaUsername=username
-DBugzillaPassword=password

Refer to the book "Using the Internal Engineering Tools Virtual Database" to find out how to configure Java with the correct certificates when accessing the Bugzilla database.
