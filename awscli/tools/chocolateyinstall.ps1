$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.99.msi'
$checksum   = '1b10cc6dc298faf72439035a169d174b546046224a6654d7a69b3e0f11bc28b5'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.99.msi'
$checksum64 = 'aa34d7788f8633bd8f228aa2375a5a32bcb3b8afaf5f93f51238eeda0b3e1d26'
 
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
