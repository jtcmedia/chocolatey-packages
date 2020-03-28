$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.31.msi'
$checksum   = '6a5fe55823b403496fcdf9fabc3a86ca97e443c0d265a5d63863a07e14218af0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.31.msi'
$checksum64 = '61fc9d250a804512ade8ca4ba1cb8bedb0574bdfdc3971a6dcf8d30cde592156'
 
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
