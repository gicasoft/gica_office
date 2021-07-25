object prop_impForm: Tprop_impForm
  Left = 0
  Top = 0
  Caption = 'prop_impForm'
  ClientHeight = 427
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 707
    Height = 386
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 409
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitLeft = 0
      ExplicitTop = 28
      ExplicitHeight = 397
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 60
        Height = 13
        Caption = 'server_smtp'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 312
        Top = 8
        Width = 55
        Height = 13
        Caption = 'porta_smtp'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 21
        Top = 56
        Width = 64
        Height = 13
        Caption = 'nome_utente'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 309
        Top = 56
        Width = 46
        Height = 13
        Caption = 'password'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 21
        Top = 104
        Width = 12
        Height = 13
        Caption = 'da'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 309
        Top = 104
        Width = 6
        Height = 13
        Caption = 'a'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 23
        Top = 157
        Width = 61
        Height = 13
        Caption = 'server_pop3'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 311
        Top = 157
        Width = 56
        Height = 13
        Caption = 'porta_pop3'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 23
        Top = 208
        Width = 167
        Height = 13
        Caption = 'pth_allegati_all (esempio:c:\temp\)'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 303
        Top = 208
        Width = 78
        Height = 13
        Caption = 'pth_allegati_eml'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 23
        Top = 256
        Width = 78
        Height = 13
        Caption = 'pth_allegati_xml'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 303
        Top = 256
        Width = 103
        Height = 13
        Caption = 'pth_allegati_notifiche'
        FocusControl = DBEdit12
      end
      object Label18: TLabel
        Left = 25
        Top = 298
        Width = 51
        Height = 13
        Caption = 'pth_emails'
        FocusControl = DBEdit18
      end
      object Label19: TLabel
        Left = 379
        Top = 299
        Width = 62
        Height = 13
        Caption = 'conta_emails'
        FocusControl = DBEdit19
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 24
        Width = 233
        Height = 21
        DataField = 'server_smtp'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 312
        Top = 24
        Width = 126
        Height = 21
        DataField = 'porta_smtp'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 21
        Top = 72
        Width = 233
        Height = 21
        DataField = 'nome_utente'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 309
        Top = 72
        Width = 126
        Height = 21
        DataField = 'password'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBCheckBox1: TDBCheckBox
        Left = 469
        Top = 74
        Width = 57
        Height = 17
        Caption = 'use_tls'
        DataField = 'use_tls'
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 21
        Top = 123
        Width = 233
        Height = 21
        DataField = 'da'
        DataSource = DataSource1
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 309
        Top = 123
        Width = 233
        Height = 21
        DataField = 'a'
        DataSource = DataSource1
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 23
        Top = 176
        Width = 233
        Height = 21
        DataField = 'server_pop3'
        DataSource = DataSource1
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 311
        Top = 176
        Width = 126
        Height = 21
        DataField = 'porta_pop3'
        DataSource = DataSource1
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 23
        Top = 224
        Width = 222
        Height = 21
        DataField = 'pth_allegati_all'
        DataSource = DataSource1
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 303
        Top = 224
        Width = 222
        Height = 21
        DataField = 'pth_allegati_eml'
        DataSource = DataSource1
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 23
        Top = 272
        Width = 222
        Height = 21
        DataField = 'pth_allegati_xml'
        DataSource = DataSource1
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 303
        Top = 272
        Width = 222
        Height = 21
        DataField = 'pth_allegati_notifiche'
        DataSource = DataSource1
        TabOrder = 12
      end
      object DBEdit18: TDBEdit
        Left = 25
        Top = 317
        Width = 333
        Height = 21
        DataField = 'pth_emails'
        DataSource = DataSource1
        TabOrder = 13
      end
      object DBEdit19: TDBEdit
        Left = 379
        Top = 318
        Width = 134
        Height = 20
        DataField = 'conta_emails'
        DataSource = DataSource1
        TabOrder = 14
      end
      object DBCheckBox2: TDBCheckBox
        Left = 496
        Top = 26
        Width = 161
        Height = 17
        Caption = 'cancella_dal_server'
        DataField = 'cancella_dal_server'
        DataSource = DataSource1
        TabOrder = 15
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitHeight = 389
      object Label13: TLabel
        Left = 40
        Top = 24
        Width = 85
        Height = 13
        Caption = 'ftp_display_name'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 40
        Top = 64
        Width = 58
        Height = 13
        Caption = 'ftp_address'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 40
        Top = 104
        Width = 41
        Height = 13
        Caption = 'ftp_user'
        FocusControl = DBEdit15
      end
      object Label16: TLabel
        Left = 40
        Top = 144
        Width = 66
        Height = 13
        Caption = 'ftp_password'
        FocusControl = DBEdit16
      end
      object Label17: TLabel
        Left = 40
        Top = 184
        Width = 74
        Height = 13
        Caption = 'ftp_root_folder'
        FocusControl = DBEdit17
      end
      object DBEdit13: TDBEdit
        Left = 40
        Top = 40
        Width = 222
        Height = 21
        DataField = 'ftp_display_name'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 40
        Top = 80
        Width = 222
        Height = 21
        DataField = 'ftp_address'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit15: TDBEdit
        Left = 40
        Top = 120
        Width = 222
        Height = 21
        DataField = 'ftp_user'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit16: TDBEdit
        Left = 40
        Top = 160
        Width = 222
        Height = 21
        DataField = 'ftp_password'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit17: TDBEdit
        Left = 40
        Top = 200
        Width = 222
        Height = 21
        DataField = 'ftp_root_folder'
        DataSource = DataSource1
        TabOrder = 4
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 386
    Width = 707
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 409
    object Button2: TButton
      Left = 392
      Top = 6
      Width = 75
      Height = 25
      Caption = 'annulla'
      ModalResult = 2
      TabOrder = 0
    end
    object Button1: TButton
      Left = 240
      Top = 6
      Width = 75
      Height = 25
      Caption = 'ok'
      ModalResult = 1
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.ADOimp
    Left = 176
    Top = 112
  end
end
