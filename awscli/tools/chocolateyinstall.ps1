$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.148.msi'
$checksum   = 'a438ff5960efbd6f8b450cbd9d46ab80a61a77a9cf4f3d6f20aaad3ca5e7d770'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.148.msi'
$checksum64 = '35aca526ba0824fb991d740565c45e6d1c73daceb74958694f0f034752b9e215'
 
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
