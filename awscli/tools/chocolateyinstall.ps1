$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.120.msi'
$checksum   = 'ab6283f6b9e1cbafd01cc0a01926c713a1fbb3e1f095cd5f2623556eca82617d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.120.msi'
$checksum64 = '5984769b8c1c7f80de5edecd52b50ce72f718360e3b8f85b483e2aeab4dd7b6f'
 
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
