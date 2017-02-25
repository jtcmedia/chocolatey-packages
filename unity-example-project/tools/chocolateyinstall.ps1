$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/3829d7f588f3/WindowsExampleProjectInstaller/UnityExampleProjectSetup-5.5.2f1.exe'
$checksum       = '4f01ae31a6a53ee11d6ddbe5c267f4617991f14a7d024b4986e73e303ff90adc'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
