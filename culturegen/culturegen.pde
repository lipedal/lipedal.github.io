void setup()
{  
  size(300, 300);
  background(0);
  strokeWeight(2);
  stroke(255);
}

void draw()
{
  background(0);
  fill(255, 0, 0);
  rect(150, 150, 50, 50);
  //String name = randPart(0) + randPart(1);
  //String description = randPart(2) + " " + randPart(3) + " " +
  //  randPart(4) + " " + randPart(5) + " " + randPart(6) + " " +
  //  randPart (7) + ", " + randPart(8) + " " + randPart(9) + " " +
  //  randPart(10) + " " + randPart(11) + " " + randPart(12) + " " +
  //  randPart(13) + " " + randPart(14) + ".";
  //print(name, "is", description);
}

String randPart (int row)
{
  String str = "";
  while (str.equals(""))
  {
    str = "_"; //thisRow.getString(int(random(colMax)));
  }
  return str;
}