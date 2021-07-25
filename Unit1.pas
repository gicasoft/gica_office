unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP,IdMessageBuilder, IdMessage,idtext, idattachmentfile ,IdMessageCoder,
  IdMessageCoderMIME, Vcl.ComCtrls, IdPOP3;

type
  Tmainform = class(TForm)
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    IdPOP31: TIdPOP3;
    Button2: TButton;
    IdSSLIOHandlerSocketOpenSSL2: TIdSSLIOHandlerSocketOpenSSL;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainform: Tmainform;

implementation

{$R *.dfm}

procedure Tmainform.Button1Click(Sender: TObject);
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
    IdSMTP.UseTLS :=utUseImplicitTLS ;//utUseExplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := strtoint(edit2.Text);
    IdSMTP.Host := edit1.Text;
    IdSMTP.Username := edit3.Text;
    IdSMTP.Password := edit4.Text;

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := edit5.Text;
    IdMessage.From.Name := 'Rosario Giacalone PEC';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := edit6.Text;
    IdMessage.Subject := 'prova pec';
    IdMessage.Encoding := meMIME;
    IdMessage.ContentType := 'multipart/mixed';
    //IdMessage.Body.add('bla bla');

     with TIdMessageBuilderHtml.Create do
    try
      Html.Text := 'HTML goes here';
      //HtmlFiles.Add('c:\prova\aaa.jpg');
      Attachments.Add('c:\prova\aaa.zip');
      FillMessage(IdMessage);
    finally
     // Free;
    end;
    // Configuração do corpo do email (TIdText)
    //IdText := TIdText.Create(IdMessage.MessageParts);
   // IdText.Body.Add('The body of the e-mail goes here');
   // IdText.ContentType := 'text/plain';// charset=iso-8859-1';

     //TIdAttachment.Create(IdMessage.MessageParts, 'aaa.JPG');
   // idattachment:=TIdAttachmentFile.Create(IdMessage.MessageParts,'c:\prova\aaa.xml');
   // idattachment.ContentType := 'text/xml';
  

     //idattachment.ContentDisposition := 'inline';

    //  MB := TIdMessageBuilderHtml.Create;




    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Cannot authenticate: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Message sent successfully!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Error while sending a message: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    // liberação dos objetos da memória
    //FreeAndNil(idattachment);
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;



procedure Tmainform.Button2Click(Sender: TObject);
begin
(*
with IdPop31 do
begin
  ConnectTimeout := 5000;
  Connect;
  try
    files.Clear;
    for i := 1 to checkmessages do
    begin
      msg.clear;
      flag := false;
      if retrieve (i, msg) then
      begin
        for j := 0 to msg.MessageParts.Count-1 do
        begin
          if msg.MessageParts[j] is TIdAttachment then
          begin
            with TIdAttachment(msg.MessageParts[j]) do
            begin
              s := IncludeTrailingPathDelimiter(mydir) + ExtractFileName(FileName);
              log ('Downloaded ' + s);
              if not FileExists(s) then
              begin
                SaveToFile(s);
                files.Add(s);
              end;
             end;
            end;
            flag := true;
          end;
        end;
      end;
      if flag then Delete(i);  // remove the email from the server
    end;
  finally
    Disconnect;
  end
end;
*)
end;

procedure Tmainform.FormShow(Sender: TObject);
begin
edit1.Text:='smtps.pec.aruba.it';
edit2.Text:='465';
edit3.Text:='gicasoft@pec.it';
edit4.Text:='giogio12345678';
edit5.Text:='gicasoft@pec.it';
edit6.Text:='gicasoft@pec.it';
//edit7.Text:='';

end;

end.
