This project uses the JSONParser from https://github.com/mcasperson/birt-jsonparser to download data from a JSON based REST API. See more details at https://github.com/mcasperson/birt-jsonparser/wiki/Getting-Started.

Make sure you set the BIRT_REST_BASE_URL Java property before trying to run the reports. If you want to set this property in Eclipse (which you need to do to preview data sets), edit the eclipse.ini file and add the line

-DBIRT_CCMS_BASE_URL=http://ccms_host:8080/TopicIndex/seam/resource/rest/