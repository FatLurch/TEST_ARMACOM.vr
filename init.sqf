/*
	Fat_Lurch - 2021-10-24
	
	This is a simple scenario that illustrates hoiw to turn an LED on an Arduino on and off
	using ARMA com.


*/

com = "COM3";	//change this to your appropriate com port

laptop addAction ["List Ports", {systemChat str("Armacom" callExtension "listPorts")}];
laptop addAction ["Connect", {systemChat str("Armacom" callExtension ["connect", [com]])}];
laptop addAction ["LED On", {systemChat str("Armacom" callExtension ["write", [com, "On"]])}];
laptop addAction ["LED Off", {systemChat str("Armacom" callExtension ["write", [com, "Off"]])}];
laptop addAction ["Disconnect", {systemChat str("Armacom" callExtension ["disconnect", [com]])}];


