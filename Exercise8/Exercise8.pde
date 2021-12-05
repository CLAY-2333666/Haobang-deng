void setup() {
  size(300, 350);
  loadData();
}


void loadData() {
  String url = "https://www.imdb.com/title/tt2872750/";
  String[] lines = loadStrings(url);
  // Get rid of the array in order to search the whole page
  String html = join(lines, " ");
  
  // Searching for running time
  String start = "<span class=\"AggregateRatingButton__RatingScore-sc-1ll29m0-1 iTLWoV\">";
  
  String end = "</span>";
  String runningtime = giveMeTextBetween(html, start, end);
  println(runningtime);
  start = "<h1 class=\"TitleHeader\">";
  end = "</h1>";
  String free = giveMeTextBetween(html, start, end);
  println(free);
}
String giveMeTextBetween(String s, String before, String after) {

  // This function returns a substring between two substrings (before and after).
  //  If it can’t find anything it returns an empty string.
  String found = "";

  // Find the index of before
  int start = s.indexOf(before);
  if (start == -1) {
    return "";
  }

  // Move to the end of the beginning tag
  // and find the index of the "after" String
  start += before.length();
  int end = s.indexOf(after, start);
  if (end == -1) {
    return "";
  }

  // Return the text in between
  return s.substring(start, end);
}
