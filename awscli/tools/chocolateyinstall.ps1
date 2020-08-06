$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.113.msi'
$checksum   = '81d51f07bf2e7fcc0f363f785a13d46fd44cce7c2bed7dac41562002395c0f24'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.113.msi'
$checksum64 = 'd797614a95a9325844fe1a5d0da87e0fd802748a14b6e2604e26f0b682f1359a'
 
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
