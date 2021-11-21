/*
	Fat_Lurch - 2021-10-24
	
	This is a simple scenario that illustrates how to turn an LED on an Arduino on and off
	using ARMA com. It will also display a message when data is recieved from the Arduino


*/

addMissionEventHandler ["ExtensionCallback", {
    params ["_name", "_function", "_data"];
    if ((_name isEqualTo "ArmaCOM") && (_function isEqualTo "data_read")) then 
    {
        _currentTime = systemTime;
        _formattedTime = format["%1:%2:%3.%4", _currentTime select 3, _currentTime select 4, _currentTime select 5, _currentTime select 6];
        systemChat (format ["Received message from serial port: %1 - %2", _data, _formattedTime]);
    };
}];

com = "COM13";	//##### change this to your appropriate com port #####

laptop addAction ["List Ports", {systemChat str("Armacom" callExtension "listPorts")}];
laptop addAction ["Connect", {systemChat str("Armacom" callExtension ["connect", [com]])}];
laptop addAction ["LED On", {systemChat str("Armacom" callExtension ["write", [com, "On"]])}];
laptop addAction ["LED Off", {systemChat str("Armacom" callExtension ["write", [com, "Off"]])}];
laptop addAction ["Disconnect", {systemChat str("Armacom" callExtension ["disconnect", [com]])}];


