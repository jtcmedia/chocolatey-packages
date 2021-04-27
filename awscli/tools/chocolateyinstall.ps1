$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.58.msi'
$checksum   = '443ff58e375c8858f07a63f0c48bd7bb9cf539d52de3085db744d251baee4372'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.58.msi'
$checksum64 = 'e1be1fc1048b4be66cd9b5bf892a9cb95afbe2a37a01b677c3026a4dc7c9e7ef'
 
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
