%.html: %.xml
	java org.apache.xalan.xslt.Process -in $< -out $@ -xsl ../testsuite-to-html.xsl

html: testsuite.html baseline-testcases.html candidate-testcases.html
