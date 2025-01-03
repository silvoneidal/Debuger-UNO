/*
  Data: 23/12/2024
  Autor: DALÇÓQUIO AUTOMAÇÃO
  Exemplo: Leitura dos valores de variáveis com App Debuger em Visual Basic
 
*/

// Variáveis para testes...
bool boolVar = false; // index 1
int intVar = 0; // index 2
float floatVar = 0.0; // index 3
char charVar = 'A'; // index 4
String strVar = "Hello Word"; // index 5

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
// Serial.println("#Index" + Variável); delay(50); // recomendado um delay 

void setup() {
  Serial.begin(9600);

  while(!Serial) {
        ; // aguarda conexão serial
  }
    
  debug.print(5, strVar);
  
  debug.print(4, charVar);

  debug.print(6, "Fim setup");
  
}

void loop() {

  intVar++;
  debug.print(2,intVar);
  
  floatVar += 0.1;
  debug.print(3, floatVar);
  
  boolVar = !boolVar;
  debug.print(1, boolVar);
  
  delay(1000); // aguarda um tempo
             
  
}
