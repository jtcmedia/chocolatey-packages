$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.127.msi'
$checksum   = 'd5ef98ed6c77b24f3eb13e7066d0458136732ef8589f8934d793c0948237c708'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.127.msi'
$checksum64 = '6f4625aef176a4f56ce2a25314ffd0f9c6e7aaf08a0fecd594c3e89700059b30'
 
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
