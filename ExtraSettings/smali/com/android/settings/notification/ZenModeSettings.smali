.class public Lcom/android/extrasettings/notification/ZenModeSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;,
        Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;,
        Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PREF_ZEN_MODE:Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutomationCategory:Landroid/preference/PreferenceCategory;

.field private mCalls:Landroid/preference/SwitchPreference;

.field private mConditionProviders:Landroid/preference/Preference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDays:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field private mDowntimeMode:Lcom/android/extrasettings/notification/DropDownPreference;

.field private mDowntimeSupported:Z

.field private mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

.field private mEntry:Landroid/preference/Preference;

.field private mEvents:Landroid/preference/SwitchPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroid/preference/SwitchPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mSettingsObserver:Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;

.field private mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

.field private mStart:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 72
    const-string v0, "ZenModeSettings"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/extrasettings/notification/ZenModeSettings;->DEBUG:Z

    .line 92
    new-instance v0, Lcom/android/extrasettings/notification/ZenModeSettings$1;

    const/4 v1, 0x1

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/android/extrasettings/notification/ZenModeSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/extrasettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;

    .line 580
    new-instance v0, Lcom/android/extrasettings/notification/ZenModeSettings$15;

    invoke-direct {v0}, Lcom/android/extrasettings/notification/ZenModeSettings$15;-><init>()V

    sput-object v0, Lcom/android/extrasettings/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void

    .line 92
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;

    .line 696
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/notification/ZenModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/notification/ZenModeSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/extrasettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/extrasettings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/extrasettings/notification/ZenModeSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/extrasettings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/extrasettings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateDays()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/extrasettings/notification/ZenModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/extrasettings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->refreshAutomationSection()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/extrasettings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/notification/ZenModeSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->isDowntimeSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 110
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v1, 0x7f090a2f

    const-string v2, "important"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    const v1, 0x7f090af1

    const-string v2, "calls"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    const v1, 0x7f0909fe

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    const v1, 0x7f090a38

    const-string v2, "messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    const v1, 0x7f090a3c

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    const v1, 0x7f090a3d

    const-string v2, "events"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    const v1, 0x7f090a3e

    const-string v2, "alarm_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    const v1, 0x7f090a30

    const-string v2, "downtime"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    const v1, 0x7f090a31

    const-string v2, "days"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const v1, 0x7f090a43

    const-string v2, "start_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    const v1, 0x7f090a44

    const-string v2, "end_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    const v1, 0x7f090aee

    const-string v2, "downtime_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    const v1, 0x7f090a33

    const-string v2, "automation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    const v1, 0x7f090a1e

    const-string v2, "manage_condition_providers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    return-object v0
.end method

.method private getEntryConditionSummary()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 460
    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    .line 463
    .local v4, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v0

    .line 464
    .local v0, "automatic":[Landroid/service/notification/Condition;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    .line 476
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_0
    :goto_0
    return-object v6

    .line 467
    .restart local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_1
    const v7, 0x7f090a35

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "divider":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 470
    if-lez v3, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_2
    aget-object v7, v0, v3

    iget-object v7, v7, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 473
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 474
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    .end local v1    # "divider":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ZenModeSettings"

    const-string v8, "Error calling getAutomaticZenModeConditions"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 502
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 505
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 508
    :goto_0
    return-object v2

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private static isDowntimeSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 575
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "downtime"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private refreshAutomationSection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 435
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/extrasettings/notification/ConditionProviderSettings;->getProviderCount(Landroid/content/pm/PackageManager;)I

    move-result v2

    .line 437
    .local v2, "total":I
    if-nez v2, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    .end local v2    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v2    # "total":I
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/extrasettings/notification/ConditionProviderSettings;->getEnabledProviderCount(Landroid/content/Context;)I

    move-result v1

    .line 441
    .local v1, "n":I
    if-nez v1, :cond_3

    .line 442
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a1f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    :goto_1
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getEntryConditionSummary()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "entrySummary":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    .line 451
    :cond_2
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    const v4, 0x7f090a36

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 445
    .end local v0    # "entrySummary":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 453
    .restart local v0    # "entrySummary":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 513
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 516
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 517
    .local v2, "success":Z
    if-eqz v2, :cond_1

    .line 518
    iput-object p1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 519
    sget-boolean v3, Lcom/android/extrasettings/notification/ZenModeSettings;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateEndSummary()V

    .line 521
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateStarredEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 3

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDisableListeners:Z

    .line 406
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 416
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateStarredEnabled()V

    .line 417
    iget-boolean v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-eqz v0, :cond_3

    .line 418
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateDays()V

    .line 419
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStart:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v2, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 420
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v2, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 421
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/extrasettings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 423
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDisableListeners:Z

    .line 424
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->refreshAutomationSection()V

    .line 425
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateEndSummary()V

    .line 426
    return-void
.end method

.method private updateDays()V
    .locals 9

    .prologue
    .line 358
    iget-object v7, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v7, :cond_4

    .line 359
    iget-object v7, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v3

    .line 360
    .local v3, "days":[I
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "EEE"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "DAY_FORMAT":Ljava/text/SimpleDateFormat;
    if-eqz v3, :cond_4

    array-length v7, v3

    if-eqz v7, :cond_4

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 364
    .local v1, "c":Ljava/util/Calendar;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v7, Lcom/android/extrasettings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v7, v7

    if-ge v4, v7, :cond_3

    .line 365
    sget-object v7, Lcom/android/extrasettings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v2, v7, v4

    .line 366
    .local v2, "day":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_1

    .line 367
    aget v7, v3, v5

    if-ne v2, v7, :cond_2

    .line 368
    const/4 v7, 0x7

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 369
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 370
    iget-object v7, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f090a35

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 366
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 377
    .end local v2    # "day":I
    .end local v5    # "j":I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 378
    iget-object v7, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v7, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 386
    .end local v0    # "DAY_FORMAT":Ljava/text/SimpleDateFormat;
    .end local v1    # "c":Ljava/util/Calendar;
    .end local v3    # "days":[I
    .end local v4    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 384
    :cond_4
    iget-object v7, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const v8, 0x7f090a32

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 385
    iget-object v7, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private updateEndSummary()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 389
    iget-boolean v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-nez v5, :cond_0

    .line 402
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    mul-int/lit8 v5, v5, 0x3c

    iget-object v6, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    add-int v2, v5, v6

    .line 391
    .local v2, "startMin":I
    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    mul-int/lit8 v5, v5, 0x3c

    iget-object v6, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    add-int v0, v5, v6

    .line 392
    .local v0, "endMin":I
    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    .line 394
    .local v1, "nextDay":Z
    :goto_1
    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eqz v5, :cond_3

    .line 395
    if-eqz v1, :cond_2

    const v3, 0x7f090af4

    .line 401
    .local v3, "summaryFormat":I
    :goto_2
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setSummaryFormat(I)V

    goto :goto_0

    .end local v1    # "nextDay":Z
    .end local v3    # "summaryFormat":I
    :cond_1
    move v1, v4

    .line 392
    goto :goto_1

    .line 395
    .restart local v1    # "nextDay":Z
    :cond_2
    const v3, 0x7f090af3

    goto :goto_2

    .line 398
    :cond_3
    if-eqz v1, :cond_4

    const v3, 0x7f090af2

    .restart local v3    # "summaryFormat":I
    :goto_3
    goto :goto_2

    .end local v3    # "summaryFormat":I
    :cond_4
    move v3, v4

    goto :goto_3
.end method

.method private updateStarredEnabled()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    if-eqz v0, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/extrasettings/notification/DropDownPreference;->setEnabled(Z)V

    .line 432
    :cond_1
    return-void

    .line 430
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateZenModeConfig()V
    .locals 4

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 495
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 496
    :cond_0
    iput-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 497
    sget-boolean v1, Lcom/android/extrasettings/notification/ZenModeSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDialog(I)V
    .locals 2
    .param p1, "oldSettingsValue"    # I

    .prologue
    .line 570
    sget-object v0, Lcom/android/extrasettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;->setValueWithoutCallback(Landroid/content/Context;I)Z

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 572
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 152
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 154
    const v4, 0x7f060066

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 157
    .local v3, "root":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 158
    sget-boolean v4, Lcom/android/extrasettings/notification/ZenModeSettings;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ZenModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded mConfig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    sget-object v4, Lcom/android/extrasettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {v4, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;->init(Lcom/android/extrasettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 161
    sget-object v4, Lcom/android/extrasettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$2;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$2;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;->setCallback(Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V

    .line 170
    const-string v4, "important"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 173
    .local v1, "important":Landroid/preference/PreferenceCategory;
    const-string v4, "calls"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    .line 174
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$3;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$3;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    const-string v4, "messages"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    .line 188
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$4;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$4;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const-string v4, "starred"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/notification/DropDownPreference;

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    .line 202
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    const v5, 0x7f090a3a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 203
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    const v5, 0x7f090a3c

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 204
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    const v5, 0x7f090a3b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 205
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$5;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$5;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/DropDownPreference;->setCallback(Lcom/android/extrasettings/notification/DropDownPreference$Callback;)V

    .line 218
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStarred:Lcom/android/extrasettings/notification/DropDownPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    const-string v4, "events"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 221
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$6;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$6;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    const-string v4, "downtime"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 235
    .local v0, "downtime":Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/extrasettings/notification/ZenModeSettings;->isDowntimeSupported(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeSupported:Z

    .line 236
    iget-boolean v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-nez v4, :cond_1

    .line 237
    const-string v4, "downtime"

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/notification/ZenModeSettings;->removePreference(Ljava/lang/String;)V

    .line 333
    :goto_0
    const-string v4, "automation"

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    .line 334
    const-string v4, "entry"

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    .line 335
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$11;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$11;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 352
    const-string v4, "manage_condition_providers"

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    .line 354
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateControls()V

    .line 355
    return-void

    .line 239
    :cond_1
    const-string v4, "days"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    .line 240
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$7;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$7;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 270
    .local v2, "mgr":Landroid/app/FragmentManager;
    new-instance v4, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStart:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    .line 271
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStart:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    const-string v5, "start_time"

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStart:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    const v5, 0x7f090a43

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 273
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStart:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$8;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$8;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 289
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStart:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 290
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mStart:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 292
    new-instance v4, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    .line 293
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    const-string v5, "end_time"

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 294
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    const v5, 0x7f090a44

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 295
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$9;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$9;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 311
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mEnd:Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 314
    const-string v4, "downtime_mode"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/notification/DropDownPreference;

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/extrasettings/notification/DropDownPreference;

    .line 315
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/extrasettings/notification/DropDownPreference;

    const v5, 0x7f090aef

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 316
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/extrasettings/notification/DropDownPreference;

    const v5, 0x7f090af0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 317
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/extrasettings/notification/DropDownPreference;

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$10;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/notification/ZenModeSettings$10;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/DropDownPreference;->setCallback(Lcom/android/extrasettings/notification/DropDownPreference$Callback;)V

    .line 329
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/extrasettings/notification/DropDownPreference;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/DropDownPreference;->setOrder(I)V

    .line 330
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/extrasettings/notification/DropDownPreference;

    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/DropDownPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 490
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;->unregister()V

    .line 491
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 483
    invoke-direct {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->updateControls()V

    .line 484
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/extrasettings/notification/ZenModeSettings$SettingsObserver;->register()V

    .line 485
    return-void
.end method

.method protected showConditionSelection(I)V
    .locals 7
    .param p1, "newSettingsValue"    # I

    .prologue
    .line 535
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 566
    :goto_0
    return-void

    .line 537
    :cond_0
    new-instance v3, Lcom/android/extrasettings/notification/ZenModeConditionSelection;

    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/extrasettings/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    .line 539
    .local v3, "zenModeConditionSelection":Lcom/android/extrasettings/notification/ZenModeConditionSelection;
    new-instance v1, Lcom/android/extrasettings/notification/ZenModeSettings$12;

    invoke-direct {v1, p0, v3}, Lcom/android/extrasettings/notification/ZenModeSettings$12;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;Lcom/android/extrasettings/notification/ZenModeConditionSelection;)V

    .line 546
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/android/extrasettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v5, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    .line 547
    .local v0, "oldSettingsValue":I
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 548
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 549
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/extrasettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/android/extrasettings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/extrasettings/notification/ZenModeSettings$SettingPrefWithCallback;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09024e

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09024c

    new-instance v6, Lcom/android/extrasettings/notification/ZenModeSettings$14;

    invoke-direct {v6, p0, v0}, Lcom/android/extrasettings/notification/ZenModeSettings$14;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/extrasettings/notification/ZenModeSettings$13;

    invoke-direct {v5, p0, v0}, Lcom/android/extrasettings/notification/ZenModeSettings$13;-><init>(Lcom/android/extrasettings/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 565
    iget-object v4, p0, Lcom/android/extrasettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
