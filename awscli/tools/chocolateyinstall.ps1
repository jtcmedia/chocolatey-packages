$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.119.msi'
$checksum   = 'd17611984bb298dde3a96bbbfbe3172b4353ad6ed6a8e5b39f3743d97ed21cea'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.119.msi'
$checksum64 = 'b4de44a9c2c74b02c239dfc592336b1154e6f6b66a579282ce574f9ff98cf9a9'
 
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
