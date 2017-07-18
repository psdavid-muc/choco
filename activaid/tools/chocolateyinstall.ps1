$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://activaid.telgkamp.de/ac''tivAid_dev44.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'activaid*'

  checksum      = '8a6175efd2ecaab6c4d2e1e1b24092b6'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512

  silentArgs   = '/S /D=%programfiles(x86)%\activAid'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs