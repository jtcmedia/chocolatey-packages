$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.94.msi'
$checksum   = '5f58d76ca6f67bced06b5a30b2f3cf7a0e5658ba33ef8f98912a1b73ea877e12'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.94.msi'
$checksum64 = '4ea774a19bb2e4ccbf2be93181a1de2ce3fafe5ebcd695e58483df921474ef5c'
 
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
