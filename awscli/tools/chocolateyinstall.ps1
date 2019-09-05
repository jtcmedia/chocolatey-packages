$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.232.msi'
$checksum   = '827d8a713cd0d8ba2bed91c8e963347b0de590c3c83f5b104ebb6515e53dd748'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.232.msi'
$checksum64 = 'a227dcacb04b5d00ec80f34c56195890674660081a7f857f3da955bd3e3b4e59'
 
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
