package work

class CheckBoxListTagLib {

    def checkBoxList = {attrs, body ->
        def from = attrs.from
        def value = attrs.value
        def cname = attrs.name
        def isChecked, ht, wd, style, html


        style = "style='"
        if(attrs.height)
            style += "height:${attrs.height};"
        if(attrs.width)
            style += "width:${attrs.width};"

        if (style.length() == "style='".length())
            style = ""
        else
            style += "'"

        html = "<ul class='CheckBoxList'" + style +  ">"

        out << html

        from.each { obj ->

            // if we wanted to select the checkbox using a click anywhere on the label (also hover effect)
            // but grails does not recognize index suffix in the name as an array:
            //      cname = "${attrs.name}[${idx++}]"
            //      and put this inside the li: <label for='$cname'>...</label>

            isChecked = (value?.contains(obj."${attrs.optionKey}"))? true: false

            out << "<li>" <<
                    checkBox(name:cname, value:obj."${attrs.optionKey}", checked: isChecked )<<

                    "${obj}" << "</li>"

        }

        out << "</ul>"

    }

}
