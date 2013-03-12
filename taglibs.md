All attributes are optional unless otherwise stated.

# bs:btn-group #

Renders a button group element (div.btn-group).

[Bootstrap Docs](http://twitter.github.com/bootstrap/components.html#buttonGroups "Bootstrap Docs")

### Attributes ###

*None*

**Body Contents**: Processed normally.

# bs:btn-toolbar #

Renders a button toolbar element (div.btn-toolbar).

[Bootstrap Docs](http://twitter.github.com/bootstrap/components.html#buttonGroups "Bootstrap Docs")

### Attributes ###

* **group**: boolean, defaults to false.  If true, will wrap body in a bs:btn-group element (for toolbars with only one group)

**Body Contents**: Processed normally.

# bs:button #

Renders a button.  

[Bootstrap Docs](http://twitter.github.com/bootstrap/base-css.html#buttons "Bootstrap Docs")

### Attributes ###

* **block**: boolean, defaults to false - renders button as block element
* **cssClass**: string - CSS class added after all standard classnames.
* **href**: string, defaults to nothing.  If present, will render button as an < a > tag.
* **icon**: string, defaults to nothing.  If present, will insert a bs:icon tag to the left of the text, unless changed by iconPos attribute
* **iconPos**: (right | left), defaults to left
* **modal**: string, defaults to nothing.  If present, will render the data-toggle attribute and populat or override the href attribute.
* **name**: string, defaults to nothing.  If present, will render the name attribute
* **size**, (*large | small | mini*) defaults to nothing
* **style**: string (*primary | info | success | warning | danger | inverse | link*), defaults to nothing
* **text**: string, defaults to nothing
* **type**: string (*button | submit | reset*), defaults to nothing
* **value**: string, defaults to nothing.  If present, will render the value attribute

**Body Contents**: Ignored if attribute "text" is set.

# bs:icon #

Renders an icon.  

[Bootstrap Docs](http://twitter.github.com/bootstrap/base-css.html#icons "Bootstrap Docs")

### Attributes ###

* **white**: boolean, defaults to false - renders white icon instead of black
* **cssClass**: string - CSS class added after all standard classnames.
* **type**: string, required (see docs for full list), defaults to nothing

**Body Contents**: Ignored.

# bs:modal #

Renders a modal window.

[Bootstrap Docs](http://twitter.github.com/bootstrap/javascript.html#modals "Bootstrap Docs")

### Attributes ###

* **id**: string, required.  The ID to use for the modal element, should tie into whatever component will invoke it (such as modal attribute of the bs:button tag).
* **cancelText**: string, defaults to "Cancel".  This is the text of the text for the cancel button.
* **headerText**: string, defaults to nothing.  If present, a header will be included in the modal with the specified text.
* **submitText**: string, defaults to "OK".  This is the text of the text for the submit button.

**Body Contents**: Processed normally.

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

**Body Contents**: Processed normally, should contain thead and bs:tbody tags.

# bs:tbody #

Renders a tbody (Table Body).  Works like c:forEach tag, automatically injecting tbody and tr tags.

[Bootstrap Docs](http://twitter.github.com/bootstrap/base-css.html#tables "Bootstrap Docs")

### Attributes ###

* **items**: required, collection
* **var**, required, string

**Body Contents**: The table cells (td tags)

# bs:tr #

Renders a tr (table row).  Note that you do not need to include bs:tr tags in a bs:tbody body, they will automatically be inserted.

[Bootstrap Docs](http://twitter.github.com/bootstrap/base-css.html#tables "Bootstrap Docs")

### Attributes ###

* **cssClass**: string - CSS class added after all standard classnames.
* **type**: string (*success | error | warning | info*), defaults to nothing - row type for coloring

**Body Contents**: Processed normally.