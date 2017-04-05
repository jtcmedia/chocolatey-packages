$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/497a0f351392/WindowsExampleProjectInstaller/UnityExampleProjectSetup-5.6.0f3.exe'
$checksum       = '68cd3cc309c1db91838fe92771f1c14533ffb393f5ec01bec53a953ece92a840'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
