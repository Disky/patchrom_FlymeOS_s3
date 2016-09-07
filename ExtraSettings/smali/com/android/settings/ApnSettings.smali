.class public Lcom/android/extrasettings/ApnSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/ApnSettings$3;,
        Lcom/android/extrasettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mListener:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRadioValueObserver:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

.field private mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

.field private mRestoreApnProcessHandler:Lcom/android/extrasettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/extrasettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 99
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/extrasettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/android/extrasettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/ApnSettings$1;-><init>(Lcom/android/extrasettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/extrasettings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/ApnSettings$2;-><init>(Lcom/android/extrasettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mListener:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    .line 510
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/extrasettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/ApnSettings;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/extrasettings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/ApnSettings;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnSettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/extrasettings/ApnSettings;)Lcom/mediatek/settings/ext/IApnSettingsExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnSettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    return-object v0
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/extrasettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/extrasettings/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/ApnSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/extrasettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 407
    .local v1, "subId":I
    :goto_0
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v2, v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->addApnTypeExtra(Landroid/content/Intent;)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 412
    return-void

    .line 405
    .end local v1    # "subId":I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private fillList()V
    .locals 23

    .prologue
    .line 272
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    .line 273
    .local v21, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_1

    const-string v13, ""

    .line 275
    .local v13, "mccmnc":Ljava/lang/String;
    :goto_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v13, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getFillListQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "where":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND NOT (type=\'ia\' AND (apn=\'\' OR apn IS NULL))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_VOLTE_SUPPORT:Z

    if-nez v2, :cond_0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND NOT type=\'ims\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    :cond_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList where: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "sourcetype"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 288
    .local v10, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v2, v3, v10, v4, v13}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeQueryResult(Landroid/app/Activity;Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 291
    if-eqz v10, :cond_9

    .line 292
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList cursor count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 294
    .local v9, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 296
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v14, "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 299
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList getSelectedApnKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v19, 0x0

    .line 302
    .local v19, "selectedKey":Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 303
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 304
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 305
    .local v15, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, "key":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 308
    .local v22, "type":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 310
    .local v20, "sourcetype":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/ApnSettings;->mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->isSkipApn(Ljava/lang/String;Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 273
    .end local v5    # "where":Ljava/lang/String;
    .end local v8    # "apn":Ljava/lang/String;
    .end local v9    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "mccmnc":Ljava/lang/String;
    .end local v14    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v15    # "name":Ljava/lang/String;
    .end local v19    # "selectedKey":Ljava/lang/String;
    .end local v20    # "sourcetype":I
    .end local v22    # "type":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 314
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v8    # "apn":Ljava/lang/String;
    .restart local v9    # "apnList":Landroid/preference/PreferenceGroup;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "mccmnc":Ljava/lang/String;
    .restart local v14    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v19    # "selectedKey":Ljava/lang/String;
    .restart local v20    # "sourcetype":I
    .restart local v22    # "type":Ljava/lang/String;
    :cond_2
    new-instance v16, Lcom/android/extrasettings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/extrasettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 316
    .local v16, "pref":Lcom/android/extrasettings/ApnPreference;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/extrasettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/extrasettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/ApnPreference;->setPersistent(Z)V

    .line 320
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v2, v0, v8, v13, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/ApnPreference;->setApnEditable(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/ApnPreference;->setSubId(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->isSelectable(Ljava/lang/String;)Z

    move-result v18

    .line 327
    .local v18, "selectable":Z
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/ApnPreference;->setSelectable(Z)V

    .line 328
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v18, :cond_5

    .line 330
    if-nez v19, :cond_3

    .line 331
    invoke-virtual/range {v16 .. v16}, Lcom/android/extrasettings/ApnPreference;->setChecked()V

    .line 332
    move-object/from16 v19, v12

    .line 334
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 335
    invoke-virtual/range {v16 .. v16}, Lcom/android/extrasettings/ApnPreference;->setChecked()V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 338
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 340
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 344
    .end local v8    # "apn":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "pref":Lcom/android/extrasettings/ApnPreference;
    .end local v18    # "selectable":Z
    .end local v20    # "sourcetype":I
    .end local v22    # "type":Ljava/lang/String;
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 346
    if-eqz v19, :cond_7

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/extrasettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 350
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/preference/Preference;

    .line 351
    .local v17, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 353
    .end local v17    # "preference":Landroid/preference/Preference;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 356
    .end local v9    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v19    # "selectedKey":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 166
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 168
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getPreferredSubId()I
    .locals 9

    .prologue
    .line 572
    iget-object v6, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 573
    .local v3, "subId":I
    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_SVLTE_SUPPORT:Z

    if-nez v6, :cond_0

    move v4, v3

    .line 595
    .end local v3    # "subId":I
    .local v4, "subId":I
    :goto_0
    return v4

    .line 576
    .end local v4    # "subId":I
    .restart local v3    # "subId":I
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/FeatureOption;->getExternalModemSlot()I

    move-result v0

    .line 577
    .local v0, "c2kSlot":I
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_on_cdma_rat_mode"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 581
    .local v5, "svlteRatMode":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    if-ne v6, v0, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 583
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "numeric":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, "46003"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string v6, "46011"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 586
    :cond_2
    const-string v6, "gsm.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "operatorNumeric":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v6, "46011"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 590
    const/16 v3, -0x3e7

    .line 591
    const-string v6, "ApnSettings"

    const-string v7, "getPreferredSubId subId will use LTE_DC_SUB_ID"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "numeric":Ljava/lang/String;
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_3
    move v4, v3

    .line 595
    .end local v3    # "subId":I
    .restart local v4    # "subId":I
    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 438
    const/4 v7, 0x0

    .line 442
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-direct {p0}, Lcom/android/extrasettings/ApnSettings;->getPreferredSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getRestoreCarrierUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 446
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 451
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedApnKey key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-object v7
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 456
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/ApnSettings;->showDialog(I)V

    .line 457
    sput-boolean v3, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 459
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/extrasettings/ApnSettings;Lcom/android/extrasettings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/extrasettings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 465
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 467
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 468
    new-instance v0, Lcom/android/extrasettings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/extrasettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/extrasettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/extrasettings/ApnSettings$RestoreApnProcessHandler;

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/extrasettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/extrasettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 474
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 426
    iput-object p1, p0, Lcom/android/extrasettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/extrasettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-direct {p0}, Lcom/android/extrasettings/ApnSettings;->getPreferredSubId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getRestoreCarrierUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 203
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 206
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 207
    const v1, 0x7f09066b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iput-boolean v3, p0, Lcom/android/extrasettings/ApnSettings;->mUnavailable:Z

    .line 213
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_1
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->newInstance(Landroid/app/Activity;)Lcom/mediatek/settings/sim/SimHotSwapHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 222
    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSubscriptionsChangedListener()V

    goto :goto_0
.end method

.method public onChange(IZ)V
    .locals 4
    .param p1, "msimModevalue"    # I
    .param p2, "selfChange"    # Z

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 564
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 565
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 176
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sub_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "subId":I
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 181
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/UtilsExt;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 182
    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v2, p0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->initTetherField(Landroid/preference/PreferenceFragment;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/UtilsExt;->getRcseApnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    .line 184
    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    iget-object v3, p0, Lcom/android/extrasettings/ApnSettings;->mListener:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v2, v3}, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;->addRcseOnlyApnStateChanged(Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    .line 186
    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 187
    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_config_mobile_networks"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 191
    :cond_0
    invoke-static {v0, v1}, Lcom/android/extrasettings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 193
    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_1

    .line 194
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate()... Invalid subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 197
    :cond_1
    new-instance v2, Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mRadioValueObserver:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    .line 199
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 533
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 534
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 536
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 539
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 360
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v3, v4, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateMenu(Landroid/view/Menu;IILjava/lang/String;)V

    .line 374
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 375
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroy()V

    .line 263
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSubscriptionsChangedListener()V

    .line 265
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mListener:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;->removeRcseOnlyApnStateChanged(Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    .line 269
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 400
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 393
    :pswitch_0
    invoke-direct {p0}, Lcom/android/extrasettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-direct {p0}, Lcom/android/extrasettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 253
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getBroadcastReceiver(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRadioValueObserver:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->ungisterMsimObserver()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 415
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 419
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/extrasettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 422
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 379
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 380
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 381
    .local v1, "isOn":Z
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu isOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 384
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 386
    :cond_1
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 387
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 229
    iget-boolean v0, p0, Lcom/android/extrasettings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->showDialog(Landroid/app/Activity;I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getBroadcastReceiver(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mRadioValueObserver:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->registerMsimObserver(Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;)V

    .line 238
    sget-boolean v0, Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/android/extrasettings/ApnSettings;->fillList()V

    .line 242
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/ApnSettings;->removeDialog(I)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateTetherState(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/extrasettings/ApnSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/ApnSettings;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 508
    :cond_0
    return-void
.end method
