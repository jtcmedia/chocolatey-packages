$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.64.msi'
$checksum   = '31d7d4866f3e605dc2f0c6752dbb8ce01ac6fd493a0376ffd3216c8a953c3af7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.64.msi'
$checksum64 = '3fb2490f8328cf818a807589d492ae0f09cb02ff2e47766559efe9feabd227da'
 
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
