; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Mod Manager"
#define MyAppVersion "1.0"
#define MyAppPublisher "Matux"
#define MyAppURL "https://matux.fr"
#define MyAppExeName "ModManager.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C4E379FE-EE2C-4116-A93E-FE263907B1D0}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=ModManagerInstaller
SetupIconFile=D:\visualstudio\ModManager\among-us-blue.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\visualstudio\ModManager\ModManager\bin\Debug\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\visualstudio\ModManager\ModManager\bin\Debug\AutoUpdater.NET.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\visualstudio\ModManager\ModManager\bin\Debug\AutoUpdater.NET.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\visualstudio\ModManager\ModManager\bin\Debug\AutoUpdater.NET.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\visualstudio\ModManager\ModManager\bin\Debug\ModManager.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\visualstudio\ModManager\ModManager\bin\Debug\ModManager.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\visualstudio\ModManager\ModManager\bin\Debug\Resources"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\visualstudio\ModManager\ModManager\bin\Debug\modlist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

