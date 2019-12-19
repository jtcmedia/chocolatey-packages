$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.306.msi'
$checksum   = '6f41e320eb31a1125e223fd6292487c770dc682b444b8e7e182c957d3c49a581'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.306.msi'
$checksum64 = 'b8a52ed8bff6e7396ca5a0a6ca727456885ad23e5d36638ebe7a4569da4f3134'
 
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
