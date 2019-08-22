$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.223.msi'
$checksum   = 'cc6e4ff0f9bb3a0d09b89d95c5e8df04cb24f6d5d4cfd3d3a9ed6d32ad35a552'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.223.msi'
$checksum64 = 'ec7a45fb6589c73add21fa5897527f26df54056e946e9676752c784d2eb27cc4'
 
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
