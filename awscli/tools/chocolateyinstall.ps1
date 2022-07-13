$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.28.msi'
$checksum   = 'b3a0be0cf2db6529549d36aeff31ecd9ce62a19f3a7215f2860abfcca7b6afa9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.28.msi'
$checksum64 = '6a64d25526b3f2f94c7157afd844a15187d9a066b34e46752cbcbeaaddb5be5a'
 
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
