unit mainw;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP,IdMessageBuilder, IdMessage,idtext, idattachmentfile ,IdMessageCoder,
  IdMessageCoderMIME, Vcl.ComCtrls, IdPOP3, Vcl.ExtCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids,Data.Win.ADODB, Vcl.WinXCtrls, inifiles;

type
  Tmainform = class(TForm)
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdPOP31: TIdPOP3;
    IdSSLIOHandlerSocketOpenSSL2: TIdSSLIOHandlerSocketOpenSSL;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button2: TButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DataProvider: TEdit;
    Provider: TEdit;
    DataSource: TEdit;
    TrayIcon1: TTrayIcon;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel4: TPanel;
    DataSource1: TDataSource;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton6: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ProgressBar1: TProgressBar;
    Label5: TLabel;
    Label6: TLabel;
    ActivityIndicator1: TActivityIndicator;
    SpeedButton5: TSpeedButton;
    Label7: TLabel;
    Edit4: TEdit;
    SpeedButton9: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    interrompi:boolean;

     FLDirBase:string;

  iniFile:TIniFile;


  targa_telaio:string;




  procedure WriteIniFile;
  procedure ReadIniFile;
  end;

var
  mainform: Tmainform;

implementation

{$R *.dfm}

uses dmwin, prop_impw,utility;
procedure TMainForm.WriteIniFile;
begin
  IniFile.WriteString('Directory', 'DirBase', FLDirBase);

end;

procedure TMainForm.ReadIniFile;
begin
  IniFile      :=TIniFile.Create(ChangeFileExt(Application.ExeName, '.INI'));

  FLDirBase    :=IniFile.ReadString('Directory', 'DirBase', ExtractFilePath(Application.ExeName));



/////
end;

procedure Tmainform.FormShow(Sender: TObject);
begin
ReadIniFile;
WriteIniFile;

interrompi:=False;

if ParamCount = 0 then
       begin
        mainform.WindowState:= wsnormal;
       mainform.FormStyle:=fsnormal;
        TabSheet1.TabVisible:=false;
        TabSheet2.TabVisible:=false;
        TabSheet3.TabVisible:=false;
        TabSheet4.TabVisible:=false;
        PageControl1.ActivePage:=TabSheet1;
       end;
//showmessage('Ciao ' + ParamStr(1));
if paramcount=1 then
       begin
       mainform.WindowState:= wsMaximized;
       mainform.FormStyle:=fsStayOnTop;
       TabSheet1.TabVisible:=false;
        TabSheet2.TabVisible:=false;
        TabSheet3.TabVisible:=false;
        TabSheet4.TabVisible:=false;
       speedbutton4click(sender); //ricevi emails
       exit;
       end;

if paramcount=2 then
       begin
       mainform.WindowState:= wsMinimized;
       mainform.FormStyle:=fsnormal;
       edit1.Text:=ParamStr(2);
       edit2.Text:='INVIO FILE:'+ExtractFileName(edit1.Text);
       edit3.Text:=dm.ADOimpa.Value;
       speedbutton2click(sender); //invio fatt
       exit;
       end;

if paramcount=4 then
     begin
     if paramstr(1)='ccc' then
          begin
          showmessage('prova');
          end;

       mainform.WindowState:= wsMinimized;
       mainform.FormStyle:=fsnormal;
       edit1.Text:=ParamStr(3);
       edit4.Text:=ParamStr(4);

      edit2.Text:='INVIO fatture della ditta:'+dm.ADOZ_Cedentedenominazione.value;
       edit3.Text:=ParamStr(2);
       speedbutton2click(sender); //invio fatt a consulente
       exit;
     end;


end;

procedure Tmainform.SpeedButton1Click(Sender: TObject);
begin
dm.ADOimp.Edit;
if apriform(tprop_impForm,prop_impForm)=mrok then
         dm.ADOimp.Post
         else
         dm.ADOimp.Cancel;
end;

procedure Tmainform.SpeedButton2Click(Sender: TObject);
var
  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  idattachment:TIdAttachmentFile;
  IdText: TIdText;
  sAnexo: string;
  mb:TIdMessageBuilderHtml;
begin
if edit1.Text='' then
        exit;
if edit3.Text='' then
        exit;
if edit2.Text='' then
        exit;

  // instanciação dos objetos
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);



  try
    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS :=utUseImplicitTLS ;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := dm.ADOimpporta_smtp.AsInteger;
    IdSMTP.Host := dm.ADOimpserver_smtp.Value;
    IdSMTP.Username := dm.ADOimpnome_utente.Value;
    IdSMTP.Password := dm.ADOimppassword.Value;

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := dm.ADOimpda.Value;
    //IdMessage.From.Name := 'Rosario Giacalone PEC';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := EDIT3.TEXT;//dm.ADOimpa.Value;;
    IdMessage.Subject := edit2.Text;
    IdMessage.Encoding := meMIME;
    IdMessage.ContentType := 'multipart/mixed';
    //IdMessage.Body.add('bla bla');

     with TIdMessageBuilderHtml.Create do
    try
      Html.Text := 'HTML goes here';

      Attachments.Add(edit1.Text);
      FillMessage(IdMessage);
      if edit4.Text<>'' then
              begin
              Attachments.Add(edit4.Text);
              FillMessage(IdMessage);
              end;
    finally
     // Free;
    end;



    try
      IdSMTP.Connect;
      //IdSMTP.Authenticate;            x sarullo ugfzc3dvcmQ6
    except
      on E:Exception do
      begin
        MessageDlg('autenticazione fallita: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);

      MessageDlg('Messaggio inviato correttamente!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Errore durante invio messaggio: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally

    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
if   paramcount  >0 then
       begin

        dm.adocom_pec.Active:=true;
        dm.adocom_pec.Edit;
        dm.adocom_pecricezione.Value:='';
        dm.adocom_pecinvio.Value:='ESEGUITO';
        dm.adocom_pec.Post;
        dm.adocom_pec.Active:=False;
        close;
       end;
end;




procedure Tmainform.SpeedButton4Click(Sender: TObject);
var
  MsgCount : Integer;
  i        : Integer;
  zzz:integer;
  yyy:integer;
  FMailMessage :  TIdMessage;
  fmail_eml:tidmessage;
  d:TDateTime;
  aaaa,bbbb,jjjj:string;
  fname,fname2:string;


  Present: TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;

  PTH_XML:STRING;

  ccc:integer;
begin
if (dm.ADOimppth_emails.Value='' )or
   (dm.ADOimppth_allegati_all.Value='' )or
   (dm.ADOimppth_allegati_eml.Value='' )or
   (dm.ADOimppth_allegati_xml.Value='' )or
   (dm.ADOimppth_allegati_notifiche.Value='' )or
   (dm.ADOimpconta_emails.AsString='' ) then
        begin
          showmessage('Mancano informazioni nel file di impostazione. Non procedo.');
          exit;
        end;

PageControl1.ActivePage:=TabSheet2;
ActivityIndicator1.Animate:=tRUE;
if   paramcount  >0 then
        begin
        Panel1.Visible:=False;
        sleep(500);
        end;
Application.ProcessMessages;

  //The IdPop31 is on the form so it is constructing when the
  //form is created and so is Memo1.
  IdPOP31.Host      := dm.ADOimpserver_pop3.Value; //'pop3s.pec.aruba.it'; //Setting the HostName;
  IdPOP31.Username  := dm.ADOimpnome_utente.Value; //'gicasoft@pec.it';//Setting UserName;
  IdPOP31.Password  := dm.ADOimppassword.Value; //'giogio12345678';//Setting Password;
  IdPOP31.Port      := dm.ADOimpporta_pop3.AsInteger; //995;//Setting Port;

  IdSSLIOHandlerSocketOpenSSL2.SSLOptions.Method := sslvSSLv23;
  IdSSLIOHandlerSocketOpenSSL2.SSLOptions.Mode := sslmClient;


  try
    IdPOP31.Connect();
   //Getting the number of the messages that server has.

    MsgCount := IdPOP31.CheckMessages;

    ProgressBar1.Max:=MsgCount;
    ProgressBar1.Position:=0;
    PTH_XML:='';
    for i:= (MsgCount) downto 0 do     ///OKKIO
    begin
    try
      Application.ProcessMessages;
      ProgressBar1.Position:=i;
      FMailMessage := TIdMessage.Create(nil);
      IdPOP31.Retrieve(i,FMailMessage);
      PTH_XML:='';
      d:=FMailMessage.date;
      //showmessage(datetostr(d));
      //showmessage(datetostr(strtodate('31/12/2018')));
      if interrompi=True then exit;

        if d>strtodate('31/12/2020') then
         begin
         dm.ADOmail.First;
         if not dm.ADOmail.Locate('idmsg',FMailMessage.MsgId,[] )then
            begin

            d:=FMailMessage.date;
            try
            ccc:=i+dm.ADOimpconta_emails.Value;
            FMailMessage.SaveToFile(dm.ADOimppth_emails.Value+ inttostr(ccc)+'.eml',false);
            for zzz :=0 to  FMailMessage.MessageParts.Count-1 do
                begin
                if FMailMessage.MessageParts.items[zzz] is TIdAttachmentFile then
                  begin
                    try
                    aaaa:=trim(FMailMessage.MessageParts.Items[zzz].Filename);

                    fName := dm.ADOimppth_allegati_all.Value+ inttostr(i)+'_'+inttostr(zzz)+'_'+aaaa;
                   //if aaaa='postacert.eml' then
                    TIdAttachmentFile(FMailMessage.MessageParts.Items[zzz]).SaveToFile(fName);
                    if aaaa='postacert.eml' then
                          begin
                          PTH_XML:='';
                               fmail_eml := TIdMessage.Create(nil);
                               fmail_eml.LoadFromFile(fname);
                                 for yyy :=0 to  fmail_eml.MessageParts.Count-1 do
                                      begin
                                     if fmail_eml.MessageParts.items[yyy] is TIdAttachmentFile then
                                        begin
                                        bbbb:=trim(fmail_eml.MessageParts.Items[yyy].Filename);
                                        bbbb:=UpperCase(bbbb);
                                        fname2:='';
                                        if pos('.XML',bbbb)>0 then
                                            begin
                                             fname2:=dm.ADOimppth_allegati_xml.Value+ inttostr(i)+'_'+inttostr(yyy)+'_'+bbbb;
                                             dm.adotipo_notifAE.First;
                                            while not dm.adotipo_notifAE.Eof do
                                                begin
                                                jjjj:=dm.adotipo_notifAEdescrizione.Value;

                                                if pos(jjjj,bbbb)>0 then
                                                        begin
                                                           fname2:=dm.ADOimppth_allegati_notifiche.Value+ inttostr(i)+'_'+inttostr(yyy)+bbbb;
                                                           // showmessAGE('3'+FNAME2);
                                                        end;
                                                dm.adotipo_notifAE.Next;
                                                end;

                                           end;
                                           TIdAttachmentFile(fmail_eml.MessageParts.Items[yyy]).SaveToFile(fName2);
                                           PTH_XML:=fname2;
                                            end;
                                        end;

                                      end;

                           fmail_eml.Free;
                          //  TIdAttachmentFile(FMailMessage.MessageParts.Items[zzz]).


                    except
                   ;
                   end;
                 end;

              end;
           //end;
        finally
          ;
        end;
                   dm.ADOmail.Append;


                     dm.ADOmailidmsg.Value:=FMailMessage.MsgId;
                      dm.ADOmailoggetto.Value:=FMailMessage.Subject;

                     dm.ADOmaildata.Value:=d;
                     dm.ADOmailmittente.Value:=FMailMessage.FromList.EMailAddresses;// Sender.Address;
                     //dm.ADOmaildestinario.Value:=FMailMessage.from.Address;
                     dm.ADOmaila1.Value:='allegati ' +inttostr(FMailMessage.MessageParts.AttachmentCount);;
                     //dm.ADOmaila2.Value:=FMailMessage.ReplyTo.EMailAddresses;
                     //dm.ADOmaila3.Value:=FMailMessage.Sender.Address;

                     DecodeDate(d, Year, Month, Day);
                     dm.ADOmailANNO.Value:=inttostr(year);
                     dm.ADOmailMESE.Value:=inttostr(month);
                     dm.ADOmailPERCORSO_EML.Value:=dm.ADOimppth_emails.Value+ inttostr(ccc)+'.eml';
                     dm.ADOmailPERCORSO_XML.Value:=PTH_XML;

                     dm.ADOmail.Post;
                     PTH_XML:='';
                   end;
      end
      else
      break;
      finally
        FMailMessage.Free;
      end;

    end;
  finally
    IdPOP31.Disconnect;
  end;
ActivityIndicator1.Animate:=FALSE;
   dm.ADOimp.Edit;
   dm.ADOimpconta_emails.Value:=dm.ADOimpconta_emails.Value+MsgCount;
   dm.ADOimp.post;

if   paramcount  >0 then
        begin
        showmessage('Eseguito. cliccare Ok e attendere l'+#39+'aggiornamento dello stato dei documenti');
        DM.adocom_pec.Active:=TRUE;
        DM.adocom_pec.Edit;
        DM.adocom_pecricezione.Value:='ESEGUITO';
        DM.adocom_pec.Post;
        DM.adocom_pec.Active:=FALSE;
        close;
        end;
if ParamCount=0 then
      begin
        showmessage('Eseguito');
        PageControl1.ActivePage:=TabSheet1;
        Panel1.Visible:=true;
      end;
end;

procedure Tmainform.SpeedButton5Click(Sender: TObject);
begin
interrompi:=True;
end;

procedure Tmainform.SpeedButton6Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet3;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
if OpenDialog1.Execute=true then
    begin
      edit1.Text:=OpenDialog1.FileName;
      edit2.Text:='INVIO FILE:'+ExtractFileName(OpenDialog1.FileName);
      edit3.Text:=dm.ADOimpa.Value;
    end;

end;

procedure Tmainform.SpeedButton7Click(Sender: TObject);
begin
dm.ADOimp.Edit;
if apriform(tprop_impForm,prop_impForm)=mrok then
         dm.ADOimp.Post
         else
         dm.ADOimp.Cancel;
end;

procedure Tmainform.SpeedButton8Click(Sender: TObject);
begin
if OpenDialog1.Execute=true then
    begin
      edit1.Text:=OpenDialog1.FileName;
      edit2.Text:='INVIO FILE:'+ExtractFileName(OpenDialog1.FileName);
    end;
end;

procedure Tmainform.SpeedButton9Click(Sender: TObject);
begin
if OpenDialog1.Execute=true then
    begin
      edit4.Text:=OpenDialog1.FileName;
      edit2.Text:='INVIO fatture della ditta:'+dm.ADOZ_Cedentedenominazione.value;
    end;
end;

end.
