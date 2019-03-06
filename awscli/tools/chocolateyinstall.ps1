$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.118.msi'
$checksum   = '6a4274202c704d57b54e62ed81befc7790682f5ea098e77e6ae420f81c4447b1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.118.msi'
$checksum64 = '5a2adb6b8bb4090226bdd30cf47de0c6d3b95b933ff7bf7c03678208e1b11b23'
 
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
