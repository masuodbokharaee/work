package work

class Wneed {
    Customer name
    Product productname
    String wuneed

    static constraints = {
        name()
        productname ()
        wuneed (nullable: true ,maxSize: 1000)
    }
}
