.class public final Lcom/android/extrasettings/wfd/WifiDisplaySettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;,
        Lcom/android/extrasettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;,
        Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;
    }
.end annotation


# instance fields
.field private mAutoGO:Z

.field private mCertCategory:Landroid/preference/PreferenceGroup;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

.field private final mHandler:Landroid/os/Handler;

.field private mListen:Z

.field private mListenChannel:I

.field private mOperatingChannel:I

.field private mPendingChanges:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStarted:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 119
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 675
    new-instance v0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 684
    new-instance v0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 694
    new-instance v0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 701
    new-instance v0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/extrasettings/wfd/WifiDisplaySettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method private buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 374
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    if-nez v9, :cond_1

    .line 375
    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    .line 376
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const v10, 0x7f090a87

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 377
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 381
    :goto_0
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 384
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 385
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 386
    .local v5, "p":Landroid/preference/Preference;
    const v9, 0x7f090a88

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 387
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 391
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v9

    if-eqz v9, :cond_0

    .line 392
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    new-instance v10, Lcom/android/extrasettings/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 429
    .end local v5    # "p":Landroid/preference/Preference;
    :cond_0
    new-instance v6, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 437
    .local v6, "pref":Landroid/preference/SwitchPreference;
    const v9, 0x7f090a89

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 438
    iget-boolean v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 439
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 442
    new-instance v6, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;

    .end local v6    # "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 454
    .restart local v6    # "pref":Landroid/preference/SwitchPreference;
    const v9, 0x7f090a8a

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 455
    iget-boolean v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 456
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 459
    new-instance v2, Lcom/android/extrasettings/wfd/WifiDisplaySettings$4;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, p0, v9}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 472
    .local v2, "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_display_wps_config"

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 474
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Default"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "PBC"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "KEYPAD"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-string v10, "DISPLAY"

    aput-object v10, v7, v9

    .line 475
    .local v7, "wpsEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "2"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 480
    .local v8, "wpsValues":[Ljava/lang/String;
    const v9, 0x7f090a8d

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 481
    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 484
    const-string v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 488
    new-instance v2, Lcom/android/extrasettings/wfd/WifiDisplaySettings$5;

    .end local v2    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, p0, v9}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 500
    .restart local v2    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v0, v9

    .line 501
    .local v0, "lcEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v1, v9

    .line 502
    .local v1, "lcValues":[Ljava/lang/String;
    const v9, 0x7f090a8e

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 503
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 505
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 506
    const-string v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 510
    new-instance v2, Lcom/android/extrasettings/wfd/WifiDisplaySettings$6;

    .end local v2    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, p0, v9}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 522
    .restart local v2    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x5

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v3, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v3, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v3, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v3, v9

    .line 523
    .local v3, "ocEntries":[Ljava/lang/String;
    const/4 v9, 0x5

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v4, v9

    .line 524
    .local v4, "ocValues":[Ljava/lang/String;
    const v9, 0x7f090a8f

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 525
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 528
    const-string v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 530
    return-void

    .line 379
    .end local v0    # "lcEntries":[Ljava/lang/String;
    .end local v1    # "lcValues":[Ljava/lang/String;
    .end local v2    # "lp":Landroid/preference/ListPreference;
    .end local v3    # "ocEntries":[Ljava/lang/String;
    .end local v4    # "ocValues":[Ljava/lang/String;
    .end local v6    # "pref":Landroid/preference/SwitchPreference;
    .end local v7    # "wpsEntries":[Ljava/lang/String;
    .end local v8    # "wpsValues":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 355
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 356
    new-instance v1, Lcom/android/extrasettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    .line 358
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v4, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 364
    iget-object v4, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 365
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 364
    .restart local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->prepareWfdConnect()V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 639
    :cond_1
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 247
    iget v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 252
    :cond_1
    return-void
.end method

.method private setListenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/extrasettings/wfd/WifiDisplaySettings$9;

    invoke-direct {v2, p0, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 589
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/extrasettings/wfd/WifiDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 609
    return-void
.end method

.method private showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040102

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 643
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f100038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 644
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 646
    new-instance v1, Lcom/android/extrasettings/wfd/WifiDisplaySettings$11;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 657
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/extrasettings/wfd/WifiDisplaySettings$12;

    invoke-direct {v2, p0, p1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 665
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090350

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090352

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090351

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 672
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 673
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/extrasettings/wfd/WifiDisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 549
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/extrasettings/wfd/WifiDisplaySettings$8;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 568
    return-void
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    .line 613
    .local v0, "state":I
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current route status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 628
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v1, :cond_2

    .line 623
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->prepareWfdConnect()V

    .line 626
    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 257
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 15
    .param p1, "changes"    # I

    .prologue
    .line 262
    const/4 v6, 0x0

    .line 265
    .local v6, "invalidateOptions":Z
    and-int/lit8 v12, p1, 0x1

    if-eqz v12, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_display_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_display_certification_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_display_wps_config"

    const/4 v14, 0x4

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 274
    const/4 v6, 0x1

    .line 278
    :cond_0
    and-int/lit8 v12, p1, 0x4

    if-eqz v12, :cond_1

    .line 279
    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v12}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v12

    iput-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 282
    const/4 v6, 0x1

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 287
    .local v9, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, "category":Landroid/preference/PreferenceCategory;
    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v12, :cond_3

    .line 292
    iget-object v13, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v12

    const/4 v14, 0x3

    if-ne v12, v14, :cond_7

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v9, v12}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->addAdditionalPreference(Landroid/preference/PreferenceScreen;Z)Z

    move-result v0

    .line 295
    .local v0, "added":Z
    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 298
    .local v8, "pre":Landroid/preference/Preference;
    if-eqz v8, :cond_2

    instance-of v12, v8, Landroid/preference/PreferenceCategory;

    if-eqz v12, :cond_2

    move-object v2, v8

    .line 299
    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 302
    .end local v8    # "pre":Landroid/preference/Preference;
    :cond_2
    and-int/lit8 v12, p1, 0x4

    if-eqz v12, :cond_3

    .line 303
    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v13, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v12, v13}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->handleWfdStatusChanged(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 308
    .end local v0    # "added":Z
    :cond_3
    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v12}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v11

    .line 309
    .local v11, "routeCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v11, :cond_9

    .line 310
    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v12, v4}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v10

    .line 311
    .local v10, "route":Landroid/media/MediaRouter$RouteInfo;
    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 313
    if-nez v2, :cond_8

    .line 314
    invoke-direct {p0, v10}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 309
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 266
    .end local v2    # "category":Landroid/preference/PreferenceCategory;
    .end local v4    # "i":I
    .end local v9    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v10    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v11    # "routeCount":I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 268
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 292
    .restart local v2    # "category":Landroid/preference/PreferenceCategory;
    .restart local v9    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 316
    .restart local v4    # "i":I
    .restart local v10    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v11    # "routeCount":I
    :cond_8
    invoke-direct {p0, v10}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 323
    .end local v10    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_9
    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_d

    .line 326
    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .local v1, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v7, :cond_c

    aget-object v3, v1, v5

    .line 327
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 330
    if-nez v2, :cond_b

    .line 331
    new-instance v12, Lcom/android/extrasettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, p0, v13, v3}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 326
    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 334
    :cond_b
    new-instance v12, Lcom/android/extrasettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, p0, v13, v3}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v2, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 342
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_c
    iget-boolean v12, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v12, :cond_d

    .line 343
    invoke-direct {p0, v9}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 348
    .end local v1    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_d
    if-eqz v6, :cond_e

    .line 349
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 351
    :cond_e
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 151
    const v0, 0x7f090ae4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/settings/wfd/WfdSettingsExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    .local v0, "context":Landroid/content/Context;
    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 141
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 142
    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 143
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 145
    const v1, 0x7f060062

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const v1, 0x7f090349

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 217
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 218
    iget-boolean v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 221
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v2, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->onCreateOptionMenu(Landroid/view/Menu;Landroid/hardware/display/WifiDisplayStatus;)V

    .line 224
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 225
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->onOptionMenuSelected(Landroid/view/MenuItem;Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    :goto_0
    return v1

    .line 231
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 232
    iget-boolean v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 233
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    iget-boolean v4, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 231
    goto :goto_1

    .line 241
    :cond_2
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStart()V

    .line 166
    iput-boolean v6, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_wps_config"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    iget-object v2, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 183
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->update(I)V

    .line 185
    iget-object v2, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {v2}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->onStart()V

    .line 189
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStop()V

    .line 194
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 197
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->onStop()V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 206
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 208
    invoke-direct {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 209
    return-void
.end method
