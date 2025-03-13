![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)
[![license](https://img.shields.io/github/license/miyako/norm)](LICENSE)
![downloads](https://img.shields.io/github/downloads/miyako/norm/total)

# norm

## dependencies.json

 ```json
{
    "dependencies": {
        "norm": {
            "github": "miyako/norm",
            "version": "latest"
        }
    }
}
```

```4d
var $NFC : cs.norm.norm
$NFC:=cs.norm.norm.new("NFC")
$norm:=$NFC.norm("e"+Char(0x0301))
ALERT([$norm; ":\r"; "length:"; Length($norm)].join(""))

var $NFD : cs.norm.norm
$NFD:=cs.norm.norm.new("NFD")
$norm:=$NFD.norm("é")
ALERT([$norm; ":\r"; "length:"; Length($norm)].join(""))
```

the [CLI](https://github.com/miyako/go-norm) is written in Go.
