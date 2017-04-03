int HePin = 2;

int HeState = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(HePin, INPUT);
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
HeState = digitalRead(HeState);
Serial.print(HeState);
Serial.print("");


}
