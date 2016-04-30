
$ErrorActionPreference = 'Stop';


$packageName= 'fs-uae.install'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://fs-uae.net/stable/2.6.2/fs-uae-suite_2.6.2_windows.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'fs-uae*'
  checksum      = '7d2b113108fa2b2c0898e7fc84733b5b'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs