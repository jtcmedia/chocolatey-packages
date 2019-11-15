$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.282.msi'
$checksum   = '8df7614cf1cdcc33201df345d139b9ca30009ff4a96f99417fc4ea5eb2574e41'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.282.msi'
$checksum64 = '5f88fc6d943cd70974d7c8ff8b2e12ae4d549e854ca92cab260cc7625fa7f06a'
 
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
