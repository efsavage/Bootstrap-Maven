Bootstrap for Maven
=============

This library gives you a way to drop bootstrap into your project as a Maven dependency, which makes your own repository smaller.

pom.xml
-------

Add this to the <dependencies> element of your pom.xml

		<dependency>
			<groupId>com.efsavage</groupId>
			<artifactId>twitter-bootstrap</artifactId>
			<version>2.0.1</version>
		</dependency>

Requirements
-------

This requires a Servlet 3.0 container, such as Jetty 8.

Minified vs. Full Versions
-------

The minified versions of .css and .js files are used by default, append ?min=false to see the full versions.

Modifications
-------

The files served have not been modified in any way from their original distribution.