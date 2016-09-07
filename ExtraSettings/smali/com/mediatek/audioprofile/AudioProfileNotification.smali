.class public Lcom/mediatek/audioprofile/AudioProfileNotification;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "AudioProfileNotification.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mSecure:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileNotification;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileNotification;

    .prologue
    .line 21
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/audioprofile/AudioProfileNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileNotification;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileNotification;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileNotification;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 5

    .prologue
    const v4, 0x7f090a0a

    const v3, 0x7f090a09

    const v2, 0x7f090a08

    .line 120
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    .line 121
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "AudioProfileNotification"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 127
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mSecure:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 133
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->updateLockscreenNotifications()V

    .line 134
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileNotification$2;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileNotification$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->setCallback(Lcom/android/extrasettings/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private initPulse()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 85
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "AudioProfileNotification"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->updatePulse()V

    .line 94
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileNotification$1;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileNotification$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileNotification;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 168
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/extrasettings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 170
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/extrasettings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 174
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 175
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a1a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c0000

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    if-nez v2, :cond_0

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 158
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 159
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f090a0a

    :goto_2
    iput v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I

    .line 162
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f090a08

    goto :goto_2

    :cond_4
    const v2, 0x7f090a09

    goto :goto_2
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "AudioProfileNotification"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string v1, "AudioProfileNotification"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mContext:Landroid/content/Context;

    .line 48
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mPM:Landroid/content/pm/PackageManager;

    .line 49
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mSecure:Z

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 52
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 55
    :cond_0
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileNotification;->addPreferencesFromResource(I)V

    .line 57
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->initPulse()V

    .line 58
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->initLockscreenNotifications()V

    .line 60
    const-string v1, "manage_notification_access"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    .line 61
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->refreshNotificationListeners()V

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "AudioProfileNotification"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 71
    return-void
.end method
