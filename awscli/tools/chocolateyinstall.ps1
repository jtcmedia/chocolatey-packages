$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.161.msi'
$checksum   = '1e6982e5715e7097cfa2dd3f49419c7b388dedabc82b9cfd3b97dc94f25b9f2d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.161.msi'
$checksum64 = 'd150f8273d567a714cf6b4f95bad9fe20589f2b30c658ae42f7ecf5133ac543f'
 
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
