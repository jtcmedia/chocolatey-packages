$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition

$pp = Get-PackageParameters

if (Test-Path 'env:JAVA_HOME') {
  Write-Host "Java installed and JAVA_HOME set to '$env:JAVA_HOME'"
  $java_major_version = (Get-Command java | Select-Object -ExpandProperty Version).Major
  Write-Host "Java major version is: $java_major_version"
  if ( $java_major_version -lt 8 ) {
    Write-Warning "Java Version is less than 8. Pagina EPUB-Checker requires a Java version of 8 or greater."
  }
} else {
  Write-Warning "JAVA_HOME isn't set. Ensure you have a Java 8 (update 91 or newer), 11, 17, 20, or newer installed."
}

if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\EPUB-Checker.lnk" `
    -TargetPath "$env:ChocolateyInstall\bin\EPUB-Checker.exe" `
    -WorkingDirectory "$toolsPath"
}
