$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.2.msi'
$checksum   = 'c56fb904e1d7f2f6a94cbc9b2d6e2571fe2c41d18f3fc2a116af59d2b5acbefa'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.2.msi'
$checksum64 = 'cd310e8ec5c74e9626cc0f8d028d2b4ce74596c5cb6055e27f8f630d0b06accc'
 
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
