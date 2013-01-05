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
package com.efsavage.twitter.bootstrap.servlet.filter;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Acts like c:forEach but automatically injects tbody and tr tags.. This
 * presumably could be done in a .tag file, but I ran into too many issues with
 * type coercion to make it practical.
 * 
 * @author <a href="http://efsavage.com">Eric F. Savage</a>, <a
 *         href="mailto:code@efsavage.com">code@efsavage.com</a>.
 * 
 */
public class TBodyTag extends TagSupport {

	private static boolean isEmpty(final Object object) {
		if (object == null) {
			return true;
		}
		if (object instanceof Collection<?>) {
			if (((Collection<?>) object).size() > 0) {
				return false;
			}
		}
		System.err.println("Cannot handle items attribute of class: " + object.getClass().getName());
		return true;
	}

	private Object items;
	private String var;

	private Iterator<?> iterator = null;

	@Override
	public int doAfterBody() throws JspException {
		try {
			if (this.iterator != null && this.iterator.hasNext()) {
				this.pageContext.getOut().write("\t</tr>\n\t<tr>");
				final Object item = this.iterator.next();
				if (this.var != null && this.var.length() > 0) {
					this.pageContext.setAttribute(this.var, item);
				}

				return EVAL_BODY_AGAIN;
			}
			this.pageContext.getOut().write("\t</tr\n</tbody>");
			return SKIP_BODY;
		} catch (final IOException e) {
			throw new JspException(e);
		}
	}

	/**
	 * Creates an opening table tag.
	 * 
	 * @see javax.servlet.jsp.tagext.TagSupport#doStartTag()
	 */
	@Override
	public int doStartTag() throws JspException {
		try {
			this.pageContext.getOut().write("<tbody>");
			if (isEmpty(this.items)) {
				return SKIP_BODY;
			}
			if (this.items instanceof Iterable) {
				this.iterator = ((Iterable<?>) this.items).iterator();
				if (this.iterator.hasNext()) {
					this.pageContext.getOut().write("\t<tr>");
					final Object item = this.iterator.next();
					if (this.var != null && this.var.length() > 0) {
						this.pageContext.setAttribute(this.var, item);
					}
					return EVAL_BODY_INCLUDE;
				}
			}
			return SKIP_BODY;
		} catch (final IOException e) {
			throw new JspException(e);
		}
	}

	/**
	 * @return the items
	 */
	public Object getItems() {
		return this.items;
	}

	/**
	 * @return the var
	 */
	public String getVar() {
		return this.var;
	}

	/**
	 * @param items
	 *            the items to set
	 */
	public void setItems(final Object items) {
		this.items = items;
	}

	/**
	 * @param var
	 *            the var to set
	 */
	public void setVar(final String var) {
		this.var = var;
	}

}
