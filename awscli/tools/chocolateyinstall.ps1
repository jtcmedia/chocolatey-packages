$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.242.msi'
$checksum   = '59a6af5c8c91a50f539ca2bf73d15bd47d9dce683ec31de69170d5af88794c17'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.242.msi'
$checksum64 = '10249f916c1e50eecfcd004fa42064323a76e55f2fd0fa552a0bf7e2ec006d6e'
 
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
