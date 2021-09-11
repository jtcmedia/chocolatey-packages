$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.40.msi'
$checksum   = 'e65924ea8e179602d5f0b7681deab4b339d002a836e999480da9e8cc714fb34c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.40.msi'
$checksum64 = '5285369b5ab6d1f8d4f6734e4b5d5202486b36bf080cf897741eda662e7d038c'
 
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
