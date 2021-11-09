$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.1.msi'
$checksum   = 'd24546b94d33d5d8e7cb499c0f8c7864643f16096bd268cb5ec6e8acbe8ffd40'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.1.msi'
$checksum64 = '815f33b1594adf1b3e2fb981fefc610d7d20729b8cfd1e839d7c9fc0d7457853'
 
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
