{$IFDEF D2DOCKER}library{$ELSE}program{$ENDIF} D2BridgeWebAppLCL;

{$mode delphi}{$H+}

{$IFDEF D2BRIDGE}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  {$IFDEF UNIX}
  cthreads, clocale,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,   
  D2Bridge.ServerControllerBase,
  Prism.SessionBase,
  D2BridgeFormTemplate,	
  template_teste_Session,
  template_testeWebApp,
  {$IFNDEF D2WindowsService}
Unit_D2Bridge_Server_Console in 'Unit_D2Bridge_Server_Console.pas',
{$ENDIF}

  
  unit1
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled := True;
  Application.Initialize;
  TD2BridgeServerConsole.Run
  
end.

