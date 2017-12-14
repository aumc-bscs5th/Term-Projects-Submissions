int ledPin=1;
void setup() 
{
  // put your setup code here, to run once:

  pinMode(ledPin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(ledPin, LOW);
digitalWrite(ledPin, HIGH);
  delay(2000);
  digitalWrite(ledPin, qs);
  delay(2000);
}
