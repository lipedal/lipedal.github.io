String[][] textParts =
  {
  // Name Part 1
  {
    "Vo", 
    "Bro", 
    "Ma", 
    "Sil", 
    "Span", 
    "Tor", 
    "Grem", 
    "Van", 
    "Dough", 
    "Lo", 
    "Ray", 
    "Wring", 
    "Pran", 
    "Plun", 
    "Win", 
    "Tran", 
    "Gra", 
    "Chan", 
    "Mastur",
    "Fra",
    "Kil",
    "Yak",
    "Pay"
  }, 
  // Name Part 2
  {
    "guing", 
    "ting", 
    "ning", 
    "nation", 
    "vation", 
    "king", 
    "cing", 
    "bation"
  }, 
  // Where does it belong to?
  {
    "a guetto", 
    "a suburban", 
    "an urban", 
    "a metropolitan", 
    "a rural", 
    "a postmodern", 
    "a retro", 
    "an LGBT", 
    "an anarchistic", 
    "an elitist", 
    "an intellectual", 
    "a futurist", 
    "an underground", 
    "a tribal"
  }, 
  // What is it again?
  {
    "culture", 
    "activity", 
    "practice", 
    "sport", 
    "art form", 
    "movement", 
    "type of party", 
    "dance"
  }, 
  // Synonyms for "Based in"
  {
    "based in", 
    "based on", 
    "drawn from", 
    "inspired by"
  }, 
  // Inspiration adjective
  {
    "an early", 
    "an old", 
    "a late-century", 
    "a classic", 
    "a popular"
  }, 
  // Inspiration locale
  {
    "African", 
    "Eastern European", 
    "Brazilian", 
    "Asian", 
    "American", 
    "Dutch", 
    "German", 
    "internet", 
    "nightclub", 
    "street", 
    "Russian", 
    "Egyptian", 
    "Polynesian"
  }, 
  // Inspiration subject
  {
    "custom", 
    "celebration", 
    "painter's work", 
    "tradition", 
    "architect's work", 
    "dancer's performances", 
    "activist's life", 
    "folk story", 
    "fairy tale", 
    "proverb", 
    "artist's pieces"
  }, 
  // Synonyms for "In which"
  {
    "in which", 
  }, 
  // Who?
  {
    "people", 
    "participant's pets", 
    "participants", 
    "performers", 
    "the community", 
    "families", 
    "kids", 
    "citizens", 
    "housewives"
  }, 
  // Synonyms for "Engage in"
  {
    "engage in", 
    "take part in", 
    "get involved in", 
    "participate in", 
    "carry out", 
    "practice"
  }, 
  // Activity adjective
  {
    "increasingly weird", 
    "bizarre", 
    "sensual", 
    "energetic", 
    "fast-paced", 
    "beautiful", 
    "compassionate", 
    "highly stylized", 
    "exaggerated", 
    "grotesque", 
    "exquisite", 
    "dramatic", 
    "hollywood-esque", 
    "high fashion", 
    "electrifying", 
    "thrilling", 
    "serene"
  }, 
  // Actual activity
  {
    "court proceedings", 
    "body performances", 
    "theatric presentations", 
    "graffitti marathons", 
    "dance competitions", 
    "coreographies", 
    "dance presentations", 
    "dance moves", 
    "beat music", 
    "simulations of fighting", 
    "fights to the death", 
    "movie-shooting", 
    "poetry showdowns", 
    "consumerist actions", 
    "body-shaking acts", 
    "simulations of torture", 
    "beatboxing", 
    "humming", 
    "candy-eating", 
    "grocery-shopping",
    "alien impersonations",
    "demonstrations of paranoia",
    "confessions of fake crimes",
    "suicide attempts",
    "acts of creation",
    "gardening procedures",
    "meal courses",
    "online courses",
    "death-defying acrobacies",
    "speeches",
    "verbal exchanges"
  }, 
  // Synonyms for "As a way of"
  {
    "as a way of", 
    "with the intention of"
  }, 
  // Motivation
  {
    "showing dominance over their opponents", 
    "manifesting political views", 
    "proving they're worthy", 
    "reinforcing their cultural identity", 
    "seeking for inner peace", 
    "manifesting their power", 
    "channeling their chi", 
    "trying to take down the system", 
    "remembering their ancestors", 
    "shocking the modern society", 
    "empowering their leaders", 
    "paying tribute to the dead", 
    "proving their might",
    "criticizing political correctedness",
    "finding a mate",
    "calling attention to their problems",
    "provoking social outrage",
    "inducing mass hysteria",
    "nurturing their offspring",
    "tending to their loved ones",
    "asking for divine mercy",
    "finding what unites us all",
    "turning humankind obsolete",
    "fighting for equality",
    "protesting over climate change",
    "spending the weekends",
    "getting the neighborhood together",
    "stopping technological advancement",
    "proving the theory of evolution",
    "preaching on creationism",
    "making money",
    "retaining their youth",
    "protesting against violence",
    "resisting globalization"
  }
};

String name;
String description;

void setup()
{
  size(600, 400);
  background(0);
  strokeWeight(2);
  stroke(255);
  name = generateName();
  description = generateDescription();
  //println(name, "is", description);
}

void draw()
{
  background(#ffcc00);
  fill(0, 0, 0);
  textAlign(CENTER);
  textSize(20);
  text(name, width/2 - 8, (height/5)*2 - 20);
  textAlign(LEFT);
  textSize(14);
  text(name + " is " + description, width/4, (height/5)*2, width/2, height/2);
}

void mouseClicked()
{
  name = generateName();
  description = generateDescription();
}

String generateName()
{
  return randPart(0) + randPart(1);
}

String generateDescription()
{
  return randPart(2) + " " + randPart(3) + " " +
    randPart(4) + " " + randPart(5) + " " + randPart(6) + " " +
    randPart (7) + ", " + randPart(8) + " " + randPart(9) + " " +
    randPart(10) + " " + randPart(11) + " " + randPart(12) + " " +
    randPart(13) + " " + randPart(14) + ".";
}

String randPart (int column)
{
  int row = int(random(textParts[column].length));
  String str = textParts[column][row];  
  return str;
}
