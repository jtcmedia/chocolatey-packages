$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.147.msi'
$checksum   = 'cade6de19d6301c2854cd1b9896b0c0bf8e94c32e7031c4296a8e34d95376954'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.147.msi'
$checksum64 = 'c470240d7b1ad2e66fc4a4d6342617471c84eb9a475b242c59d55b9a4b37c8d7'
 
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
