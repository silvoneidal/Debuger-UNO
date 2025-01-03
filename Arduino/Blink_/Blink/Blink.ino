/*
 Data: 24/12/2024
 Teste: ARDUINO UNO
 Autor: DALÇÓQUIO AUTOMAÇÃO  
 
 Testes:
 1.Entrada digital
 2.Entrada analogica
 3.Saida digital
 4.Saida pwm
 5.Comunicação serial
 6.Debuger.exe
*/

#warning "De um delay apos iniciar a serial para estabilizacao."

// Uso com Debuger.exe criado em Visual Basic

// Use esta strutura em seu sketch para um comando mais simplificado
struct Debug{
  template <typename T>
  void print(byte index, T data){
    Serial.print("#");
    Serial.print(index);
    String str = String(data); // Converte o valor em string
    Serial.println(str);
    delay(50);
  }
  
}debug;

// Use agora: debug.print(index, data);

// Se preferir use este comando direto sem uso da strutura:
// Serial.println("#Index" + Vari�vel); delay(50); // recomendado um delay

void setup() {
  // Inicia serial 
  Serial.begin(9600);
  delay(1000); // aguarda um tempo para estabilização

  // Fim de setup
  Serial.println("End setup");
  
}

void loop() {
  // PinoMicro-PinoHardware/IDE
  
  // Teste entrada digital
  Serial.println(); // pula uma linha
  pinMode(8, INPUT_PULLUP);
  Serial.println("Configurado pino D8 como entrada digital");
  Serial.println("Feche entrada digital pino D8 ao GND");
  while(true){
    if(digitalRead(8) == LOW){
      Serial.println("Entrada digital D8 fechada ao GND");
      break;
    }
  }

  // Teste entrada analogica
  Serial.println(); // pula uma linha
  Serial.print("Leitura do pino A0 como entrada analogica: ");
  Serial.println(analogRead(A0));
  Serial.println("Feche entrada do pino A0 ao GND");
  while(analogRead(A0) >0){
    // Default 10 bits (range 0 a 1024).
    delay(1000);
    debug.print(1, analogRead(A0)); // DEBUG Index 1
  }
  Serial.println("Fechado pino A0 ao GND");
  Serial.print("Leitura do pino A0 como entrada analogica: ");
  Serial.println(analogRead(A0));

  // Teste saida digital ( Led onboard )
  Serial.println(); // pula uma linha
  pinMode(13, OUTPUT);
  Serial.println("Configurado pino D13-OnBoard como saida digital");
  Serial.println("Led onboard ligado ao pino D13 piscara 10 vezes");
  for(int x=10; x>0; x--){
    digitalWrite(13, HIGH);; delay(500); // ligado    
    digitalWrite(13, LOW); delay(500); // desligado
  }
  

  // Teste saida pwm
  Serial.println(); // pula uma linha
  Serial.println("Finalizando testes com fade no pino D9 como saida pwm");
  while(true){
    // Default 8 bits default (range 0 a 255).
    for (int fadeValue = 0 ; fadeValue <= 255; fadeValue += 10) {
      analogWrite(9, fadeValue);
      debug.print(2, fadeValue); // DEBUG Index 2
    }
    // Default 12 bits default (range 0 a 255).
    for (int fadeValue = 255 ; fadeValue >= 0; fadeValue -= 10) {
      analogWrite(6, fadeValue);
      debug.print(2, fadeValue); // DEBUG Index 2
    }  
  }
  
}
