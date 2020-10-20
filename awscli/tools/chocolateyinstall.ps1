$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.160.msi'
$checksum   = '8d11657014ea7286e3c5aa0cd5c556589344472c206a5612b151229fb28b9dcb'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.160.msi'
$checksum64 = '7ab235881c5ba9ef40ce92bdddab1f239cd8d43fd5b77cc5fe74a692fc86833c'
 
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
