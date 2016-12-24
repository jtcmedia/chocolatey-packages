$ErrorActionPreference = 'Stop';

$packageName= 'zap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/zaproxy/zaproxy/releases/download/2.5.0/ZAP_2.5.0_Windows.exe'
$checksum32 = '4ac72657e88733a77d5686274a72dd62ce35fb196faa7f5775ee998277aa1564'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'OWASP ZAP*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
