$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/03270eb687c6/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.1.4f1.exe'
$checksum64     = 'd6d568b8c79388091580797579e821dcc88496434356f7be5bf55ed89a913520'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
