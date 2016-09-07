.class public Lcom/android/extrasettings/deviceinfo/UsbSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbAccessoryMode:Z

.field private mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/extrasettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/UsbSettings;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/extrasettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/UsbSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 74
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 77
    :cond_0
    const v2, 0x7f060053

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 78
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->addUsbSettingsItem(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 81
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->updateEnableStatus(Z)V

    .line 85
    :cond_1
    return-object v0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-virtual {v1, p1}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->updateCheckedStatus(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 119
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "UsbSettings"

    const-string v2, "USB is locked down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->updateEnableStatus(Z)V

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-virtual {v1, p1}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->setCurrentFunction(Ljava/lang/String;)V

    .line 132
    return-void

    .line 122
    :cond_0
    iget-boolean v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v1, :cond_1

    .line 124
    const-string v1, "UsbSettings"

    const-string v2, "USB Normal Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->updateEnableStatus(Z)V

    goto :goto_0

    .line 127
    :cond_1
    const-string v1, "UsbSettings"

    const-string v2, "USB Accessory Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->updateEnableStatus(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 92
    new-instance v0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-direct {v0}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 98
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 139
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v5

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 145
    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_usb_file_transfer"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-virtual {v3, p1}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->getFunction(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "function":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-virtual {v3, p1}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->isMakeDefault(Landroid/preference/Preference;)Z

    move-result v1

    .line 151
    .local v1, "makeDefault":Z
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 152
    invoke-direct {p0, v0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->setNeedUpdate(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 107
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 110
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    invoke-virtual {v2}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method
