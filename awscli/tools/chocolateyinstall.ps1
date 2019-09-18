$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.240.msi'
$checksum   = 'fc4ee6399001c72219492cb23b6d55f94a6e1bc988e060990f4d59206defc55f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.240.msi'
$checksum64 = '55f7b77858224992d0e127ee9966e4a85acd4a6c7383c8d9447e0fc7ba3058d3'
 
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
