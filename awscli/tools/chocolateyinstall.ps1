$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.5.msi'
$checksum   = 'c5459e082b294cdec5cab71b88108e4dd266507d375fc1c3429c28ad3a1fe50e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.5.msi'
$checksum64 = '0d314aaf11d4c6e57f43e1c52d4c218751b9baec61bd73e7b9804f07c7da6bd5'
 
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
