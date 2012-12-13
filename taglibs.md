All attributes are optional unless otherwise stated.

# bs:button #

Renders a button.  

[Bootstrap Docs](http://twitter.github.com/bootstrap/base-css.html#buttons "Bootstrap Docs")

### Attributes ###

* **block**: boolean, defaults to false - renders button as block element
* **cssClass**: string - CSS class added after all standard classnames.
* **size**, (*large | small | mini*) defaults to nothing
* **style**: string (*primary | info | success | warning | danger | inverse | link*), defaults to nothing
* **text**: string, defaults to nothing
* **type**: string (*button | submit | reset*), defaults to nothing

**Body Contents**: Ignored if attribute "text" is set.

# bs:table #

Renders a table.  

[Bootstrap Docs](http://twitter.github.com/bootstrap/base-css.html#tables "Bootstrap Docs")

### Attributes ###

* **bordered**: boolean, defaults to false - renders border around entire table
* **caption**: string, defaults to nothing - renders caption tag
* **condensed**: boolean, defaults to false - enables condensed spacing
* **cssClass**: string - CSS class added after all standard classnames.
* **hover**: boolean, defaults to false - enables hover effect
* **striped**: boolean, defaults to false - renders alternating color rows

**Body Contents**: Ignored if attribute "text" is set.

# bs:tbody #

Renders a tbody (Table Body).  Works like c:forEach tag, automatically injecting tbody and tr tags.

[Bootstrap Docs](http://twitter.github.com/bootstrap/base-css.html#tables "Bootstrap Docs")

### Attributes ###

* **items**: required, collection
* **var**, required, string

**Body Contents**: The table cells (td tags)