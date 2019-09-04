$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.231.msi'
$checksum   = '6ed17801f83f115da8f58bbd5f83fc216e263efb876426bd6b059aaa7a732b8f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.231.msi'
$checksum64 = '543408e8559b0f01047de55b8be8f77f9e945a3b4d7d15f055b86b6c4d9abe2a'
 
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
