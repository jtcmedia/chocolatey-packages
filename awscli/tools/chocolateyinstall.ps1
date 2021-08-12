$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.19.msi'
$checksum   = '5d3e2d38a6b288609b426d8119a2336911c076eb8939f864e3dbfbd8ea1e3273'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.19.msi'
$checksum64 = 'dc3ad4c66d5bcaaf875d0af3ced3f94c4923c646a055aded1031dafc67a72f92'
 
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
