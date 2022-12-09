$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.26.msi'
$checksum   = 'f8880b20ed35eb937a4ac0ce0657dd1baf24bf0d2b987f760ab78c6384fd45b6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.26.msi'
$checksum64 = '31a6d887cacedd4cfa5af30fc118a74f78cbc7fe0860180b13174c59e123654c'
 
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
