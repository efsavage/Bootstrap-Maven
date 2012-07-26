/*
 *  Copyright 2012 Eric F. Savage, code@efsavage.com
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 */
package com.efsavage.twitter.bootstrap.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Returns the Bootstrap responsive css file. This is intended to be used in
 * addition the core bootstrap file. Add "min=false" parameter to get the full
 * non-minified version.
 * 
 * @author <a href="http://efsavage.com">Eric F. Savage</a>, <a
 *         href="mailto:code@efsavage.com">code@efsavage.com</a>.
 * 
 */
@WebServlet(urlPatterns = "/ext/bootstrap/css/bootstrap-responsive.css")
public class BootstrapCssResponsiveServlet extends HttpServlet {

	@Override
	protected void doGet(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/css");
		final PrintWriter out = resp.getWriter();
		String src = "/com/twitter/bootstrap/css/bootstrap-responsive.min.css";
		if ("false".equals(req.getParameter("min"))) {
			src = "/com/twitter/bootstrap/css/bootstrap-responsive.css";
		}
		final InputStream cssStream = getClass().getResourceAsStream(src);
		final String css = new Scanner(cssStream).useDelimiter("\\A").next();
		out.write(css);
	}

}
