$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.23.6.msi'
$checksum   = 'e20215fdcaa51c5780e3ca1059e47ddea59dd00fe819ff8c666a143a1516a03d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.23.6.msi'
$checksum64 = 'a5b6847a6379167950c7fadd1327a06f4a44d558d9c044adaa3b5a7ee95db6a0'
 
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
