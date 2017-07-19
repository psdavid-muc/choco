$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://activaid.telgkamp.de/ac''tivAid_dev44.exe' # download url, HTTPS preferred
$file  		= "$toolsDir\activAid.exe"

Get-ChocolateyWebFile -Packagename "activaid" -FileFullPath "$toolsDir\activaid.exe" -Url $url -Checksum "8a6175efd2ecaab6c4d2e1e1b24092b6" -ChecksumType "md5"
Start-ChocolateyProcessAsAdmin -Statements "/S /D=c:\Program Files (x86)" -ExeToRun $file -FileType "EXE" -ValidExitCodes @(0)
