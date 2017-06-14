String[][] textParts =
  {
  // Name Part 1
  {
    "Vapor",
    "Ghost",
    "Trip",
    "Tropic",
    "South",
    "North",
    "Ski",
    "Dub",
    "Deep",
    "Grind",
    "Rag",
    "Dance",
    "Chip",
    "Electric",
    "Hard",
    "Future",
    "Soft",
    "Hypno",
    "Sky",
    "Reggae",
    "Trop",
    "Prog",
    "Trek",
    "Dead"
  }, 
  // Name Part 2
  {
    "house",
    "wave",
    "beat",
    "trap",
    "step",
    "hall",
    "pop",
    "funk",
    "cry",
    "funk",
    "stock",
    "trance",
    "prank",
    "lance",
    "tron",
    "ton"
  }, 
  // General adjective
  {
    "a low-fi",
    "a pop",
    "a suburban",
    "a ghetto",
    "an urban",
    "a popular",
    "a secret",
    "a small",
    "a niched",
    "an elevator"
  }, 
  // Synonyms for "Music genre"
  {
    "music genre",
    "genre of music",
    "music movement"
  }, 
  // Synonyms for "That started in"
  {
    "that emerged in",
    "that originated in",
    "that started in",
    "with origins in"
  }, 
  // Origin
  {
    "London",
    "Rio",
    "New York",
    "South Africa",
    "Russia",
    "Ukraine",
    "Poland",
    "Dublin",
    "East Berlin",
    "Berlin",
    "Mexico",
    "Tokyo",
    "Australia",
    "Paris"
  }, 
  // Details on timing
  {
    "in the early",
    "amidst the",
    "in the late",
    "during the",
    "in the first years of the"
  }, 
  // Decade or event when it started
  {
    "60's",
    "70's",
    "80's",
    "90's",
    "2000's",
    "Cold War",
    "Internet Age"
  }, 
  // Synonyms for "It's characterized by"
  {
    "It's characterized by",
    "It mainly features",
    "Its main features are",
    "Its core characteristics are",
    "It's notorious for its"
  }, 
  // Adjective 1, regarding style
  {
    "aggressive",
    "political",
    "feminist",
    "pacifist",
    "calming",
    "toxic",
    "violent",
    "offensive",
    "fast-paced",
    "soothing",
    "nostalgic",
    "intellectual",
    "nonsense",
    "monotone",
    "riotous",
    "high-pitched",
    "cyberpunk",
    "steampunk",
    "sci-fi",
    "surrealist",
    "consumerist",
    "teenage",
    "dark",
    "uplifting",
    "gritty"
  }, 
  // Intrument 1: Rhymes, lyrics, theme
  {
    "rhymes",
    "lyrics",
    "prose",
    "samples",
    "themes",
    "poetry",
    "vocals"
  }, 
  // 
  {
    "and",
    "accompanied by",
    "along with",
    "followed by",
    "mixed with"
  }, 
  // Adjective 2, regarding technique
  {
    "syncopated",
    "jagged",
    "glitched",
    "harmonic",
    "explosive",
    "frantic",
    "remixed",
    "progressive",
    "chopped",
    "pumped",
    "rapid"
  }, 
  // Instrument 2: Beats, percussion, chiptunes
  {
    "break-beats",
    "beats",
    "melodies",
    "percussion",
    "pianos",
    "guitars",
    "harpsichord",
    "theremin",
    "brass",
    "sax",
    "chiptunes",
    "synths"
  }, 
  // How did it get mainstream?
  {
    "The most popular piece so far is",
    "The genre briefly caught the media's attention with the",
    "The genre first reached the mainstream due to"
  }, 
  // Year it went mainstream
  {
    "2006",
    "2007",
    "2008",
    "2009",
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016"
  }, 
  // Which piece made it mainstream?
  {
    "hit",
    "album",
    "song",
    "music",
    "single",
    "disc"
  }, 
  // Mainstream piece name part 1
  {
    "Deep",
    "Solar",
    "Great",
    "Sexual",
    "Sensual",
    "Better",
    "Faster",
    "Strong",
    "Chimichanga",
    "Galactic",
    "Incredible",
    "Amazing",
    "Addictive",
    "Stoned",
    "Crazy",
    "Mad",
    "Pop",
    "Hot",
    "Patriotic",
    "East Coast",
    "Beach"
  },
  // Mainstream piece name part 2
  {
    "Link",
    "Love",
    "Expectations",
    "Seduction",
    "Nights",
    "Shot",
    "Capital",
    "Anthem",
    "Hobo",
    "Diva",
    "Cosmonaut"
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
    randPart(7) + ". " + randPart(8) + " " + randPart(9) + " " +
    randPart(10) + " " + randPart(11) + " " + randPart(12) + " " +
    randPart(13) + ". " + randPart(14) + " " + randPart(15) + " " +
    randPart(16) + " " + randPart(17) + " " + randPart(18) + ".";
}

String randPart (int column)
{
  int row = int(random(textParts[column].length));
  String str = textParts[column][row];  
  return str;
}
