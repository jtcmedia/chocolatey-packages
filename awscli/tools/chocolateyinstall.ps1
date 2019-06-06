$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.172.msi'
$checksum   = '63dc42b2b6e8f8a8f54ef5b45d6bf496bd1d3e47d1beff24af8705eff2d75f16'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.172.msi'
$checksum64 = 'e967bd7b2dd87aa5250063ef169abfe98e11b69bb8e41c756fb592875f84a4e4'
 
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
