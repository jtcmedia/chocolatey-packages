$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.77.msi'
$checksum   = 'aeeccd18e4bc48f45d28597a21dc1d14a86284953a46818c15448c1d3c0bdf11'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.77.msi'
$checksum64 = 'e27dc67d61959536539823936bfa41e907c223cf6b73a0a24a15cdd8c0723b92'
 
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
