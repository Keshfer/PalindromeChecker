public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String editStr = new String();
  char letterCheck;
  for(int i = 0; i < word.length(); i++) {
    letterCheck=word.charAt(i);
    if(Character.isLetter(letterCheck)) {
      editStr = editStr + String.valueOf(letterCheck);
      
    }
  }
  editStr = editStr.toLowerCase();
  System.out.println("from palindrome "+editStr);
  if(editStr.equals(reverse(word))) {
   return true; 
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    char letterCheck;
    for(int i = str.length() - 1; i >= 0; i--) {
      letterCheck = str.charAt(i);
     if(Character.isLetter(letterCheck)) {
       sNew= sNew + String.valueOf(letterCheck);
     }
    }
    sNew = sNew.toLowerCase();
    System.out.println("from reverse "+sNew);
    //your code here
    return sNew;
}
