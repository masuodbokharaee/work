package work

class DateFormatTagLib {
    def dateFormat = { attrs ->
        out << new java.text.SimpleDateFormat(attrs.format)
                .format(attrs.value)
    }
}
