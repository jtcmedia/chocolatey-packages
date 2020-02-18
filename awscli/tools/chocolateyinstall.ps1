$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.1.msi'
$checksum   = 'b0ae6f2913bd8c8ba725538adcf53d3ad30e1b341d51193f74a8c616a8a27de1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.1.msi'
$checksum64 = '2ec3714b0ef9799dfaa6c42f3806f91b8a53fcf8095fd56dba7c487bdfd9bf1c'
 
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
