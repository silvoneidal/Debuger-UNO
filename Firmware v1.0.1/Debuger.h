
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