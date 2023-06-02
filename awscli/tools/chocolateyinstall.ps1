$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.145.msi'
$checksum   = '75898d847ef5e7ca4f9618de3752d272fc15e35da1bb914f10625236502bf22c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.145.msi'
$checksum64 = '01bb924d82b22693e8406887a9e93dd841ed0ab18e1bbd5e6ff9586208443d6f'
 
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
