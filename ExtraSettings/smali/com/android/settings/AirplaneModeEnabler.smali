.class public Lcom/android/extrasettings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/mediatek/settings/SubscriberPowerStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeSwitchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/extrasettings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/AirplaneModeEnabler$1;-><init>(Lcom/android/extrasettings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/extrasettings/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/AirplaneModeEnabler$2;-><init>(Lcom/android/extrasettings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 81
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 82
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/extrasettings/AirplaneModeEnabler;->initListener(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/AirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/AirplaneModeEnabler;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/extrasettings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/AirplaneModeEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/AirplaneModeEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private initListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/mediatek/settings/SubscriberPowerStateListener;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/SubscriberPowerStateListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener;

    .line 93
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener;

    new-instance v1, Lcom/android/extrasettings/AirplaneModeEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/AirplaneModeEnabler$3;-><init>(Lcom/android/extrasettings/AirplaneModeEnabler;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/SubscriberPowerStateListener;->setRadioPowerStateChangeListener(Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/extrasettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 171
    return-void
.end method

.method private registerSubState()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener;

    invoke-virtual {v0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->registerListener()V

    .line 159
    :cond_0
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    iget-object v1, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 144
    invoke-direct {p0}, Lcom/android/extrasettings/AirplaneModeEnabler;->registerSubState()V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 151
    return-void

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener;

    invoke-virtual {v0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->unRegisterListener()V

    .line 128
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 177
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 181
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 119
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/extrasettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 111
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0, p2}, Lcom/android/extrasettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public updateSubscribers()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener;

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "AirplaneModeEnabler"

    const-string v1, "updateSubscribers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener;

    invoke-virtual {v0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->updateSubscribers()V

    .line 207
    :cond_0
    return-void
.end method
