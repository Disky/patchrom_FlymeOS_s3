.class public Lcom/android/extrasettings/notification/NotificationSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/notification/NotificationSettings$Receiver;,
        Lcom/android/extrasettings/notification/NotificationSettings$H;,
        Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/extrasettings/notification/NotificationSettings$H;

.field private mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/android/extrasettings/notification/NotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 587
    new-instance v0, Lcom/android/extrasettings/notification/NotificationSettings$5;

    invoke-direct {v0}, Lcom/android/extrasettings/notification/NotificationSettings$5;-><init>()V

    sput-object v0, Lcom/android/extrasettings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;Lcom/android/extrasettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;

    .line 82
    new-instance v0, Lcom/android/extrasettings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/notification/NotificationSettings$H;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;Lcom/android/extrasettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mHandler:Lcom/android/extrasettings/notification/NotificationSettings$H;

    .line 83
    new-instance v0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;

    .line 84
    new-instance v0, Lcom/android/extrasettings/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/notification/NotificationSettings$Receiver;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;Lcom/android/extrasettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mReceiver:Lcom/android/extrasettings/notification/NotificationSettings$Receiver;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingerMode:I

    .line 274
    new-instance v0, Lcom/android/extrasettings/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/notification/NotificationSettings$1;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 558
    return-void
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/extrasettings/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/extrasettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/extrasettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/extrasettings/notification/NotificationSettings;)Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/extrasettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/extrasettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/notification/NotificationSettings;)Lcom/android/extrasettings/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mHandler:Lcom/android/extrasettings/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/extrasettings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 452
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 213
    iget-object v5, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 215
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 216
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 218
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 228
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const v4, 0x7f090a0a

    const v3, 0x7f090a09

    const v2, 0x7f090a08

    .line 405
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    .line 406
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 407
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 413
    iget-boolean v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSecure:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 419
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateLockscreenNotifications()V

    .line 420
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    new-instance v1, Lcom/android/extrasettings/notification/NotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/notification/NotificationSettings$4;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->setCallback(Lcom/android/extrasettings/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 368
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 369
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 370
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updatePulse()V

    .line 378
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/extrasettings/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/notification/NotificationSettings$3;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 262
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 263
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 267
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 268
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 336
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 337
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 338
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-boolean v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 347
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 348
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/extrasettings/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/notification/NotificationSettings$2;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/extrasettings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    .line 177
    .local v0, "volumePref":Lcom/android/extrasettings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;)V

    .line 178
    invoke-virtual {v0, p2}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 179
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v0, p3}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 181
    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 464
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/extrasettings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 466
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 469
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/extrasettings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 470
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 471
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a1a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

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

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 201
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 203
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 204
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x104069d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/notification/NotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 209
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 204
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    if-nez v2, :cond_0

    .line 449
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 444
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 445
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f090a0a

    :goto_2
    iput v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    .line 448
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreen:Lcom/android/extrasettings/notification/DropDownPreference;

    iget v3, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 445
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

    .line 391
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x108031f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 190
    return-void

    .line 185
    :cond_0
    iget v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x1080320

    goto :goto_0

    :cond_1
    const v0, 0x108031e

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 194
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iput v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingerMode:I

    .line 196
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 295
    if-nez p0, :cond_1

    .line 296
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    :goto_0
    return-object v7

    .line 299
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10404bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 303
    const v0, 0x10404b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 305
    :cond_2
    const/4 v6, 0x0

    .line 307
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 315
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 316
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 325
    :cond_4
    if-eqz v6, :cond_0

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 311
    :cond_5
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 325
    if-eqz v6, :cond_0

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 322
    :catch_1
    move-exception v0

    .line 325
    if-eqz v6, :cond_0

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 360
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x108031f

    .line 107
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 109
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 110
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/extrasettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVoiceCapable:Z

    .line 111
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSecure:Z

    .line 113
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 115
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 119
    :cond_0
    const v2, 0x7f06002c

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 121
    const-string v2, "sound"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 122
    .local v1, "sound":Landroid/preference/PreferenceCategory;
    const-string v2, "media_volume"

    const/4 v3, 0x3

    const v4, 0x1080322

    invoke-direct {p0, v2, v3, v4}, Lcom/android/extrasettings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    .line 124
    const-string v2, "alarm_volume"

    const/4 v3, 0x4

    const v4, 0x1080313

    invoke-direct {p0, v2, v3, v4}, Lcom/android/extrasettings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    .line 126
    iget-boolean v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "ring_volume"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v5}, Lcom/android/extrasettings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    .line 130
    const-string v2, "notification_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/extrasettings/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 138
    invoke-direct {p0, v1}, Lcom/android/extrasettings/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 140
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 142
    .local v0, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v0}, Lcom/android/extrasettings/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/android/extrasettings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 145
    const-string v2, "manage_notification_access"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 146
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 147
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateRingerMode()V

    .line 148
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 149
    return-void

    .line 132
    .end local v0    # "notification":Landroid/preference/PreferenceCategory;
    :cond_1
    const-string v2, "notification_volume"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3, v5}, Lcom/android/extrasettings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    .line 135
    const-string v2, "ring_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 169
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mReceiver:Lcom/android/extrasettings/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/notification/NotificationSettings$Receiver;->register(Z)V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 153
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 155
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 156
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 157
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mReceiver:Lcom/android/extrasettings/notification/NotificationSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/notification/NotificationSettings$Receiver;->register(Z)V

    .line 158
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    .line 159
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 160
    iget-object v2, p0, Lcom/android/extrasettings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    .line 161
    .local v1, "volumePref":Lcom/android/extrasettings/notification/VolumeSeekBarPreference;
    invoke-virtual {v1}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 163
    .end local v1    # "volumePref":Lcom/android/extrasettings/notification/VolumeSeekBarPreference;
    :cond_0
    return-void
.end method
