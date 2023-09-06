$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.41.msi'
$checksum   = '0cc6c84642a0fafe19f71c120bf8fed3e616628329f3e75c1e5feca3234d8dcf'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.41.msi'
$checksum64 = 'b3f9f26da543280ba2caf1be2c4599fa2eba04547ea17587c2e816f306a50cbc'
 
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
