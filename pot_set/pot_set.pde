#define BLU 9
#define RED 10
#define GRN 11

int val;

void setup(){
  pinMode(RED, OUTPUT);
  pinMode(BLU, OUTPUT);
  pinMode(GRN, OUTPUT);
  Serial.begin(9600);
  analogWrite(RED, 1023);
  analogWrite(GRN, 1023);
  analogWrite(BLU, 1023);  
}

void loop(){

  val = analogRead(0);
  
  if (val < 342) {
    analogWrite(RED, val * 3 / 4);
    analogWrite(GRN, (1023 - val) * 3 / 4);
    analogWrite(BLU, 255);
  } else {
    if (val < 683) {
      analogWrite(RED, 255);
      analogWrite(GRN, val * 3 / 4);
      analogWrite(BLU, (1023 - val) * 3 / 4);
    } else {
      analogWrite(RED, (1023 - val) * 3 / 4);
      analogWrite(GRN, 255);
      analogWrite(BLU, val * 3 / 4);
    }
  }  
}
