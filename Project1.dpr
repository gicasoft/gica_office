program Project1;

uses
  Vcl.Forms,
  mainw in 'mainw.pas' {mainform},
  dmwin in 'dmwin.pas' {dm: TDataModule},
  prop_impw in 'prop_impw.pas' {prop_impForm},
  utility in 'utility.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmainform, mainform);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tprop_impForm, prop_impForm);
  Application.Run;
end.
