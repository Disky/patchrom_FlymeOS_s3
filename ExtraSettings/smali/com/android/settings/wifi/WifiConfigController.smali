.class public Lcom/android/extrasettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/extrasettings/wifi/AccessPoint;Z)V
    .locals 18
    .param p1, "parent"    # Lcom/android/extrasettings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/extrasettings/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v13, "unspecified"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 156
    sget-object v13, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 157
    sget-object v13, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 158
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 159
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 173
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    .line 174
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/extrasettings/wifi/WifiConfigUiForSetupWizardXL;

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 176
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 177
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 178
    if-nez p3, :cond_4

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 180
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    .line 182
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v13}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 186
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v13, Lcom/mediatek/wifi/WifiConfigControllerExt;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v15}, Lcom/mediatek/wifi/WifiConfigControllerExt;-><init>(Lcom/android/extrasettings/wifi/WifiConfigController;Lcom/android/extrasettings/wifi/WifiConfigUiBase;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    .line 188
    const v13, 0x7f0b000c

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 189
    new-instance v13, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v15, 0x1090008

    const v16, 0x7f0b0013

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    const v14, 0x1090009

    invoke-virtual {v13, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 194
    new-instance v13, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v15, 0x1090008

    const v16, 0x7f0b0014

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    const v14, 0x1090009

    invoke-virtual {v13, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v14, 0x7f0903b2

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f10025f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100258

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-nez v13, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    const v14, 0x7f090380

    invoke-interface {v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100236

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/text/InputFilter;

    const/4 v15, 0x0

    new-instance v16, Lcom/mediatek/wifi/Utf8ByteLengthFilter;

    const/16 v17, 0x20

    invoke-direct/range {v16 .. v17}, Lcom/mediatek/wifi/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f10023b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v13, :cond_5

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100247

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f10024d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 219
    new-instance v2, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v14, 0x7f040106

    const v15, 0x1020014

    const v16, 0x7f0b006d

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 222
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v13, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 227
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showProxyFields()V

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100272

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100273

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    const v14, 0x7f0903d5

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v13, :cond_0

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100217

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f10023d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 245
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    invoke-virtual {v13}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setHexCheckBoxListener()V

    .line 347
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/extrasettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/extrasettings/wifi/AccessPoint;->getLevel()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_19

    .line 349
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    const v14, 0x7f0903d7

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 353
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v13}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 358
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    invoke-virtual {v13, v14}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addWifiConfigView(Z)V

    .line 359
    return-void

    .line 178
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/extrasettings/wifi/AccessPoint;->security:I

    goto/16 :goto_0

    .line 224
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100108

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 247
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100235

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 252
    .local v6, "group":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/extrasettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addViews(Lcom/android/extrasettings/wifi/WifiConfigUiBase;Ljava/lang/String;)V

    .line 254
    const/4 v9, 0x0

    .line 255
    .local v9, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_8

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 257
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v13

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v13, v14, :cond_c

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 259
    const/4 v9, 0x1

    .line 261
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v12

    .line 262
    .local v12, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v12, :cond_7

    iget-object v13, v12, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v13, :cond_7

    .line 263
    const v13, 0x7f0903a7

    iget-object v14, v12, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 270
    .end local v12    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_7
    :goto_4
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v13

    sget-object v14, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v13, v14, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 272
    const/4 v9, 0x1

    .line 281
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/extrasettings/wifi/AccessPoint;->isActive()Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v13, :cond_b

    .line 283
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showProxyFields()V

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100272

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100273

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 289
    if-eqz v9, :cond_b

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100273

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f100274

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v13, :cond_f

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    const v14, 0x7f0903d5

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 267
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 273
    :cond_d
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v13

    sget-object v14, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v13, v14, :cond_e

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 275
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 277
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 298
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/extrasettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    .line 299
    .local v11, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, "signalLevel":Ljava/lang/String;
    if-nez v11, :cond_11

    if-eqz v10, :cond_11

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    const v14, 0x7f0903d1

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 340
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/extrasettings/wifi/AccessPoint;->isActive()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_10
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    if-nez v13, :cond_1

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    const v14, 0x7f0903d3

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 304
    :cond_11
    if-eqz v11, :cond_12

    .line 305
    const v14, 0x7f0903a4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v13}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_16

    const/4 v13, 0x1

    :goto_7
    invoke-static {v15, v11, v13}, Lcom/android/extrasettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v13}, Lcom/android/extrasettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 310
    :cond_12
    if-eqz v10, :cond_13

    .line 311
    const v13, 0x7f0903a3

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v10}, Lcom/android/extrasettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 314
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/extrasettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 315
    .local v7, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_14

    .line 316
    const v13, 0x7f0903a5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Mbps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 320
    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_15

    .line 321
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    .line 322
    .local v5, "frequency":I
    const/4 v3, 0x0

    .line 324
    .local v3, "band":Ljava/lang/String;
    const/16 v13, 0x960

    if-lt v5, v13, :cond_17

    const/16 v13, 0x9c4

    if-ge v5, v13, :cond_17

    .line 326
    const v13, 0x7f090a90

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 333
    :goto_8
    if-eqz v3, :cond_15

    .line 334
    const v13, 0x7f0903a6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v3}, Lcom/android/extrasettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 338
    .end local v3    # "band":Ljava/lang/String;
    .end local v5    # "frequency":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f10025e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 305
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    :cond_16
    const/4 v13, 0x0

    goto :goto_7

    .line 327
    .restart local v3    # "band":Ljava/lang/String;
    .restart local v5    # "frequency":I
    .restart local v7    # "info":Landroid/net/wifi/WifiInfo;
    :cond_17
    const/16 v13, 0x1324

    if-lt v5, v13, :cond_18

    const/16 v13, 0x170c

    if-ge v5, v13, :cond_18

    .line 329
    const v13, 0x7f090a91

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 331
    :cond_18
    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected frequency "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 351
    .end local v3    # "band":Ljava/lang/String;
    .end local v5    # "frequency":I
    .end local v6    # "group":Landroid/view/ViewGroup;
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    .end local v9    # "showAdvancedFields":Z
    .end local v10    # "signalLevel":Ljava/lang/String;
    .end local v11    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    const v14, 0x7f090352

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public static addQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040100

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f100038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 373
    const v1, 0x7f10011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 375
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 608
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    return-object v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 609
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 380
    .local v0, "level":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 558
    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 562
    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 563
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 564
    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 565
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 603
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 558
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 570
    :cond_1
    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 571
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 572
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 573
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 574
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 575
    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 579
    .local v3, "port":I
    const/4 v5, 0x0

    .line 581
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 582
    invoke-static {v2, v4, v1}, Lcom/android/extrasettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 586
    :goto_2
    if-nez v5, :cond_3

    .line 587
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v9, v11

    .line 603
    goto :goto_1

    .line 583
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f09020c

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 589
    goto :goto_1

    .line 591
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 592
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 593
    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 594
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 595
    goto :goto_1

    .line 597
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 598
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 599
    goto :goto_1

    .line 601
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1004
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1006
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 1008
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1016
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1018
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1019
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1020
    return-void

    .line 1010
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 1011
    .local v1, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 1012
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1013
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 869
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 882
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 885
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 864
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1023
    if-eqz p2, :cond_0

    .line 1025
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1026
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1027
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1028
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1033
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1026
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 874
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 998
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 6
    .param p1, "eapMethod"    # I

    .prologue
    const v5, 0x7f10027b

    const v4, 0x7f100278

    const/4 v3, 0x0

    .line 814
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f100275

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f10026b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f100279

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f10024c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f10026c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 824
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 859
    :goto_0
    return-void

    .line 826
    :pswitch_0
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 827
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 828
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 829
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 832
    :pswitch_1
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f10027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 833
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 834
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 835
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_0

    .line 840
    :pswitch_2
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v1, v2, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 842
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 846
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 850
    :pswitch_3
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v1, v2, :cond_1

    .line 851
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 852
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 855
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 856
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 824
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f100260

    const/4 v5, 0x0

    .line 888
    const/4 v0, 0x0

    .line 890
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10025e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 893
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 896
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 897
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 899
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100261

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 900
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 901
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100262

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 902
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 903
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100263

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 905
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 906
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100264

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 907
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 908
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100265

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 909
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 911
    :cond_1
    if-eqz v0, :cond_6

    .line 912
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 913
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 914
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 915
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 922
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 926
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 927
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 930
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    invoke-virtual {v3, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->restrictIpv4View(Landroid/net/wifi/WifiConfiguration;)V

    .line 940
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_6
    :goto_0
    return-void

    .line 938
    :cond_7
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 10

    .prologue
    const v9, 0x7f100282

    const v8, 0x7f10025a

    const v7, 0x7f100259

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100256

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 947
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 948
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 951
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 952
    invoke-direct {p0, v7, v6}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 953
    invoke-direct {p0, v8, v6}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 954
    invoke-direct {p0, v9, v5}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 955
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 956
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10025b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 957
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 958
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10025c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 959
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 960
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10025d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 961
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 963
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setProxyText(Landroid/view/View;)V

    .line 966
    :cond_1
    if-eqz v0, :cond_2

    .line 967
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 968
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 969
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 974
    :cond_3
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 975
    invoke-direct {p0, v7, v5}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 976
    invoke-direct {p0, v8, v5}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 977
    invoke-direct {p0, v9, v6}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 979
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 980
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100283

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 981
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 983
    :cond_4
    if-eqz v0, :cond_2

    .line 984
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 985
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 986
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 990
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 991
    invoke-direct {p0, v8, v5}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 992
    invoke-direct {p0, v9, v5}, Lcom/android/extrasettings/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 11

    .prologue
    const v10, 0x7f10024f

    const v9, 0x7f10024a

    const/16 v8, 0x8

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 689
    iget-boolean v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v3, :cond_1

    .line 691
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/extrasettings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v5, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v3, v4, v5}, Lcom/android/extrasettings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v3, v4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setWapiCertSpinnerInvisible(I)V

    .line 699
    iget v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v3, :cond_2

    .line 700
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 704
    :cond_2
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-boolean v5, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/wifi/WifiConfigControllerExt;->showSecurityFields(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 707
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v3, :cond_3

    .line 710
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100217

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 711
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 712
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10023d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 715
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    if-eq v3, v7, :cond_3

    .line 716
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v4, 0x7f0903b1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 720
    :cond_3
    iget v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 721
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 724
    :cond_4
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v3, :cond_6

    .line 727
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100250

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 729
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    invoke-virtual {v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setEapmethodSpinnerAdapter()V

    .line 730
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 731
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100251

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 732
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100252

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 733
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100253

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 734
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100254

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 735
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100255

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 737
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    invoke-direct {p0, v3, v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 738
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    invoke-direct {p0, v3, v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 741
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    if-eq v3, v7, :cond_5

    .line 742
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 743
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 744
    .local v0, "eapMethod":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 745
    .local v2, "phase2Method":I
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    invoke-virtual {v4, v0, v6}, Lcom/mediatek/wifi/WifiConfigControllerExt;->convertEapMethod(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 746
    invoke-direct {p0, v0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 748
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setEapMethodSelection(Landroid/widget/Spinner;I)V

    .line 749
    sparse-switch v0, :sswitch_data_0

    .line 768
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 771
    :goto_1
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 772
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 773
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    .end local v0    # "eapMethod":I
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v2    # "phase2Method":I
    :goto_2
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget-boolean v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    invoke-virtual {v3, v4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setEapMethodFields(Z)V

    .line 788
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    invoke-virtual {v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setGEMINI()V

    goto/16 :goto_0

    .line 752
    .restart local v0    # "eapMethod":I
    .restart local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .restart local v2    # "phase2Method":I
    :sswitch_0
    packed-switch v2, :pswitch_data_0

    .line 763
    :pswitch_0
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 754
    :pswitch_1
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 757
    :pswitch_2
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 760
    :pswitch_3
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 778
    .end local v0    # "eapMethod":I
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v2    # "phase2Method":I
    :cond_5
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 779
    invoke-direct {p0, v6}, Lcom/android/extrasettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_2

    .line 783
    :cond_6
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->getEapMethodbySpinnerPos(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/extrasettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_2

    .line 749
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 615
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 685
    :goto_0
    return v10

    .line 617
    :cond_0
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 618
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0903e8

    goto :goto_0

    .line 619
    :cond_1
    const/4 v6, 0x0

    .line 621
    .local v6, "inetAddr":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 623
    instance-of v10, v6, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_2

    .line 624
    const v10, 0x7f0903e8

    goto :goto_0

    .line 627
    :catch_0
    move-exception v3

    .line 628
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0903e8

    goto :goto_0

    .line 631
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v9, -0x1

    .line 633
    .local v9, "networkPrefixLength":I
    :try_start_1
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 634
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 635
    :cond_3
    const v10, 0x7f0903eb

    goto :goto_0

    .line 637
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 644
    :goto_1
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 648
    :try_start_2
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 649
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 650
    .local v0, "addr":[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 651
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 663
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 666
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 668
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090a99

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :goto_3
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 678
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-direct {p0, v1}, Lcom/android/extrasettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 680
    if-nez v2, :cond_9

    .line 681
    const v10, 0x7f0903ea

    goto/16 :goto_0

    .line 638
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 640
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090a9c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 656
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 657
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_6

    .line 658
    const v10, 0x7f0903e9

    goto/16 :goto_0

    .line 660
    :cond_6
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 670
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/extrasettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 671
    if-nez v2, :cond_8

    .line 672
    const v10, 0x7f0903ea

    goto/16 :goto_0

    .line 674
    :cond_8
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 683
    :cond_9
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 653
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_2
    move-exception v10

    goto :goto_2

    .line 652
    :catch_3
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/extrasettings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/wifi/WifiConfigController$1;-><init>(Lcom/android/extrasettings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1046
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1051
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 6

    .prologue
    .line 392
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 393
    .local v2, "submit":Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 420
    :goto_0
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 396
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 398
    .local v1, "passwordInvalid":Z
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 401
    :cond_2
    const/4 v1, 0x1

    .line 405
    :cond_3
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->enableSubmitIfAppropriate(Landroid/widget/TextView;IZ)Z

    move-result v1

    .line 408
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 411
    :cond_6
    const/4 v0, 0x0

    .line 419
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 413
    :cond_7
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 414
    const/4 v0, 0x1

    goto :goto_1

    .line 416
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    return-object v0
.end method

.method public getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessPointNetworkId()I
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    .line 1127
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAccessPointSecurity()I
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/extrasettings/wifi/AccessPoint;->security:I

    .line 1148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessPointSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 1141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessPointState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/16 v10, 0x22

    const/4 v9, 0x0

    .line 423
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    if-eq v7, v11, :cond_0

    iget-boolean v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    .line 424
    const/4 v2, 0x0

    .line 554
    :goto_0
    return-object v2

    .line 427
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 429
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-nez v7, :cond_1

    .line 430
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/extrasettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 433
    iput-boolean v8, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 443
    :goto_1
    iget v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    .line 544
    const/4 v2, 0x0

    goto :goto_0

    .line 434
    :cond_1
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    if-ne v7, v11, :cond_2

    .line 435
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/extrasettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 438
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/extrasettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 440
    :cond_2
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 445
    :pswitch_0
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 548
    :cond_3
    :goto_2
    :pswitch_1
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget v8, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setConfig(Landroid/net/wifi/WifiConfiguration;ILandroid/widget/TextView;Landroid/widget/Spinner;)V

    .line 550
    new-instance v7, Landroid/net/IpConfiguration;

    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v11, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_0

    .line 449
    :pswitch_2
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 450
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 451
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 452
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 453
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 454
    .local v4, "length":I
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "password":Ljava/lang/String;
    const/16 v7, 0xa

    if-eq v4, v7, :cond_4

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_4

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_5

    :cond_4
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 458
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v7, v9

    goto :goto_2

    .line 460
    :cond_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    goto :goto_2

    .line 466
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 467
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 468
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    .restart local v5    # "password":Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 470
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 472
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 478
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_4
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 479
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    .line 480
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 481
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 483
    .local v3, "eapMethod":I
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    invoke-virtual {v7, v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->getEapMethod(I)I

    move-result v3

    .line 485
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 486
    .local v6, "phase2Method":I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 487
    sparse-switch v3, :sswitch_data_0

    .line 512
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 515
    :goto_3
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 516
    .local v0, "caCert":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v0, ""

    .line 517
    :cond_7
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 518
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v1, ""

    .line 520
    :cond_8
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 521
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 522
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 525
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 528
    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 529
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 489
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    :sswitch_0
    const-string v7, "/data/misc/wifi/wpa_supplicant.eap-fast-pac"

    invoke-static {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    .line 490
    const-string v7, "fast_provisioning=2"

    invoke-static {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 495
    :sswitch_1
    packed-switch v6, :pswitch_data_1

    .line 506
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown phase2 method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 497
    :pswitch_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 500
    :pswitch_6
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 503
    :pswitch_7
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 533
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 487
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 495
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 385
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/CompoundButton;

    .prologue
    .line 1159
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f10026d

    if-ne v0, v1, :cond_1

    .line 1161
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setHex(Z)V

    .line 1162
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1163
    const-string v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick mHex is="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enableSubmitIfAppropriate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1166
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f100281

    if-ne v0, v1, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v3, 0x7f100274

    .line 1060
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f10023d

    if-ne v1, v2, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1062
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1066
    if-ltz v0, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1077
    .end local v0    # "pos":I
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/wifi/WifiConfigController;->onCheckedChanged(Landroid/widget/CompoundButton;)V

    .line 1078
    return-void

    .line 1062
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1069
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f100273

    if-ne v1, v2, :cond_0

    .line 1070
    if-eqz p2, :cond_3

    .line 1071
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1073
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1082
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1083
    iput p3, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1085
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/wifi/WifiConfigControllerExt;

    iget v1, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->getSecurity(I)I

    move-result v0

    iput v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1087
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1095
    :goto_0
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1096
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1089
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1091
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1093
    :cond_2
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiConfigController;->showIpConfigFields()V

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
    .line 1101
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
    .line 1056
    return-void
.end method
