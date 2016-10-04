
$ErrorActionPreference = 'Stop';


$packageName= 'fs-uae.install'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://fs-uae.net/stable/2.8.0/fs-uae-suite_2.8.0_windows_x86.exe'
$url64      = 'https://fs-uae.net/stable/2.8.0/fs-uae-suite_2.8.0_windows_x86-64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  
  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'fs-uae*'
  checksum      = 'ba2a6933b93c4e4a823c032bd39675b2'
  checksumType  = 'md5'
  checksum64    = '3ac91884c96098e728fd6c6c4b8bd09d'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs