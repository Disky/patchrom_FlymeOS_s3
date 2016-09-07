.class public Lcom/android/extrasettings/wifi/WifiApEnabler;
.super Landroid/app/Fragment;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mTetherChoice:I

.field private mTetherSettingsEx:Lcom/mediatek/settings/TetherSettingsExt;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 84
    new-instance v0, Lcom/android/extrasettings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wifi/WifiApEnabler$1;-><init>(Lcom/android/extrasettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 84
    new-instance v0, Lcom/android/extrasettings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wifi/WifiApEnabler$1;-><init>(Lcom/android/extrasettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 114
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 115
    if-eqz p2, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 119
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 120
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 122
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->commitFragment()V

    .line 129
    return-void

    .line 114
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/extrasettings/widget/SwitchBar;Landroid/content/Context;)V
    .locals 1
    .param p1, "switchBar"    # Lcom/android/extrasettings/widget/SwitchBar;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 84
    new-instance v0, Lcom/android/extrasettings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wifi/WifiApEnabler$1;-><init>(Lcom/android/extrasettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-object p2, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 138
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 139
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setupSwitchBar()V

    .line 140
    invoke-virtual {p0, p2}, Lcom/android/extrasettings/wifi/WifiApEnabler;->init(Landroid/content/Context;)V

    .line 142
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->commitFragment()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/wifi/WifiApEnabler;->updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiApEnabler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method private commitFragment()V
    .locals 2

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 505
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const-string v1, "WifiApEnabler"

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 506
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 509
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private enableWifiSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 196
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    .line 197
    invoke-direct {p0, v1}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 204
    :goto_1
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    .line 199
    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 358
    packed-switch p1, :pswitch_data_0

    .line 396
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 361
    invoke-direct {p0, v7}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setStartTime(Z)V

    .line 362
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v5, 0x7f090403

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 371
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 372
    .local v2, "eableEndTime":J
    const-string v4, "WifiHotspotPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][wifi hotspot] wifi hotspot turn on end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0, v8}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 374
    invoke-direct {p0, v8}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 375
    invoke-direct {p0, v8}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setStartTime(Z)V

    goto :goto_0

    .line 378
    .end local v2    # "eableEndTime":J
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 379
    invoke-direct {p0, v7}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 380
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v4, :cond_0

    .line 381
    const-string v4, "WifiApEnabler"

    const-string v5, "wifi_stopping"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v5, 0x7f090404

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 386
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 387
    .local v0, "disableEndTime":J
    const-string v4, "WifiHotspotPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][wifi hotspot] wifi hotspot turn off end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0, v7}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 389
    invoke-direct {p0, v8}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 390
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v4, :cond_1

    .line 391
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto/16 :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendBroadcast()V
    .locals 2

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.wifi.tethered_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "wifiTetherIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    return-void
.end method

.method private setStartTime(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 484
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 486
    .local v2, "startTime":J
    if-eqz p1, :cond_1

    .line 487
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 488
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 490
    const-string v4, "WifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    const-wide/16 v0, 0x0

    .line 494
    .local v0, "newValue":J
    const-string v4, "WifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 402
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 407
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->sendBroadcast()V

    .line 408
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchChecked checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 410
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 413
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 420
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 421
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 459
    iput p1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 460
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0, v0, v4}, Lcom/android/extrasettings/wifi/WifiApEnabler;->startActivityForResult(Landroid/content/Intent;I)V

    .line 464
    const-string v1, "WifiApEnabler"

    const-string v2, "startProvisioningIfNecessary, startActivityForResult"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mTetherChoice:I

    if-nez v0, :cond_0

    .line 479
    const-string v0, "WifiApEnabler"

    const-string v1, "startTethering, setSoftapEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 482
    :cond_0
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 327
    const/4 v11, 0x0

    .line 328
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 330
    .local v10, "wifiErrored":Z
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 331
    check-cast v8, Ljava/lang/String;

    .line 332
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 333
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 334
    const/4 v11, 0x1

    .line 332
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 330
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 338
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 339
    check-cast v8, Ljava/lang/String;

    .line 340
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 341
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 342
    const/4 v10, 0x1

    .line 340
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 338
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 347
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 348
    iget-object v12, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 349
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/extrasettings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 355
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 350
    :cond_7
    if-eqz v10, :cond_6

    .line 351
    iget-object v12, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v12, :cond_6

    .line 352
    iget-object v12, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v13, 0x7f090368

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4
.end method

.method private updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 19
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 254
    const/4 v15, 0x0

    .line 255
    .local v15, "wifiTethered":Z
    const/4 v14, 0x0

    .line 257
    .local v14, "wifiErrored":Z
    const/4 v12, 0x0

    .line 258
    .local v12, "wifiErrorIpv4":I
    const/16 v13, 0x10

    .line 259
    .local v13, "wifiErrorIpv6":I
    move-object/from16 v1, p1

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v1, v4

    .local v7, "o":Ljava/lang/Object;
    move-object v9, v7

    .line 260
    check-cast v9, Ljava/lang/String;

    .line 261
    .local v9, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v2, v3

    .line 262
    .local v8, "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 263
    if-nez v12, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    and-int/lit8 v12, v16, 0xf

    .line 266
    :cond_0
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v13, v0, :cond_1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v13, v0, 0xf0

    .line 261
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 259
    .end local v8    # "regex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 273
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    move-object/from16 v1, p2

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v7, v1, v4

    .restart local v7    # "o":Ljava/lang/Object;
    move-object v9, v7

    .line 274
    check-cast v9, Ljava/lang/String;

    .line 275
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v6, :cond_5

    aget-object v8, v2, v3

    .line 276
    .restart local v8    # "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 277
    const/4 v15, 0x1

    .line 278
    sget-boolean v16, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v16, :cond_4

    .line 279
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v13, v0, :cond_4

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v13, v0, 0xf0

    .line 275
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 273
    .end local v8    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_2

    .line 287
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "s":Ljava/lang/String;
    :cond_6
    move-object/from16 v1, p3

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v5, :cond_9

    aget-object v7, v1, v4

    .restart local v7    # "o":Ljava/lang/Object;
    move-object v9, v7

    .line 288
    check-cast v9, Ljava/lang/String;

    .line 289
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_5
    if-ge v3, v6, :cond_8

    aget-object v8, v2, v3

    .line 290
    .restart local v8    # "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 291
    const/4 v14, 0x1

    .line 289
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 287
    .end local v8    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_4

    .line 296
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v15, :cond_c

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 298
    .local v11, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/extrasettings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10404c1

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 301
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f090405

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    if-nez v11, :cond_b

    .end local v9    # "s":Ljava/lang/String;
    :goto_6
    aput-object v9, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, "tetheringActive":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mTetherSettingsEx:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mTetherSettingsEx:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/mediatek/settings/TetherSettingsExt;->getIPV6String(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    .end local v10    # "tetheringActive":Ljava/lang/String;
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    :goto_7
    return-void

    .line 301
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    iget-object v9, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 309
    .end local v9    # "s":Ljava/lang/String;
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    if-eqz v14, :cond_a

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const v17, 0x7f090368

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_7
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 160
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 162
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 165
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 170
    return-void
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 456
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 470
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 471
    if-nez p1, :cond_0

    .line 472
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->startTethering()V

    .line 476
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_tether_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->sendBroadcast()V

    .line 426
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 427
    .local v0, "isChecked":Z
    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange, isChecked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-eqz v0, :cond_1

    .line 429
    invoke-direct {p0, v4}, Lcom/android/extrasettings/wifi/WifiApEnabler;->startProvisioningIfNecessary(I)V

    .line 437
    .end local v0    # "isChecked":Z
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 431
    .restart local v0    # "isChecked":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/extrasettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 434
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->sendBroadcast()V

    .line 444
    iget-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 447
    :cond_0
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged, isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    if-eqz p2, :cond_1

    .line 449
    invoke-direct {p0, v3}, Lcom/android/extrasettings/wifi/WifiApEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 181
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public setSoftapEnabled(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 207
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 211
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 212
    .local v3, "wifiState":I
    if-eqz p1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 214
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 215
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    :cond_1
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 219
    invoke-direct {p0, v6}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 229
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 236
    :goto_1
    if-ne v2, v7, :cond_3

    .line 237
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 238
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    .end local v2    # "wifiSavedState":I
    :cond_3
    return-void

    .line 221
    :cond_4
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 222
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v5, 0x7f090368

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 233
    .restart local v2    # "wifiSavedState":I
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "WifiApEnabler"

    const-string v5, "SettingNotFoundException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 148
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 153
    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 244
    const-string v1, "wlan"

    const-string v2, "SSID"

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v4, 0x10404c1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090405

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void

    .line 248
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
