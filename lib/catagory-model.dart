




class Catagory{

 String name;
 String image;
 double price;
 String location;

 Catagory(this.name,this.image,this.price,{this.location='main branch'});

static  List <Catagory>   getCatagory(){

  return [ Catagory('product1','assets/images/1.webp',12.6),
 Catagory('product1','assets/images/1.webp',12.6),
 Catagory('product2','assets/images/2.webp',13.6),
 Catagory('product3','assets/images/3.webp',16.6),
 Catagory('product4','assets/images/4.webp',14.6),
 Catagory('product5','assets/images/5.webp',19.6),
 Catagory('product6','assets/images/6.webp',12.6),
 Catagory('product7','assets/images/7.webp',19.6),
   Catagory('product8','assets/images/8.webp',19.6)
];


 }



}