$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.22.msi'
$checksum   = '2f4da844f87f1d79ba6524923243e3b540c8e6e8257d6803d48cdfb0b1a5f971'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.22.msi'
$checksum64 = '40872a1fbab6dda18f169fdca2fe3bef3b2ac8160fa3215670ad5c7051e61f2a'
 
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
