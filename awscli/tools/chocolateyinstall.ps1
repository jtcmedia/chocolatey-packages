$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.43.msi'
$checksum   = '366340d49432ee61c6b66946f71f0ade35d5c05406999fe8af6f24c7c70eec13'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.43.msi'
$checksum64 = 'ea40f80ecddb8a75c8009fa1b0ac0ac919e16cfe58cdcfaa8b94ad568259b495'
 
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
