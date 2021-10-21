$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.21.0.msi'
$checksum   = '52d0eee8c1199ddc00697515fabb28190e6cb6f82dfd0e17ec9511fd7d513ef4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.21.0.msi'
$checksum64 = '4941b18cd7ed0c8e636ac19e3f54865362317b331248a70a490f736d8b1190b3'
 
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
