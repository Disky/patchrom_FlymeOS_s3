.class public Lcom/android/extrasettings/WirelessSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/extrasettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/extrasettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDisableMobilePlan:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

.field private mNsdEnabler:Lcom/android/extrasettings/NsdEnabler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

.field private mTetherSettings:Landroid/preference/Preference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 602
    new-instance v0, Lcom/android/extrasettings/WirelessSettings$4;

    invoke-direct {v0}, Lcom/android/extrasettings/WirelessSettings$4;-><init>()V

    sput-object v0, Lcom/android/extrasettings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/WirelessSettings;->mDisableMobilePlan:Z

    .line 128
    new-instance v0, Lcom/android/extrasettings/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/WirelessSettings$1;-><init>(Lcom/android/extrasettings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    new-instance v0, Lcom/android/extrasettings/WirelessSettings$3;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/WirelessSettings$3;-><init>(Lcom/android/extrasettings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/WirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/WirelessSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/extrasettings/WirelessSettings;->updateMobileNetworkEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/WirelessSettings;)Lcom/android/extrasettings/AirplaneModeEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/WirelessSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/extrasettings/AirplaneModeEnabler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/extrasettings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/extrasettings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/android/extrasettings/WirelessSettings;->isAPKInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initSmsApplicationSetting()V
    .locals 10

    .prologue
    .line 248
    const-string v8, "initSmsApplicationSetting:"

    invoke-direct {p0, v8}, Lcom/android/extrasettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 253
    .local v7, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v1

    .line 254
    .local v1, "count":I
    new-array v5, v1, [Ljava/lang/String;

    .line 255
    .local v5, "packageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 256
    .local v3, "i":I
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 257
    .local v6, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v8, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v8, v5, v3

    .line 258
    add-int/lit8 v3, v3, 0x1

    .line 259
    goto :goto_0

    .line 260
    .end local v6    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    const/4 v2, 0x0

    .line 261
    .local v2, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 262
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 265
    :cond_1
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

    invoke-virtual {v8, v5, v2}, Lcom/android/extrasettings/AppListPreference;->setPackageNames([Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private static isAPKInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 702
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 704
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 294
    invoke-static {p0}, Lcom/android/extrasettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 298
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/extrasettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private updateMobileNetworkEnabled()V
    .locals 6

    .prologue
    .line 484
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 486
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 487
    .local v0, "callState":I
    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    .line 488
    .local v1, "simNum":I
    const-string v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-lez v1, :cond_0

    if-nez v0, :cond_0

    .line 490
    iget-object v3, p0, Lcom/android/extrasettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 231
    const-string v4, "updateSmsApplicationSetting:"

    invoke-direct {p0, v4}, Lcom/android/extrasettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 233
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/extrasettings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

    invoke-virtual {v4}, Lcom/android/extrasettings/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 237
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 238
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    iget-object v4, p0, Lcom/android/extrasettings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

    invoke-virtual {v4, v1}, Lcom/android/extrasettings/AppListPreference;->setValueIndex(I)V

    .line 240
    iget-object v4, p0, Lcom/android/extrasettings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

    iget-object v5, p0, Lcom/android/extrasettings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

    invoke-virtual {v5}, Lcom/android/extrasettings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/AppListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 237
    .restart local v1    # "i":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 586
    const v0, 0x7f090ad7

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 575
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 576
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 578
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/extrasettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/extrasettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 581
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 582
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super/range {p0 .. p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 311
    if-eqz p1, :cond_0

    .line 312
    const-string v18, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 314
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 316
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 317
    const-string v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 319
    const-string v18, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 321
    const v18, 0x7f060065

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 323
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 324
    .local v12, "myUserId":I
    if-eqz v12, :cond_12

    const/4 v8, 0x1

    .line 325
    .local v8, "isSecondaryUser":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    .line 327
    .local v7, "isRestrictedUser":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 328
    .local v2, "activity":Landroid/app/Activity;
    const-string v18, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 330
    const-string v18, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    .line 336
    .local v13, "nsd":Landroid/preference/SwitchPreference;
    const-string v18, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    .line 340
    new-instance v18, Lcom/android/extrasettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/extrasettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/extrasettings/AirplaneModeEnabler;

    .line 342
    const-string v18, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/extrasettings/AppListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

    .line 344
    if-eqz v7, :cond_13

    .line 345
    const-string v18, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 352
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "airplane_mode_toggleable_radios"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 359
    .local v17, "toggleable":Ljava/lang/String;
    if-nez v8, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x112005e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_14

    const/4 v9, 0x1

    .line 361
    .local v9, "isWimaxEnabled":Z
    :goto_2
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    const-string v19, "no_config_mobile_networks"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 363
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 364
    .local v16, "root":Landroid/preference/PreferenceScreen;
    const-string v18, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 365
    .local v15, "ps":Landroid/preference/Preference;
    if-eqz v15, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    .end local v15    # "ps":Landroid/preference/Preference;
    .end local v16    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_3
    if-eqz v17, :cond_3

    const-string v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 376
    :cond_3
    const-string v18, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v19, "toggle_airplane"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 379
    :cond_4
    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    const-string v19, "no_config_vpn"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 380
    :cond_5
    const-string v18, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 390
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/WirelessSettings;->mDisableMobilePlan:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 391
    const-string v18, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 397
    :cond_7
    if-nez v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    const-string v19, "no_config_mobile_networks"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 400
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    const-string v18, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 405
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0009

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 407
    .local v6, "isMobilePlanEnabled":Z
    if-nez v6, :cond_a

    .line 408
    const-string v18, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 409
    .local v14, "pref":Landroid/preference/Preference;
    if-eqz v14, :cond_a

    .line 410
    const-string v18, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 415
    .end local v14    # "pref":Landroid/preference/Preference;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->isSmsSupported()Z

    move-result v18

    if-nez v18, :cond_b

    .line 416
    const-string v18, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 420
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const-string v19, "android.hardware.type.television"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 421
    const-string v18, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 425
    :cond_c
    const-string v18, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 426
    .local v11, "mGlobalProxy":Landroid/preference/Preference;
    const-string v18, "device_policy"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 429
    .local v10, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v18

    if-nez v18, :cond_17

    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 434
    const-string v18, "connectivity"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 435
    const-string v18, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 437
    if-nez v8, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    const-string v19, "no_config_tethering"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 439
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 448
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1120067

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 451
    .local v5, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v5, :cond_f

    .line 452
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const-string v19, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 454
    const/4 v5, 0x0

    .line 460
    :cond_f
    :goto_6
    if-nez v8, :cond_10

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    const-string v19, "no_config_cell_broadcasts"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 462
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 463
    .restart local v16    # "root":Landroid/preference/PreferenceScreen;
    const-string v18, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 464
    .restart local v15    # "ps":Landroid/preference/Preference;
    if-eqz v15, :cond_11

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 468
    .end local v15    # "ps":Landroid/preference/Preference;
    .end local v16    # "root":Landroid/preference/PreferenceScreen;
    :cond_11
    const-string v18, "com.mediatek.rcse.RCSE_SETTINGS"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/extrasettings/WirelessSettings;->isAPKInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 469
    new-instance v4, Landroid/content/Intent;

    const-string v18, "com.mediatek.rcse.RCSE_SETTINGS"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v4, "intent":Landroid/content/Intent;
    const-string v18, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 476
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_7
    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 477
    return-void

    .line 324
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v5    # "isCellBroadcastAppLinkEnabled":Z
    .end local v6    # "isMobilePlanEnabled":Z
    .end local v7    # "isRestrictedUser":Z
    .end local v8    # "isSecondaryUser":Z
    .end local v9    # "isWimaxEnabled":Z
    .end local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v11    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v13    # "nsd":Landroid/preference/SwitchPreference;
    .end local v17    # "toggleable":Ljava/lang/String;
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 347
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v7    # "isRestrictedUser":Z
    .restart local v8    # "isSecondaryUser":Z
    .restart local v13    # "nsd":Landroid/preference/SwitchPreference;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/AppListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->initSmsApplicationSetting()V

    goto/16 :goto_1

    .line 359
    .restart local v17    # "toggleable":Ljava/lang/String;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 367
    .restart local v9    # "isWimaxEnabled":Z
    :cond_15
    if-eqz v17, :cond_16

    const-string v18, "wimax"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    if-eqz v9, :cond_2

    .line 369
    :cond_16
    const-string v18, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 370
    .restart local v15    # "ps":Landroid/preference/Preference;
    const-string v18, "toggle_airplane"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 430
    .end local v15    # "ps":Landroid/preference/Preference;
    .restart local v6    # "isMobilePlanEnabled":Z
    .restart local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v11    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 441
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/extrasettings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/extrasettings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_19

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_19
    const/16 v18, 0x0

    goto :goto_8

    .line 457
    .restart local v5    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v3

    .line 458
    .local v3, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 472
    .end local v3    # "ignored":Ljava/lang/IllegalArgumentException;
    :cond_1a
    const-string v18, "WirelessSettings"

    const-string v19, "com.mediatek.rcse.RCSE_SETTINGS is not installed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 271
    packed-switch p1, :pswitch_data_0

    .line 286
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 273
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/extrasettings/WirelessSettings$2;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/WirelessSettings$2;-><init>(Lcom/android/extrasettings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 566
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroy()V

    .line 567
    const-string v0, "WirelessSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/extrasettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/extrasettings/AirplaneModeEnabler;->destroy()V

    .line 571
    return-void
.end method

.method public onManageMobilePlanClick()V
    .locals 12

    .prologue
    const v9, 0x7f090a6c

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 166
    const-string v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/extrasettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 167
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 170
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 171
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    .line 173
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 178
    const-string v8, "WirelessSettings"

    const-string v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v5}, Lcom/android/extrasettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 228
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 186
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 188
    const-string v8, "android.intent.action.MAIN"

    const-string v9, "android.intent.category.APP_BROWSER"

    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 190
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/extrasettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/extrasettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v11}, Lcom/android/extrasettings/WirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 195
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 204
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 206
    const v8, 0x7f090a6b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 209
    :cond_4
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 213
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 217
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_7

    .line 219
    const v8, 0x7f090a6d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 222
    :cond_7
    const v8, 0x7f090a6e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 547
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 549
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 551
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 553
    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 556
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/extrasettings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/extrasettings/AirplaneModeEnabler;->pause()V

    .line 558
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mNsdEnabler:Lcom/android/extrasettings/NsdEnabler;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mNsdEnabler:Lcom/android/extrasettings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/extrasettings/NsdEnabler;->pause()V

    .line 562
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/extrasettings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/extrasettings/AppListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 592
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 593
    invoke-direct {p0}, Lcom/android/extrasettings/WirelessSettings;->updateSmsApplicationSetting()V

    .line 594
    const/4 v0, 0x1

    .line 596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/extrasettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/extrasettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_0
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->onManageMobilePlanClick()V

    .line 161
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 518
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 520
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/extrasettings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/extrasettings/AirplaneModeEnabler;->resume()V

    .line 522
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mNsdEnabler:Lcom/android/extrasettings/NsdEnabler;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mNsdEnabler:Lcom/android/extrasettings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/extrasettings/NsdEnabler;->resume()V

    .line 527
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 529
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 531
    invoke-direct {p0}, Lcom/android/extrasettings/WirelessSettings;->updateMobileNetworkEnabled()V

    .line 532
    invoke-virtual {p0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/extrasettings/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 534
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 540
    iget-object v0, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 511
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStart()V

    .line 513
    invoke-direct {p0}, Lcom/android/extrasettings/WirelessSettings;->initSmsApplicationSetting()V

    .line 514
    return-void
.end method
