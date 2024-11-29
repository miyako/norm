//%attributes = {}
var $NFC : cs:C1710.norm
$NFC:=cs:C1710.norm.new("NFC")
$norm:=$NFC.norm("e"+Char:C90(0x0301))
ALERT:C41([$norm; ":\r"; "length:"; Length:C16($norm)].join(""))

var $NFD : cs:C1710.norm
$NFD:=cs:C1710.norm.new("NFD")
$norm:=$NFD.norm("é")
ALERT:C41([$norm; ":\r"; "length:"; Length:C16($norm)].join(""))
