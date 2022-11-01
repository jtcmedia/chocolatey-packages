$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.26.5.msi'
$checksum   = 'a1ff1163a4510a2de5d999361fba50a6b17515e6257b48e44c286570e75b822a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.26.5.msi'
$checksum64 = 'e47aada62d0cdc4f78b13b490efc6df47dd548b3f0832825c5191b5680e3e2e8'
 
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
