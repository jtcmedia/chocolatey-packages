$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.115.msi'
$checksum   = '1e4ceab6c223a3916ac38740fdd7fdcc57f567c53c503987f600df2a9d32df4d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.115.msi'
$checksum64 = '1532fd8dcdcd569e3789706bef7b5b08b808d9b2caaa5234d8ebb25150b805ac'
 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'AWS Command Line Interface*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
