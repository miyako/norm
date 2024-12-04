Class extends _CLI

property format : Text

Class constructor($format : Text)
	
	Super:C1705("norm"; cs:C1710._norm_Controller)
	
	This:C1470.format:=$format
	
	This:C1470.controller.timeout:=5
	
Function get worker() : 4D:C1709.SystemWorker
	
	return This:C1470.controller.worker
	
Function terminate()
	
	This:C1470.controller.terminate()
	
Function norm($string : Text) : Text
	
	$command:=This:C1470.escape(This:C1470.executablePath)
	$command+=" -format "+This:C1470.quote(This:C1470.format)
	
	This:C1470.controller.execute($command)
	This:C1470.worker.postMessage($string)
	This:C1470.worker.closeInput()
	This:C1470.worker.wait()
	
	return This:C1470.data