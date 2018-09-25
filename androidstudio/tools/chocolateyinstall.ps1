$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.google.com/dl/android/studio/install/3.2.0.26/android-studio-ide-181.5014246-windows.exe'
$checksum64 = '978673a7babf51a9dca67729213c178995c1039a496dc1dfccb4c095b842c753'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'Android Studio*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0, 1223)
}

$pp = Get-PackageParameters

Install-ChocolateyPackage @packageArgs

if ($pp.PinnedToTaskbar) { 
    Write-Host "Param: PinToTaskbar - Pinning Android Studio to Taskbar..."
    Install-ChocolateyPinnedTaskBarItem -TargetFilePath "${env:ProgramFiles}\Android\Android Studio\bin\studio64.exe"
}

if ($pp.AddToDesktop) { 
    Write-Host "Param: AddToDesktop - Adding Android Studio Shortcut to Desktop..."
    
    $desktopPath = [Environment]::GetFolderPath("Desktop")

    Install-ChocolateyShortcut `
        -ShortcutFilePath "$desktopPath\Android Studio.lnk" `
        -TargetPath "${env:ProgramFiles}\Android\Android Studio\bin\studio64.exe"
}
