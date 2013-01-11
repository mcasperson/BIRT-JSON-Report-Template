<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>PressGang CCMS Reports</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
		<LINK href="styles/iv/index.css" type=text/css rel=stylesheet>
		<LINK href="http://www.eclipse.org/images/eclipse.ico" type=image/x-icon rel="shortcut icon">
		<STYLE>
			.warningMessage { color:red; }
			body { font-family: sans-serif; }
		</STYLE>
	<%
		String javaVersion = System.getProperty("java.version");
		String viewerVersion = "4.2.1";
		String engineVersion = "4.2.1";
	%>
	</HEAD>
	<BODY>
		<!-- Page banner -->
		<TABLE class="banner-area" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<TBODY>
				<TR>
					<TD width="237" style="background-color: rgb(164,1,4)">
						<IMG src="Images/logo.png" alt="Red Hat Logo" width="237" height="87" border="0">
					</TD>
					<TD width="100%">
					
					</TD>
					<TD vAlign="center" align="right" width="293">
						<IMG src="Images/pressgang_logo_600px.png" width="293" height="87" border="0">
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		
		<TABLE class="banner-area" cellSpacing="0" cellPadding="0" width="100%" border="0" style="margin-top: 1em;">
			<TBODY>
				<TR>
					<TD>
						REPORT LINK
					</TD>
					<TD>
						REPORT DESCRIPTION
					</TD>
				</TR>
				<TR>
					<TD>
						<A href="/birt/frameset?__report=General/Topics_Per_Category_Per_Spec.rptdesign"/>Topics per CSP (Optionally Grouped by Tag)</A>
					</TD>
					<TD>
						<P>This report accepts a list of CSP IDs and a category ID, and returns a stacked bar chart that breaks down the topics assigned to a CSP by the tags assigned to the specified category.</P>
					</TD>
				</TR>
				<TR>
					<TD>
						<A href="/birt/frameset?__report=RHEV/RHEV_Books_By_Topic.rptdesign"/>RHEV Topics Included in More Than One Content Specification</A>
					</TD>
					<TD>
						<P>This report lists RHEV topics that are included in multiple CSPs.</P>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		
		<TABLE class="banner-area" cellSpacing="0" cellPadding="0" border="0" style="margin-top: 1em;">
			<TBODY>
				<TR>
					<TD>
						SYSTEM SETTING
					</TD>
					<TD>
						SYSTEM VALUE
					</TD>
				</TR>
				<TR>
					<TD>
						Viewer Version :
					</TD>
					<TD>
						<%= viewerVersion %>
					</TD>
				</TR>
				<TR>
					<TD>
						Engine Version:
					</TD>
					<TD>
						<%= engineVersion %>
					</TD>
				</TR>
				<TR>
					<TD>
						JRE version:
					</TD>
					<TD>
						<%
						String javaVersionMessage = javaVersion;
						
						// check Java version
						String[] versionParts = javaVersion.split("\\.");
						int majorVersion = 0;
						int minorVersion = 0;
						try
						{
							majorVersion = Integer.parseInt(versionParts[0]);		
							minorVersion = Integer.parseInt(versionParts[1]);
							if ( majorVersion < 1 || ( majorVersion == 1 && minorVersion < 5 ) )
							{
								javaVersionMessage = "<span class=\"warningMessage\">" + javaVersion + " (WARNING: BIRT " + viewerVersion + " only supports JRE versions >= 1.5)</span>";
							}
						}
						catch (NumberFormatException e)
						{
						
						}
					%>
					<%= javaVersionMessage  %>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		
		<p> </p>
		<p> </p>
		
		<p> </p>
	</BODY>
</HTML>
