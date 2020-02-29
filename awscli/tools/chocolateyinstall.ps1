$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.11.msi'
$checksum   = 'f60fcec541321900357c2b1a01e2e337e2f77525e7a643fd56f8de8b6404544a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.11.msi'
$checksum64 = 'd2c4c703d418a4677d2ee3397a32f7a72398bb68a9e590d057e0778624e98ebe'
 
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
