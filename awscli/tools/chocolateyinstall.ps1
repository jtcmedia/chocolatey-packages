$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.103.msi'
$checksum   = '5528d9acb1193cea2de2249e9f26ba1371cae329a2dac361c33432cd5c6e3a01'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.103.msi'
$checksum64 = '264d55003b4a442fcbccec390ec7cb9b791be7ef42cff3237d9d0510a8ca8a44'
 
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
