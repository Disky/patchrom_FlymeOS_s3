.class public Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "BatterySaverSettings.java"

# interfaces
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;,
        Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;

.field private final mSettingsObserver:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;

.field private final mStartMode:Ljava/lang/Runnable;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mTriggerPref:Lcom/android/extrasettings/notification/SettingPref;

.field private final mUpdateSwitch:Ljava/lang/Runnable;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "BatterySaverSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;-><init>(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    .line 58
    new-instance v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$1;)V

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;

    .line 163
    new-instance v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$2;-><init>(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$3;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$3;-><init>(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    .line 203
    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->updateSwitch()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)Lcom/android/extrasettings/notification/SettingPref;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/extrasettings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private trySetPowerSaveMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    sget-boolean v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BatterySaverSettings"

    const-string v1, "Setting mode failed, fallback to current value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    :cond_1
    return-void
.end method

.method private updateSwitch()V
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 150
    .local v0, "mode":Z
    sget-boolean v1, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BatterySaverSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSwitch: isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-boolean v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    iget-boolean v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    iget-boolean v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 99
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean v2, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mCreated:Z

    .line 76
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 80
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->getSwitch()Lcom/android/extrasettings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    .line 81
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 83
    new-instance v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$1;

    const-string v3, "turn_on_automatically"

    const-string v4, "low_power_trigger_level"

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0b0091

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$1;-><init>(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/extrasettings/notification/SettingPref;

    .line 96
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/extrasettings/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/notification/SettingPref;->init(Lcom/android/extrasettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 98
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 104
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 124
    iget-boolean v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 126
    iput-boolean v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 128
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 112
    iget-boolean v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 114
    iput-boolean v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->updateSwitch()V

    .line 117
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-boolean v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BatterySaverSettings"

    const-string v1, "Stopping low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    goto :goto_0
.end method
