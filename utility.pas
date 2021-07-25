unit Utility;

interface
uses
   SysUtils,ComCtrls, ToolWin, Db,
    {DBOneFile,}Forms,Dialogs, Windows, Messages, Classes, Graphics, Controls,
  Buttons, ExtCtrls, StdCtrls;

function ApriForm(FormClass: TFormClass; var Form):TModalResult;


implementation

//uses main,importexportformwin,dmwin;
//----------------------------------------------

//-----------------------------------------------------











function ApriForm(FormClass: TFormClass; var Form):TModalResult;
begin
    try
      Application.CreateForm(FormClass, Form);
      //TForm(form).Left:=0;
      //TForm(form).top:=0;
      Result:=TForm(Form).ShowModal;
    finally
      TForm(Form).Free;
      TForm(Form) := nil;
    end;
end;
////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
// --------------------------- CalcolaKey ---------------------------

end.
