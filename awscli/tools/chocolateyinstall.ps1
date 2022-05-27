$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.24.9.msi'
$checksum   = '31d88f6be361faa3272b11d29337b3a5ea58bacddef00dc07e26b2c73248b944'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.24.9.msi'
$checksum64 = 'b0bf5d40b580b54d0dcce7a22b7a66dcefa784b2f805c5ee1186dd04bced536f'
 
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
