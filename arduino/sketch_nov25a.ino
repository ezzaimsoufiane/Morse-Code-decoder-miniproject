unsigned long signal_len,t1,t2;   //time for which button is pressed
int inputPin = 2;                 //input pin for push button
int ledPin = 4;                   //outpu pin for LED
String code = "";                 //string in which one alphabet is stored

void setup() {
   Serial.begin(9600);
  pinMode(inputPin, INPUT_PULLUP);
  pinMode(ledPin,OUTPUT);
}

void loop() {

NextDotDash:
  while (digitalRead(inputPin) == HIGH) {}
  t1 = millis();                            //time at button press
  digitalWrite(ledPin, HIGH);               //LED on while button pressed
  while (digitalRead(inputPin) == LOW) {}
  t2 = millis();                            //time at button release
  digitalWrite(ledPin, LOW);                //LED off on button release
  signal_len = t2 - t1;                     //time for which button is pressed
  if (signal_len > 50)                      //to account for switch debouncing
  {
    code += readio();                       //function to read dot or dash
  }
  while ((millis() - t2) < 500)           //if time between button press greater than 0.5sec, skip loop and go to next alphabet
  {     
    if (digitalRead(inputPin) == LOW)
    {
      goto NextDotDash;
    }
  }
  convertor();                          //function to decipher code into alphabet
}

char readio()
{
  if (signal_len < 600 && signal_len > 50)
  {
    return '.';                        //if button press less than 0.6sec, it is a dot
  }
  else if (signal_len > 600)
  {
    return '-';                        //if button press more than 0.6sec, it is a dash
  }
}

void convertor()
{
  static String letters[] = {".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-",
                             ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--..", "E"
                            };
  int i = 0;
  if (code == ".-.-.-")
  {
    Serial.print(".");        //for break
  }
  if (code == "----")
  {
    Serial.println();    
  }
  else
  {
    while (letters[i] != "E")  //loop for comparing input code with letters array
    {
      if (letters[i] == code)
      {
        Serial.print(char('A' + i));
        break;
      }
      i++;
    }
    if (letters[i] == "E")
    {
      Serial.println("");  //if input code doesn't match any letter, error
    }
  }
  code = "";                            //reset code to blank string
}
