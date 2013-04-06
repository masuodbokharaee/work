package work

class Customer {
        String name
        String family
        String tel
        String address
        String email
        String namecompany
        String telcompany
        /*Product productneme*/
        String whatuneed


       static hasMany = [product : Product,
                         Pic : Product,
                         wneed : Wneed]
        String toString(){
            "$name, $family"
        }

        static constraints = {
            name(blank: false)
            family()
            tel()
            email()
            address(maxSize : 3000)
            namecompany()
            telcompany()
            product (nullable : true)
            pic(nullable:true)
            wneed (maxSize: 5000)
            whatuneed(maxSize : 5000)



        }
    }