$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.136.msi'
$checksum   = '55d7dd427419f04b30c9fb7ba222236a5c86134c477043b2b445c3b1485f5531'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.136.msi'
$checksum64 = 'b01a48d3b72826c642e09c92d41f26cf2bb2f0588f1bdc47693e94b32ede2213'
 
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
