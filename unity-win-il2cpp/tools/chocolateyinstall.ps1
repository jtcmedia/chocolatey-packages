$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5d806317f84/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.20f1.exe'
$checksum64     = '46f70b7606b3018eb046060872b8cb8982818f2f0c33a1aa3970d0c647695e43'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
