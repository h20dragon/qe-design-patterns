
class Bird   {
  public void speak() {
    System.out.println("The Bird says something.");
  }
}

class Crow extends Bird {
  public void speak() {
    System.out.println("Caw caw caw");
  }
}

class Duck extends Bird {
  public void speak() {
    System.out.println("Quack quack");
  }
  
  public boolean lovesSwimming() { return true; }
}

class Chick extends Duck {
   public void speak() {
       System.out.println("Chirp chirp.");
   }
}


class PolyEx {
  public static void main(String[] args) {
    Bird myBird = new Bird();
    Bird myCrow = new Crow();
    Bird myDuck = new Duck();
    Bird chick  = new Chick();

    myBird.speak();
    myCrow.speak();
    myDuck.speak();
    chick.speak();
  }
}
