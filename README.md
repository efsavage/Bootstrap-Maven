Bootstrap for Maven
=============
[![Build Status](https://secure.travis-ci.org/efsavage/Bootstrap-Maven.png?branch=master)](http://travis-ci.org/efsavage/Bootstrap-Maven)

This library gives you a way to drop [Twitter Bootstrap](http://twitter.github.com/bootstrap) into your project as a [Maven](maven.apache.org) dependency, which means you don't have to include these third party files in your own source control.

pom.xml
-------

Add this to the <dependencies> element of your pom.xml

		<dependency>
			<groupId>com.efsavage</groupId>
			<artifactId>twitter-bootstrap</artifactId>
			<version>2.0.4</version>
		</dependency>

Usage
-------
The files will "mount" themselves at the following URLs:

* /ext/bootstrap/css/bootstrap.css
* /ext/bootstrap/css/bootstrap-responsive.css
* /ext/bootstrap/js/bootstrap.js
* /ext/bootstrap/img/glyphicons-halflings.png (referenced from the css files)
* /ext/bootstrap/img/glyphicons-halflings-white.png (referenced from the css files)

Requirements
-------

This requires a Servlet 3.0 container, such as Jetty 8.

Minified vs. Full Versions
-------
The minified versions of .css and .js files are used by default, append ?min=false to see the full versions.

Modifications
-------
The files served have not been modified in any way from their original distribution.

Other "Mavenized" Projects
-------
* [jQuery for Maven](https://github.com/efsavage/jQuery-Maven)
* [Backbone.js for Maven](https://github.com/efsavage/Backbone-Maven)

Changelog
-------
Note: See the [Bootstrap Changelog](https://github.com/twitter/bootstrap/wiki/Changelog) for information about changes to the Bootstrap files themselves.

##2.0.4
* Updated to Bootstrap version 2.0.4
* Fixed the image servlets
* Moved files under /ext/bootstrap/ parent directory.

##2.0.3
* Updated to Bootstrap version 2.0.3

##2.0.2
* Updated to Bootstrap version 2.0.2

##2.0.1
* Updated to Bootstrap version 2.0.1

##2.0.0
* Updated to Bootstrap version 2.0.0