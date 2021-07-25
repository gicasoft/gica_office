object mainform: Tmainform
  Left = 0
  Top = 0
  Caption = 'mainform (legge le email solo dal 1'#176' gennaio 2021)'
  ClientHeight = 426
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMinimized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 52
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 13
      Top = 9
      Width = 100
      Height = 38
      Caption = 'impostazioni'
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = -139
      Top = 408
      Width = 100
      Height = 38
      Caption = 'impostazioni'
    end
    object SpeedButton4: TSpeedButton
      Left = 156
      Top = 8
      Width = 100
      Height = 38
      Caption = 'ricevi email'
      OnClick = SpeedButton4Click
    end
    object SpeedButton6: TSpeedButton
      Left = 300
      Top = 9
      Width = 100
      Height = 38
      Caption = 'invia  email'
      OnClick = SpeedButton6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 385
    Width = 715
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label6: TLabel
      Left = 1
      Top = 1
      Width = 713
      Height = 26
      Align = alTop
      Caption = 'Gicasoft Gicasoft Gicasoft Gicasoft Gicasoft Gicasoft Gicasoft '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Forte'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 630
    end
    object Label7: TLabel
      Left = 1
      Top = 27
      Width = 713
      Height = 13
      Align = alBottom
      Caption = 'Versione 1.15.2021'
      ExplicitWidth = 94
    end
    object DataProvider: TEdit
      Left = 61
      Top = 6
      Width = 68
      Height = 21
      TabOrder = 0
      Text = 'Microsoft.Jet.OLEDB.4.0'
      Visible = False
    end
    object Provider: TEdit
      Left = 188
      Top = 6
      Width = 68
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = 'MSDataShape.1'
      Visible = False
    end
    object DataSource: TEdit
      Left = 263
      Top = 6
      Width = 68
      Height = 21
      TabOrder = 2
      Text = 'c:\windows\desktop\dbdemos.mdb'
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 52
    Width = 715
    Height = 333
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 713
      Height = 331
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object Label1: TLabel
          Left = 56
          Top = 64
          Width = 558
          Height = 81
          AutoSize = False
          Caption = 'Software invio fattura elettronica  e ricezione notifiche'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        object Button2: TButton
          Left = 608
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Button2'
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 303
          Align = alClient
          TabOrder = 1
          object Label5: TLabel
            Left = 72
            Top = 160
            Width = 558
            Height = 41
            AutoSize = False
            Caption = 'ricezione email in corso...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object SpeedButton5: TSpeedButton
            Left = 496
            Top = 128
            Width = 161
            Height = 33
            Caption = 'interrompi'
            OnClick = SpeedButton5Click
          end
          object ProgressBar1: TProgressBar
            Left = 40
            Top = 24
            Width = 617
            Height = 65
            MarqueeInterval = 1
            TabOrder = 0
          end
          object ActivityIndicator1: TActivityIndicator
            Left = 183
            Top = 95
            Animate = True
            IndicatorType = aitSectorRing
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        ImageIndex = 2
        object SpeedButton2: TSpeedButton
          Left = 460
          Top = 176
          Width = 181
          Height = 81
          Caption = 'invia email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object Label2: TLabel
          Left = 16
          Top = 3
          Width = 114
          Height = 13
          Caption = 'nome del file da inviare:'
        end
        object Label3: TLabel
          Left = 16
          Top = 77
          Width = 65
          Height = 13
          Caption = 'oggetto email'
        end
        object Label4: TLabel
          Left = 16
          Top = 141
          Width = 102
          Height = 13
          Caption = 'indirizzo destinatario:'
        end
        object SpeedButton7: TSpeedButton
          Left = 16
          Top = 208
          Width = 65
          Height = 22
          Caption = 'varia'
          OnClick = SpeedButton7Click
        end
        object SpeedButton8: TSpeedButton
          Left = 594
          Top = 21
          Width = 63
          Height = 22
          Caption = 'apri file'
          OnClick = SpeedButton8Click
        end
        object SpeedButton9: TSpeedButton
          Left = 594
          Top = 68
          Width = 63
          Height = 22
          Caption = 'apri file'
          OnClick = SpeedButton9Click
        end
        object Edit1: TEdit
          Left = 16
          Top = 22
          Width = 572
          Height = 21
          TabOrder = 0
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 16
          Top = 96
          Width = 572
          Height = 21
          TabOrder = 1
          Text = 'Edit2'
        end
        object Edit3: TEdit
          Left = 16
          Top = 160
          Width = 235
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 2
          Text = 'Edit3'
        end
        object Edit4: TEdit
          Left = 16
          Top = 50
          Width = 572
          Height = 21
          TabOrder = 3
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'TabSheet4'
        ImageIndex = 3
      end
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
    Left = 288
    Top = 88
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 120
    Top = 72
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
    Left = 48
    Top = 72
  end
  object IdPOP31: TIdPOP3
    IOHandler = IdSSLIOHandlerSocketOpenSSL2
    AutoLogin = True
    UseTLS = utUseImplicitTLS
    Port = 995
    SASLMechanisms = <>
    Left = 488
    Top = 144
  end
  object IdSSLIOHandlerSocketOpenSSL2: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':995'
    MaxLineAction = maException
    Port = 995
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 568
    Top = 133
  end
  object TrayIcon1: TTrayIcon
    BalloonHint = 'GGG GGG'
    BalloonTitle = 'FFF'
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF004444
      8FFF844448FF54448FF7444444444448FFFFFF846FFFF746FFFF84444444446F
      FF84CFF78FF56846FF8888444444446FFF5444686FF54856FF5884444444446F
      FFFFFF746FF88444FF86F8444444444FFFFFFFF74FF7F8446F86F84444444446
      FF748F7446F88F7448F7F844444444448F844FF844F86F84446FF74444444444
      4FF848F8446F7F84444444444444444444FF86F844488F844444444444444444
      4446FFF544448F74444444444444444444444444444444444444444444444444
      4444444444444444444444444444444444444444444444444444444444444444
      4444444444444444444444444444444444444444444444444444444444444444
      4444444444444444444444444444444444444444444444444444444444444444
      4444444444444444444444444444444444444444444444444444444444444444
      4444444444444444444444444444448F74444CFF5CFF7FF86FF844444444446F
      F54448FFF8FF8F848F844444444444CFF74446F8CFF88F846F84444444444448
      FFF844F846F8CF84CF84444444444446FFFF54CF8FFF8FFF8FFF54444444444C
      FF5444448FF8CFFF8FFF7444444444448F844444444446F846F844444444444F
      FFFF54444444448F548F544444444446FFFF7444444444444444444444444444
      4444444444444444444444444444444444444444444444444444444444440000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
    Visible = True
    Left = 424
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = dm.ADOimp
    Left = 352
    Top = 184
  end
  object OpenDialog1: TOpenDialog
    Filter = 'XML|*.xml'
    Title = 'Seleziona il file XML da inviare:'
    Left = 93
    Top = 157
  end
end
