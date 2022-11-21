#define Name "Recipe Mechanic"
#define Publisher "Dennise Catolos"
#define PublisherUrl "https://dentolos19.github.io"
#define AppFiles "Files\*"
#define AppExecutable "RecipeMechanic.exe"

[Setup]
AppId={{053C9F90-2D4E-4150-97FF-5C03D3FB9ABE}
AppName={#Name}
AppVerName={#Name}
AppPublisher={#Publisher}
AppPublisherURL={#PublisherUrl}
WizardStyle=modern
UninstallDisplayIcon={App}\{#AppExecutable}
DefaultDirName={autopf}\{#Name}
DisableProgramGroupPage=yes
Compression=lzma2
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{#AppFiles}"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#Name}"; Filename: "{app}\{#AppExecutable}"
Name: "{autodesktop}\{#Name}"; Filename: "{app}\{#AppExecutable}"

[Run]
Filename: "{app}\{#AppExecutable}"; Description: "{cm:LaunchProgram,{#StringChange(Name, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

