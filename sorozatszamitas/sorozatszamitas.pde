void setup(){
  // létrehozunk egy tömböt, amiben öt, videóban is látható autó van csak
  // ha mind a 32 autóra ki szeretnéd próbálni, akkor a getCarCards() függvényt hívd meg a getExampleCards() helyett 
  CarCard[] cars = CarCardGenerator.getExampleCards();
  int carCount = cars.length; 
  println(carCount + " autó van a tömbben!");
  
  // ebben a változóban tároljuk az összeget
  int osszeg = 0;
  
  for(int i = 0; i < carCount; i++){
    // kiíratjuk a tömbben lévő autókat hogy lássuk, mivel dolgozunk
    cars[i].printFullName();
    osszeg += cars[i].performance;
  }
  
  println(osszeg + " LE az autók teljesítményének összege.");
  
  println("\n************************\n");
  
  double atlag = 0;
  for(int i = 0; i < carCount; i++){
    atlag += cars[i].averageConsumption;
  }
  atlag /= carCount;
  println(atlag + " l/100 km az autók fogyasztásának átlaga.");
}