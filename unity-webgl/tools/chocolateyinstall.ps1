$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e0c4e791ab71/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.9f1.exe'
$checksum64     = 'a90bb38e4acf65d92c229704658a2baba46d72802b6948a89ceb6c683e53189d'

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
