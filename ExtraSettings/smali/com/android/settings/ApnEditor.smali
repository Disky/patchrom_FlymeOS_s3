.class public Lcom/android/extrasettings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/SwitchPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mFirstTime:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoType:Landroid/preference/ListPreference;

.field mMvnoTypeEntries:[Ljava/lang/String;

.field mMvnoTypeValues:[Ljava/lang/String;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRadioValueObserver:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

.field private mReadOnlyMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSourceType:I

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const-class v0, Lcom/android/extrasettings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    .line 131
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/extrasettings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/extrasettings/ApnEditor;->mSourceType:I

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/ApnEditor;->mReadOnlyMode:Z

    .line 196
    new-instance v0, Lcom/android/extrasettings/ApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/ApnEditor$1;-><init>(Lcom/android/extrasettings/ApnEditor;)V

    iput-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/android/extrasettings/ApnEditor$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/ApnEditor$2;-><init>(Lcom/android/extrasettings/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/ApnEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/extrasettings/ApnEditor;->radioOffExit()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/ApnEditor;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/extrasettings/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/extrasettings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/ApnEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/extrasettings/ApnEditor;->fillUi()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/ApnEditor;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/extrasettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/ApnEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnEditor;->mReadOnlyMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/ApnEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/settings/ext/IApnSettingsExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/extrasettings/ApnEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/extrasettings/ApnEditor;->mSourceType:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/apn/ApnTypePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/extrasettings/ApnEditor;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/extrasettings/ApnEditor;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/extrasettings/ApnEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/ApnEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/extrasettings/ApnEditor;->mFirstTime:Z

    return p1
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 536
    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 537
    .local v1, "mBearerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 544
    :goto_0
    return-object v3

    .line 540
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 895
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/extrasettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    :cond_0
    const-string p1, ""

    .line 898
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 887
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 888
    :cond_0
    sget-object p1, Lcom/android/extrasettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 890
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 868
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->finish()V

    .line 872
    return-void
.end method

.method private fillUi()V
    .locals 20

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/ApnEditor;->finish()V

    .line 514
    :goto_0
    return-void

    .line 389
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/ApnEditor;->mFirstTime:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 390
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/ApnEditor;->mFirstTime:Z

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x9

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0xf

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 405
    .local v13, "strType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/apn/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/mediatek/apn/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x14

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x15

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0x16

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/extrasettings/ApnEditor;->mSourceType:I

    .line 411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v12

    .line 414
    .local v12, "numeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v12}, Lcom/android/extrasettings/ApnEditor;->updateMccMncForSvlte(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 417
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 419
    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 421
    .local v8, "mcc":Ljava/lang/String;
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 423
    .local v9, "mnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/extrasettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 426
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/extrasettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 430
    .end local v8    # "mcc":Ljava/lang/String;
    .end local v9    # "mnc":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "apn_type"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "apnType":Ljava/lang/String;
    const-string v16, "tethering"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    move-object/from16 v16, v0

    const-string v17, "tethering"

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/apn/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    move-object/from16 v16, v0

    const-string v17, "tethering"

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/apn/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    .line 442
    :goto_1
    :try_start_0
    const-string v16, "phoneEx"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v14

    .line 444
    .local v14, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v11

    .line 445
    .local v11, "mvnoType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v14, v0, v11}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 446
    .local v10, "mvnoPattern":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v10    # "mvnoPattern":Ljava/lang/String;
    .end local v11    # "mvnoType":Ljava/lang/String;
    .end local v14    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_2
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/extrasettings/ApnEditor;->mSourceType:I

    .line 457
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v12    # "numeric":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0xe

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 458
    .local v4, "authVal":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_5

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 464
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x13

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v18, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x12

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/extrasettings/ApnEditor;->sProjection:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setPreferenceTextAndSummary(ILjava/lang/String;)V

    .line 474
    .end local v4    # "authVal":I
    .end local v13    # "strType":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "authVal":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 489
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 490
    .local v5, "authValIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f0b0017

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 493
    .local v15, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    aget-object v17, v15, v5

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    .end local v5    # "authValIndex":I
    .end local v15    # "values":[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d000c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 509
    .local v6, "ceEditable":Z
    if-eqz v6, :cond_8

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 435
    .end local v4    # "authVal":Ljava/lang/String;
    .end local v6    # "ceEditable":Z
    .restart local v3    # "apnType":Ljava/lang/String;
    .restart local v12    # "numeric":Ljava/lang/String;
    .restart local v13    # "strType":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    move-object/from16 v16, v0

    const-string v17, "default"

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/apn/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    move-object/from16 v16, v0

    const-string v17, "default"

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/apn/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 451
    :catch_0
    move-exception v7

    .line 452
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v16, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RemoteException "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 461
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v12    # "numeric":Ljava/lang/String;
    .local v4, "authVal":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 466
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 495
    .end local v13    # "strType":Ljava/lang/String;
    .local v4, "authVal":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/extrasettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 512
    .restart local v6    # "ceEditable":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 800
    const/4 v2, 0x0

    .line 802
    .local v2, "errorMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "apn":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "mcc":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "mnc":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v6}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "apnType":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 811
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0904e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 820
    :cond_0
    :goto_0
    return-object v2

    .line 812
    :cond_1
    const-string v6, "ia"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_2

    .line 813
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0904e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 815
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0904e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 816
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const v7, 0xfffe

    and-int/2addr v6, v7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 817
    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0904ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 964
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 965
    .local v1, "mvnoIndex":I
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, "oldValue":Ljava/lang/String;
    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 983
    :goto_0
    return-object v6

    .line 970
    :cond_0
    :try_start_0
    const-string v7, "phoneEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v5

    .line 972
    .local v5, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 973
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoTypeValues:[Ljava/lang/String;

    aget-object v3, v7, v1

    .line 974
    .local v3, "mvnoType":Ljava/lang/String;
    iget v7, p0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    invoke-interface {v5, v7, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, "mvnoPattern":Ljava/lang/String;
    sget-object v7, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mvnoType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , mvnoPattern = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 978
    .end local v2    # "mvnoPattern":Ljava/lang/String;
    .end local v3    # "mvnoType":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoTypeEntries:[Ljava/lang/String;

    aget-object v6, v7, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 979
    .end local v5    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 981
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 982
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 522
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 523
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 530
    :goto_0
    return-object v3

    .line 526
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private radioOffExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->finish()V

    .line 961
    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 875
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 876
    :cond_0
    sget-object v2, Lcom/android/extrasettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 882
    :goto_0
    return-object v2

    .line 878
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 879
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 880
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 882
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private updateMccMncForSvlte(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "subId"    # I
    .param p2, "iccNumeric"    # Ljava/lang/String;

    .prologue
    .line 1004
    move-object v0, p2

    .line 1005
    .local v0, "apnNumeric":Ljava/lang/String;
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_SVLTE_SUPPORT:Z

    if-nez v5, :cond_0

    move-object v1, v0

    .line 1035
    .end local v0    # "apnNumeric":Ljava/lang/String;
    .local v1, "apnNumeric":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1008
    .end local v1    # "apnNumeric":Ljava/lang/String;
    .restart local v0    # "apnNumeric":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/FeatureOption;->getExternalModemSlot()I

    move-result v2

    .line 1009
    .local v2, "c2kSlot":I
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lte_on_cdma_rat_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1013
    .local v4, "svlteRatMode":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v5

    if-ne v5, v2, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 1016
    if-eqz p2, :cond_3

    const-string v5, "46003"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "46011"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1018
    :cond_1
    const-string v5, "gsm.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1026
    .local v3, "operatorNumeric":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v5, "46011"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1027
    const-string v0, "46011"

    .line 1031
    :cond_2
    :goto_1
    sget-object v5, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMccMncForSvlte iccNumeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", apnNumeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "operatorNumeric":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 1035
    .end local v0    # "apnNumeric":Ljava/lang/String;
    .restart local v1    # "apnNumeric":Ljava/lang/String;
    goto :goto_0

    .line 1028
    .end local v1    # "apnNumeric":Ljava/lang/String;
    .restart local v0    # "apnNumeric":Ljava/lang/String;
    .restart local v3    # "operatorNumeric":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_2

    const-string v5, "46003"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1029
    const-string v0, "46003"

    goto :goto_1
.end method

.method private validateAndSave(Z)Z
    .locals 13
    .param p1, "force"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 708
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "apn":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, "mcc":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, "mnc":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/extrasettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    if-nez p1, :cond_1

    .line 714
    invoke-virtual {p0, v7}, Lcom/android/extrasettings/ApnEditor;->showDialog(I)V

    .line 796
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 718
    .restart local v5    # "name":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    if-nez v9, :cond_2

    .line 719
    sget-object v8, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v9, p0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    .line 726
    iget-object v8, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 728
    iput-object v12, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 733
    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 737
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090814

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v9, "apn"

    invoke-virtual {v6, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v9, "proxy"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v9, "port"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v9, "mmsproxy"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v9, "mmsport"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v9, "user"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v9, "server"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v9, "password"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v9, "mmsc"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 751
    const-string v9, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    :cond_5
    const-string v9, "protocol"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v9, "roaming_protocol"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v10}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v9, "mcc"

    invoke-virtual {v6, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v9, "mnc"

    invoke-virtual {v6, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v9, "numeric"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 766
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 767
    const-string v9, "current"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    :cond_6
    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "bearerVal":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 773
    const-string v9, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    :cond_7
    const-string v9, "mvno_type"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v9, "mvno_match_data"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/extrasettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v9, "carrier_enabled"

    iget-object v10, p0, Lcom/android/extrasettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_8

    move v7, v8

    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    const-string v7, "sourcetype"

    iget v9, p0, Lcom/android/extrasettings/ApnEditor;->mSourceType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v7, v6}, Lcom/mediatek/settings/ext/IApnSettingsExt;->saveApnValues(Landroid/content/ContentValues;)V

    .line 787
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_9

    .line 788
    sget-object v7, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "former inserted URI was already deleted, insert a new one"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 791
    :cond_9
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_a

    .line 792
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v9, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a
    move v7, v8

    .line 796
    goto/16 :goto_0
.end method


# virtual methods
.method public onChange(IZ)V
    .locals 3
    .param p1, "msimModevalue"    # I
    .param p2, "selfChange"    # Z

    .prologue
    .line 992
    sget-object v0, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiver, new dual sim mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    if-nez p1, :cond_0

    .line 994
    invoke-direct {p0}, Lcom/android/extrasettings/ApnEditor;->radioOffExit()V

    .line 996
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 246
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 248
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->addPreferencesFromResource(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0904c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/extrasettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 251
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 252
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 253
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 254
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 255
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 256
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 257
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 258
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 259
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 260
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 261
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 262
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 265
    const-string v2, "apn_type_list"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apn/ApnTypePreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    .line 266
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/apn/ApnTypePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 270
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 273
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 276
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 278
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    .line 280
    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 281
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    const-string v2, "mvno_type"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 284
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    const-string v2, "mvno_match_data"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 287
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 288
    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 290
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 291
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "action":Ljava/lang/String;
    const-string v2, "sub_id"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    .line 294
    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/extrasettings/ApnEditor;->mFirstTime:Z

    .line 296
    sget-object v2, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate().. mSubId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->newInstance(Landroid/app/Activity;)Lcom/mediatek/settings/sim/SimHotSwapHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 298
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v2}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSubscriptionsChangedListener()V

    .line 300
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 302
    const-string v2, "readOnly"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/extrasettings/ApnEditor;->mReadOnlyMode:Z

    .line 303
    sget-object v2, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read only mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/extrasettings/ApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_1
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 334
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    sget-object v4, Lcom/android/extrasettings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/extrasettings/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v4, p0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizePreference(ILandroid/preference/PreferenceScreen;)V

    .line 338
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0059

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoTypeEntries:[Ljava/lang/String;

    .line 339
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b005a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoTypeValues:[Ljava/lang/String;

    .line 341
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/extrasettings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v8, v8}, Lcom/android/extrasettings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 342
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 344
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 346
    invoke-direct {p0}, Lcom/android/extrasettings/ApnEditor;->fillUi()V

    .line 348
    iget-boolean v2, p0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/extrasettings/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    :cond_0
    new-instance v2, Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mRadioValueObserver:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    .line 353
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mRadioValueObserver:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->registerMsimObserver(Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;)V

    .line 355
    :goto_2
    return-void

    :cond_1
    move v2, v4

    .line 294
    goto/16 :goto_0

    .line 304
    :cond_2
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 305
    iget-boolean v2, p0, Lcom/android/extrasettings/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_3

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 306
    :cond_3
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v2, p0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 311
    :goto_3
    iput-boolean v3, p0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    .line 315
    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 316
    sget-object v2, Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->finish()V

    goto :goto_2

    .line 308
    :cond_4
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 324
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Lcom/android/extrasettings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 327
    :cond_6
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->finish()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0904e6

    const v3, 0x104000a

    .line 826
    if-nez p1, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/android/extrasettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 851
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 835
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 836
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090119

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/extrasettings/ApnEditor$3;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/ApnEditor$3;-><init>(Lcom/android/extrasettings/ApnEditor;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09024b

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 851
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 634
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 635
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnEditor;->mReadOnlyMode:Z

    if-eqz v0, :cond_0

    .line 648
    :goto_0
    return v3

    .line 639
    :cond_0
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/extrasettings/ApnEditor;->mSourceType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->defaultApnCanDelete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    :cond_1
    const v0, 0x7f0904e2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 644
    :cond_2
    const/4 v0, 0x2

    const v1, 0x7f0904e4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 646
    const/4 v0, 0x3

    const v1, 0x7f0904e5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSubscriptionsChangedListener()V

    .line 941
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mRadioValueObserver:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->ungisterMsimObserver()V

    .line 942
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 943
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 677
    packed-switch p1, :pswitch_data_0

    .line 685
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 679
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->finish()V

    .line 682
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 947
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 949
    if-eqz p2, :cond_0

    .line 950
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnEditor;->mReadOnlyMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v3, p0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    invoke-interface {v0, v3, p0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p2, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 953
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 950
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 653
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 672
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 655
    :pswitch_0
    invoke-direct {p0}, Lcom/android/extrasettings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 659
    :pswitch_1
    iget v1, p0, Lcom/android/extrasettings/ApnEditor;->mSourceType:I

    if-nez v1, :cond_1

    .line 660
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/ApnEditor;->showDialog(I)V

    goto :goto_0

    .line 661
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/extrasettings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->finish()V

    goto :goto_0

    .line 666
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/extrasettings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 667
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 669
    :cond_2
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->finish()V

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 379
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/ApnEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 381
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 585
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "key":Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 588
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 589
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 591
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0017

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 592
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 593
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v7, v8

    .line 594
    goto :goto_1

    .line 596
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 597
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/extrasettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 598
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 599
    goto :goto_1

    .line 601
    :cond_2
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 602
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 603
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 604
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/extrasettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 605
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 606
    goto :goto_1

    .line 608
    :cond_4
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 609
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 610
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v7, "bearer"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 611
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/extrasettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    move v7, v8

    .line 613
    goto :goto_1

    .line 615
    :cond_6
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 616
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 617
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, p2

    .line 618
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/extrasettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    move v7, v8

    .line 620
    goto :goto_1

    .line 622
    :cond_8
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 623
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 625
    .end local v4    # "mvno":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_9
    const-string v7, "apn_type_list"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 626
    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    iget-object v8, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v8}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/apn/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 856
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 858
    if-nez p1, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/android/extrasettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 862
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 865
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 359
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 360
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/extrasettings/ApnEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/extrasettings/ApnEditor;->mReadOnlyMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v2, p0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    invoke-interface {v0, v2, p0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 365
    iget v0, p0, Lcom/android/extrasettings/ApnEditor;->mSourceType:I

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v1, p0, Lcom/android/extrasettings/ApnEditor;->mSubId:I

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateFieldsStatus(ILandroid/preference/PreferenceScreen;)V

    .line 368
    :cond_0
    const-string v0, "tethering"

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v1}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setApnTypePreferenceState(Landroid/preference/Preference;)V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setMVNOPreferenceState(Landroid/preference/Preference;)V

    .line 372
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setMVNOPreferenceState(Landroid/preference/Preference;)V

    .line 373
    return-void

    .line 363
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 691
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/extrasettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 695
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/extrasettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 699
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f090118

    const/4 v7, 0x1

    .line 903
    invoke-virtual {p0, p2}, Lcom/android/extrasettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 904
    .local v4, "pref":Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 905
    iget-object v5, p0, Lcom/android/extrasettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 906
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/extrasettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v5, p0, Lcom/android/extrasettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 908
    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 910
    :cond_2
    iget-object v5, p0, Lcom/android/extrasettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 911
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, "portStr":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 914
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 915
    .local v2, "portNum":I
    const v5, 0xffff

    if-gt v2, v5, :cond_3

    if-gtz v2, :cond_4

    .line 916
    :cond_3
    const v5, 0x7f090118

    invoke-virtual {p0, v5}, Lcom/android/extrasettings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 918
    move-object v0, v4

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v2    # "portNum":I
    :cond_4
    :goto_1
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 920
    :catch_0
    move-exception v1

    .line 921
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0, v8}, Lcom/android/extrasettings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move-object v5, v4

    .line 923
    check-cast v5, Landroid/preference/EditTextPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 929
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "portStr":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/extrasettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
