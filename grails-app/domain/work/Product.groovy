package work

class Product {
    String productname
    String info
    byte[] pic

    String toString(){
        productname
    }

    static constraints = {
        productname(blank: false )
        info(maxSize : 5000)
        pic(nullable:true, maxSize:1000000)

    }
}
