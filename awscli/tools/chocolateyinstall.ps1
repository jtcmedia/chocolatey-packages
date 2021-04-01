$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.42.msi'
$checksum   = 'c2517cd4fcdf0098bef7cd30ac21a0c1c6101da956c6c960a9b4303710a7955d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.42.msi'
$checksum64 = 'c3bbce9a6a3e884e39e4d3343a58eb519ce56abd05bc526f2b8888b85937871a'
 
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
