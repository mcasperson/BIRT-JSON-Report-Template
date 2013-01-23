This project uses the JSONParser from https://github.com/mcasperson/birt-jsonparser to download data from a JSON based REST API. See more details at https://github.com/mcasperson/birt-jsonparser/wiki/Getting-Started.

Make sure you set a number of Java properties before trying to run the reports. These properties reflect internal network settings and credentials that have been specificially excluded from the reports. 

If you want to set this property in Eclipse (which you need to do to preview data sets), edit the eclipse.ini file and add the line

-DBIRT_CCMS_BASE_URL=http://ccms_host:8080/TopicIndex/seam/resource/rest/
-DBugzillaDatabase=database
-DBugzillaDatabaseURL=jdbc:vendor://host:1234/database
-DBugzillaUsername=username
-DBugzillaPassword=password

Refer to the book "Using the Internal Engineering Tools Virtual Database" to find out how to configure Java with the correct certificates when accessing the Bugzilla database.

To run the reports in the BIRT Web Viewer, add the following system properties the AS7 configuration file:

    <system-properties>
        <property name="BIRT_CCMS_BASE_URL" value="http://pressgang-rest-server:8080/TopicIndex/seam/resource/rest/"/>
        <property name="BugzillaDatabase" value="EngVDBF"/>
        <property name="BugzillaDatabaseURL" value="jdbc:teiid:database@mms://teiidhost:12345"/>
        <property name="BugzillaUsername" value="username"/>
        <property name="BugzillaPassword" value="password"/>
        <property name="BugzillaPostgressDatabase" value="database"/>
        <property name="BugzillaPostgressDatabaseURL" value="jdbc:postgresql://postrgresshost:12345/database"/>
        <property name="BugzillaPostgressUsername" value="username"/>
        <property name="BugzillaPostgressPassword" value="password"/>
        <property name="ZanataURL" value="https://zanatahost/seam/resource/restv1"/>
        <property name="ZanataUsername" value="username"/>
        <property name="ZanataAPIKey" value="1234567890abcdef"/>
    </system-properties>
