$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.24.msi'
$checksum   = '8b51498f84216ab37ec6ddbcfec2fb1f53ba7ddf2aaa117fbd3b037dadae9f63'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.24.msi'
$checksum64 = '023a2595709e51778c66d98f19f809d5bdaaa7181255d332ab235e4c2267cf75'
 
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
