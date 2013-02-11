function displayDiff(source, sourceLabel, diff, diffLabel, isXML)
{
    var diffTable = prettydiff({
        source : source,
        sourcelabel : sourceLabel,
        diff : diff,
        difflabel : diffLabel,
        lang : isXML ? "markup" : "text",
        mode : "diff",
        diffview : "sidebyside"
    })[0];

    var win = window.open("", "_blank", "width=" + (screen.width - 200) + ", height=" + (screen.height - 200) + ",scrollbars=yes"); // a window object
    if (win != null) {
        win.document.open("text/html", "replace");
        win.document.write("<HTML><HEAD><TITLE>PressGangCCMS XML Diff</TITLE><link rel=\"stylesheet\" type=\"text/css\" href=\"../prettydiff.css\"><link rel=\"stylesheet\" type=\"text/css\" href=\"prettydiff.css\"></HEAD><BODY>"
                + diffTable + "</BODY></HTML>");
        win.document.close();
    }
}