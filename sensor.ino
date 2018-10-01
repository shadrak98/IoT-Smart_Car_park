

#include <ESP8266WiFi.h>
#include <WiFiClient.h> 
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>

const char *ssid =  "nishant";     // replace with your wifi ssid and wpa2 key
const char *pass =  "nishant1234";

int trigPin1=D3; //Sensor Trig pin connected to Arduino pin 13
int echoPin1=D4;  //Sensor Echo pin connected to Arduino pin 11
float pingTime1;  //time for ping to travel from sensor to target and return
float targetDistance1; //Distance to Target in inches
float speedOfSound=776.5; //Speed of sound in miles per hour when temp is 77 degrees.


int trigPin2=D5; //Sensor Trig pin connected to Arduino pin 13
int echoPin2=D7;  //Sensor Echo pin connected to Arduino pin 11
float pingTime2;  //time for ping to travel from sensor to target and return
float targetDistance2; //Distance to Target in inches

void setup() {

       delay(100);
       Serial.println("Connecting to ");
       Serial.println(ssid); 
 
       WiFi.begin(ssid, pass); 
       while (WiFi.status() != WL_CONNECTED) 
          {
            delay(500);
            Serial.print(".");
          }
      Serial.println("");
      Serial.println("WiFi connected");

      
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(trigPin1, OUTPUT);
  pinMode(echoPin1, INPUT);

   pinMode(trigPin2, OUTPUT);
  pinMode(echoPin2, INPUT);
}
 
void loop() {
  // put your main code here, to run repeatedly:



    HTTPClient http;    //Declare object of class HTTPClient
 
  String station, postData,B;
  B="filled";
  //int adcvalue=analogRead(A0);  //Read Analog value of LDR
  //ADCData = String(adcvalue);   //String to interger conversion
  String slot = "A"; //user name
 
  //Post Data
  postData = "status=" + B+ "&slot=" + slot ;
  
  http.begin("http://192.168.43.223/parking/postdemo.php");              //Specify request destination
  http.addHeader("Content-Type", "application/x-www-form-urlencoded");    //Specify content-type header
 
  int httpCode = http.POST(postData);   //Send the request
  String payload = http.getString();    //Get the response payload
 
  Serial.println(httpCode);   //Print HTTP return code
  Serial.println(payload);    //Print request response payload
 
  http.end();  //Close connection
  
  delay(5000);  //Post Data at every 5 seconds





















  
  
  digitalWrite(trigPin1, LOW); //Set trigger pin low
  delayMicroseconds(2000); //Let signal settle
  digitalWrite(trigPin1, HIGH); //Set trigPin1 high
  delayMicroseconds(15); //Delay in high state
  digitalWrite(trigPin1, LOW); //ping has now been sent
  delayMicroseconds(10); //Delay in low state


  
  pingTime1 = pulseIn(echoPin1, HIGH);  //pingTime is presented in microceconds
  pingTime1=pingTime1/1000000; //convert pingTime to seconds by dividing by 1000000 (microseconds in a second)
  pingTime1=pingTime1/3600; //convert pingtime to hourse by dividing by 3600 (seconds in an hour)
  targetDistance1= speedOfSound * pingTime1;  //This will be in miles, since speed of sound was miles per hour
  targetDistance1=targetDistance1/2; //Remember ping travels to target and back from target, so you must divide by 2 for actual target distance.
  targetDistance1= targetDistance1*63360;    //Convert miles to inches by multipling by 63360 (inches per mile)
  Serial.println("sensor1");
  Serial.println(targetDistance1);
  
  delay(3000); //delay tenth of a  second to slow things down a little.




  digitalWrite(trigPin2, LOW); //Set trigger pin low
  delayMicroseconds(2000); //Let signal settle
  digitalWrite(trigPin2, HIGH); //Set trigPin1 high
  delayMicroseconds(15); //Delay in high state
  digitalWrite(trigPin2, LOW); //ping has now been sent
  delayMicroseconds(10); //Delay in low state



  pingTime2 = pulseIn(echoPin2, HIGH);  //pingTime is presented in microceconds
  pingTime2=pingTime2/1000000; //convert pingTime to seconds by dividing by 1000000 (microseconds in a second)
  pingTime2=pingTime2/3600; //convert pingtime to hourse by dividing by 3600 (seconds in an hour)
  targetDistance2= speedOfSound * pingTime2;  //This will be in miles, since speed of sound was miles per hour
  targetDistance2=targetDistance2/2; //Remember ping travels to target and back from target, so you must divide by 2 for actual target distance.
  targetDistance2= targetDistance2*160934;    //Convert miles to inches by multipling by 63360 (inches per mile)

  Serial.println("sensor2");
  Serial.println(targetDistance2);
  if(targetDistance2 < 10)
  {
      Serial.println("booked");
  }
  
  delay(3000); //delay tenth of a  second to slow things down a little.
  








  
}
