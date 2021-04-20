$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.54.msi'
$checksum   = '086033ba6bfa1efc797e54aa534d1f8872e9ad8ab9adb583fa669f839a528f51'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.54.msi'
$checksum64 = 'ccf3ec47f6fddf89a6edb15723cb46108cfa3ada427c8f2f5b053519ae9f6827'
 
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
