Table table;
boolean on;
int colMax;

void setup()
{  
  table = loadTable("Culture Generator - Data.csv");
  colMax = table.getColumnCount();
  on = true;
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
  if (on == true)
  {
    String name = randPart(0) + randPart(1);
    String description = randPart(2) + " " + randPart(3) + " " +
      randPart(4) + " " + randPart(5) + " " + randPart(6) + " " +
      randPart (7) + ", " + randPart(8) + " " + randPart(9) + " " +
      randPart(10) + " " + randPart(11) + " " + randPart(12) + " " +
      randPart(13) + " " + randPart(14) + ".";
    print(name, "is", description);
    on = false;
  }
}

String randPart (int row)
{
  TableRow thisRow = table.getRow(row);
  String str = "";
  while (str.equals(""))
  {
    str = thisRow.getString(int(random(colMax)));
  }
  return str;
}