object mainform: Tmainform
  Left = 0
  Top = 0
  Caption = 'mainform'
  ClientHeight = 361
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 473
    Height = 321
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label1: TLabel
        Left = 3
        Top = 19
        Width = 32
        Height = 13
        AutoSize = False
        Caption = 'Server'
        EllipsisPosition = epEndEllipsis
      end
      object Label2: TLabel
        Left = 3
        Top = 56
        Width = 26
        Height = 13
        Caption = 'Porta'
      end
      object Label3: TLabel
        Left = 3
        Top = 139
        Width = 61
        Height = 13
        Caption = 'nome utente'
      end
      object Label4: TLabel
        Left = 8
        Top = 176
        Width = 46
        Height = 13
        Caption = 'password'
      end
      object Label5: TLabel
        Left = 256
        Top = 32
        Width = 31
        Height = 13
        AutoSize = False
        Caption = 'da'
        EllipsisPosition = epWordEllipsis
      end
      object Label6: TLabel
        Left = 256
        Top = 75
        Width = 31
        Height = 13
        AutoSize = False
        Caption = 'a'
        EllipsisPosition = epPathEllipsis
      end
      object Edit1: TEdit
        Left = 70
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 70
        Top = 53
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Edit2'
      end
      object CheckBox1: TCheckBox
        Left = 70
        Top = 96
        Width = 97
        Height = 17
        Caption = 'use ssl/tls'
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 70
        Top = 136
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'Edit3'
      end
      object Edit4: TEdit
        Left = 72
        Top = 168
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'Edit4'
      end
      object Edit5: TEdit
        Left = 312
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'Edit5'
      end
      object Edit6: TEdit
        Left = 312
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 6
        Text = 'Edit6'
      end
      object Button1: TButton
        Left = 326
        Top = 222
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 7
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Button2: TButton
        Left = 336
        Top = 248
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
    end
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':110'
    MaxLineAction = maException
    Port = 110
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 160
    Top = 328
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 128
    Top = 328
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 80
    Top = 328
  end
  object IdPOP31: TIdPOP3
    AutoLogin = True
    SASLMechanisms = <>
    Left = 520
    Top = 80
  end
  object IdSSLIOHandlerSocketOpenSSL2: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':110'
    MaxLineAction = maException
    Port = 110
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 512
    Top = 165
  end
end
