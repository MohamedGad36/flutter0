#define IR_TOE_PIN 7 // Pin connected to the IR sensor at the toes
#define IR_HEEL_PIN 6 // Pin connected to the IR sensor at the heel
#define BUZZER_PIN 12 // Pin connected to the buzzer

int l = 0;
int o = 0;
int y = 0;
unsigned long stepStartTime = 0; // Variable to store the start time of a step
bool isStepInProgress = false; // Flag to indicate if a step is in progress
bool alarm = false; // Flag to indicate if an alarm should be triggered
bool al = false;
unsigned long dur;

void setup() {
  pinMode(IR_TOE_PIN, INPUT);
  pinMode(IR_HEEL_PIN, INPUT);
  pinMode(BUZZER_PIN, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if(o == 0){
    delay(2000);
    o++;
  }
  int toeValue = digitalRead(IR_TOE_PIN);
  int heelValue = digitalRead(IR_HEEL_PIN);


  // Check if the toes are placed first
  if (toeValue == 0 && heelValue == 1)
  {
    while(digitalRead(IR_TOE_PIN) == 0 && digitalRead(IR_HEEL_PIN) == 1)
    {
      l++;
      delay(6);
        if(l > 80){
          digitalWrite(BUZZER_PIN, HIGH);
          al = true;

    } else {
      digitalWrite(BUZZER_PIN, LOW);
    }
    }
    l = 0;
    digitalWrite(BUZZER_PIN, LOW);
  }

  if (al){
    Serial.println("Put your feet on the groound \ncorrectly =>");
    al = false;
  }

  
  if (toeValue == 1 && heelValue == 0) { // Check if the heel is placed first
    alarm = false;
    delay(100);
    // Calculate the duration of the step
    unsigned long stepDuration = millis() - stepStartTime;
    
    // Check if step duration is longer than 1 second
    if ((stepDuration > 200 && stepDuration < 800) || stepDuration > 1300) {

      if(o>=2){
      alarm = true;
      }
      o++;
    }
    
    // Reset step start time and flag
    stepStartTime = 0;
    isStepInProgress = false;
  }


    if (toeValue == 0 && heelValue == 0)
  {
    while(digitalRead(IR_TOE_PIN) == 0 && digitalRead(IR_HEEL_PIN) == 0){
      y++;
      delay(6);
    }

    if (y > 100 && y < 300){
    digitalWrite(BUZZER_PIN, HIGH);
    delay(100); // Adjust the delay based on the desired alarm duration
    digitalWrite(BUZZER_PIN, LOW);
    delay(100);
    Serial.println("Put your feet on the groound \ncorrectly =>");

        }
        if(y > 300){
          o = 0;
        }
        y=0;
  }


  // Trigger alarm if required
  if (alarm) {
    
    Serial.println("your step duration isn't in the \nnormal range, adjust your speed  => ");

    alarm = false;
  } else {
    digitalWrite(BUZZER_PIN, LOW); // Turn off the buzzer
  }


  
  // Start the step timer if a step is not already in progress
  if (!isStepInProgress && (toeValue == 1 || heelValue == 1)) {
    stepStartTime = millis();
    isStepInProgress = true;
    dur = 0;
  }
}
