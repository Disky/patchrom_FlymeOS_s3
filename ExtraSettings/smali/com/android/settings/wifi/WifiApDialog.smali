.class public Lcom/android/extrasettings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mChannel:I

.field private mChannelList:[Ljava/lang/String;

.field private mChannelWidth:I

.field private mContext:Landroid/content/Context;

.field mExt:Lcom/mediatek/settings/ext/IWifiApDialogExt;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMaxConnSpinner:Landroid/widget/Spinner;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 78
    iput v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 83
    iput v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannel:I

    .line 84
    iput v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelWidth:I

    .line 98
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    iput-object p3, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 101
    if-eqz p3, :cond_0

    .line 102
    invoke-static {p3}, Lcom/android/extrasettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/extrasettings/wifi/WifiApDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiApDialog;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/extrasettings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiApDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/extrasettings/wifi/WifiApDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiApDialog;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelWidth:I

    return p1
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 107
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f10023c

    .line 358
    iget v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 298
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 301
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/extrasettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/extrasettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApDialog;->validate()V

    .line 336
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 332
    return-void
.end method

.method public closeSpinnerDialog()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    .line 371
    :cond_0
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 123
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 125
    iget v2, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 126
    iget v2, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelWidth:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    .line 129
    iget v2, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 131
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 136
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 137
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f10023d

    if-ne v3, v4, :cond_2

    .line 309
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x90

    :goto_0
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 309
    :cond_1
    const/16 v3, 0x80

    goto :goto_0

    .line 313
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f10023e

    if-ne v3, v4, :cond_0

    .line 314
    const-string v3, "wlan"

    const-string v4, "SSID"

    iget-object v5, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v6, 0x10404c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 319
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mExt:Lcom/mediatek/settings/ext/IWifiApDialogExt;

    iget v5, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-interface {v4, v5}, Lcom/mediatek/settings/ext/IWifiApDialogExt;->getSelection(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 321
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "randomUUID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "randomPassword":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 150
    .local v3, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0400fa

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f10023b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 153
    invoke-static {v3}, Lcom/mediatek/settings/UtilsExt;->getWifiApDialogPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiApDialogExt;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mExt:Lcom/mediatek/settings/ext/IWifiApDialogExt;

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mExt:Lcom/mediatek/settings/ext/IWifiApDialogExt;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const v14, 0x7f0b006e

    invoke-interface {v12, v3, v13, v14}, Lcom/mediatek/settings/ext/IWifiApDialogExt;->setAdapter(Landroid/content/Context;Landroid/widget/Spinner;I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f10023f

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mMaxConnSpinner:Landroid/widget/Spinner;

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mMaxConnSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/extrasettings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 160
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/extrasettings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 162
    const v12, 0x7f090407

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/extrasettings/wifi/WifiApDialog;->setTitle(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f100108

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f100236

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f100217

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 167
    const/4 v12, -0x1

    const v13, 0x7f0903d5

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/extrasettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    const/4 v12, -0x2

    const v13, 0x7f0903d7

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/extrasettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v12, :cond_1

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mExt:Lcom/mediatek/settings/ext/IWifiApDialogExt;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-interface {v13, v14}, Lcom/mediatek/settings/ext/IWifiApDialogExt;->getSelection(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 177
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v12, v12, Landroid/net/wifi/WifiConfiguration;->channel:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannel:I

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v12, v12, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelWidth:I

    .line 189
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f100238

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 192
    .local v7, "mChannelSpinner":Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f10023a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 194
    .local v8, "mChannelWidthSpinner":Landroid/widget/Spinner;
    const-string v12, "mediatek.wlan.channelselect"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_4

    .line 196
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f100108

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v14, 0x7f100237

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v14, 0x7f100239

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v14, 0x7f100238

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v14, 0x7f10023a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 275
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Lcom/mediatek/wifi/Utf8ByteLengthFilter;

    const/16 v16, 0x20

    invoke-direct/range {v15 .. v16}, Lcom/mediatek/wifi/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Lcom/mediatek/wifi/Utf8ByteLengthFilter;

    const/16 v16, 0x3f

    invoke-direct/range {v15 .. v16}, Lcom/mediatek/wifi/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f10023e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_hotspot_max_client_num"

    const/4 v14, 0x6

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 284
    .local v10, "maxConnValue":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mMaxConnSpinner:Landroid/widget/Spinner;

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f10023d

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 291
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiApDialog;->validate()V

    .line 295
    return-void

    .line 204
    .end local v10    # "maxConnValue":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v13, 0x7f100108

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v14, 0x7f100239

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v14, 0x7f10023a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 209
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v9, "mTmpChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v12, 0x7f09005a

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getAccessPointPreferredChannels()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v11, v2, v5

    .line 212
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 215
    .end local v11    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    check-cast v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelList:[Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelList:[Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 218
    const/4 v4, 0x0

    .line 219
    .local v4, "i":I
    new-instance v1, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v13, 0x1090008

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelList:[Ljava/lang/String;

    invoke-direct {v1, v12, v13, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 221
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v12, 0x1090009

    invoke-virtual {v1, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 223
    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 224
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannel:I

    if-eqz v12, :cond_7

    .line 225
    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelList:[Ljava/lang/String;

    array-length v12, v12

    if-ge v4, v12, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelList:[Ljava/lang/String;

    aget-object v12, v12, v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannel:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 230
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelList:[Ljava/lang/String;

    array-length v12, v12

    if-ne v4, v12, :cond_7

    .line 231
    const/4 v4, 0x0

    .line 235
    :cond_7
    invoke-virtual {v7, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 236
    new-instance v12, Lcom/android/extrasettings/wifi/WifiApDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/extrasettings/wifi/WifiApDialog$1;-><init>(Lcom/android/extrasettings/wifi/WifiApDialog;)V

    invoke-virtual {v7, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 255
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelWidth:I

    invoke-virtual {v8, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 257
    if-eqz v8, :cond_3

    .line 258
    new-instance v12, Lcom/android/extrasettings/wifi/WifiApDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/extrasettings/wifi/WifiApDialog$2;-><init>(Lcom/android/extrasettings/wifi/WifiApDialog;)V

    invoke-virtual {v8, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    .line 225
    .restart local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mExt:Lcom/mediatek/settings/ext/IWifiApDialogExt;

    invoke-interface {v1, p3}, Lcom/mediatek/settings/ext/IWifiApDialogExt;->getSecurityType(I)I

    move-result v1

    iput v1, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 343
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSecurityTypeIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 346
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApDialog;->validate()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mMaxConnSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    add-int/lit8 v0, p3, 0x1

    .line 349
    .local v0, "maxConnValue":I
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_hotspot_max_client_num"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 329
    return-void
.end method
