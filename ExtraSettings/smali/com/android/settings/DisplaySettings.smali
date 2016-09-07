.class public Lcom/android/extrasettings/DisplaySettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/extrasettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private isKeyboradLightMenuSupport:Z

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mBreathLightPreference:Landroid/preference/Preference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mScreenOff:Z

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mToggleKeyboardLightPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 615
    new-instance v0, Lcom/android/extrasettings/DisplaySettings$4;

    invoke-direct {v0}, Lcom/android/extrasettings/DisplaySettings$4;-><init>()V

    sput-object v0, Lcom/android/extrasettings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenOff:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/DisplaySettings;->isKeyboradLightMenuSupport:Z

    .line 112
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 128
    new-instance v0, Lcom/android/extrasettings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/DisplaySettings$1;-><init>(Lcom/android/extrasettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/DisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/extrasettings/DisplaySettings;->updateTimeoutPreference(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/DisplaySettings;)Lcom/android/extrasettings/WarnedListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DisplaySettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/extrasettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/extrasettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/extrasettings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 381
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 382
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 416
    :goto_1
    return-void

    .line 381
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 385
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 386
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 387
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 390
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 391
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 392
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 396
    .end local v8    # "timeout":J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 397
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 398
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 402
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 403
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    .end local v7    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 404
    .restart local v7    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-nez v11, :cond_5

    .line 408
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 415
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private getTimoutValue()I
    .locals 8

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 314
    .local v1, "currentValue":I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---currentValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "bestMatch":I
    const/4 v3, 0x0

    .line 317
    .local v3, "timeout":I
    iget-object v5, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 319
    .local v4, "valuesTimeout":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 320
    aget-object v5, v4, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 321
    if-ne v1, v3, :cond_0

    .line 330
    .end local v1    # "currentValue":I
    :goto_1
    return v1

    .line 324
    .restart local v1    # "currentValue":I
    :cond_0
    if-le v1, v3, :cond_1

    .line 325
    move v0, v2

    .line 319
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_2
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---bestMatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    aget-object v5, v4, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 286
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 282
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/extrasettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 537
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 490
    iget-object v2, p0, Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 491
    invoke-direct {p0}, Lcom/android/extrasettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 494
    iget-object v2, p0, Lcom/android/extrasettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 497
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/android/extrasettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 501
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 503
    .local v1, "value":I
    iget-object v5, p0, Lcom/android/extrasettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 507
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 509
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/android/extrasettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 511
    .end local v1    # "value":I
    :cond_2
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_3
    move v2, v4

    .line 497
    goto :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_4
    move v2, v4

    .line 503
    goto :goto_1

    :cond_5
    move v3, v4

    .line 509
    goto :goto_2
.end method

.method private updateTimeoutPreference(I)V
    .locals 6
    .param p1, "currentTimeout"    # I

    .prologue
    .line 515
    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v3, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 517
    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcom/android/extrasettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 518
    iget-object v3, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 519
    .local v1, "dlg":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 523
    .local v2, "listview":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 525
    .local v0, "checkedItem":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 526
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 527
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 335
    iget-object v3, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 337
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 339
    const-string v4, ""

    .line 374
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    return-void

    .line 341
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 342
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 343
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 344
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 346
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 347
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 348
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 349
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 350
    move v0, v2

    .line 347
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 354
    .end local v6    # "timeout":J
    :cond_4
    array-length v8, v1

    if-eqz v8, :cond_6

    .line 360
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_5

    iget-boolean v8, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenOff:Z

    if-eqz v8, :cond_5

    .line 361
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090a7c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 363
    .end local v4    # "summary":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090448

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 368
    .end local v4    # "summary":Ljava/lang/String;
    :cond_6
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 8
    .param p1, "val"    # F

    .prologue
    .line 419
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "floatToIndex enter val = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v5, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    iget-object v6, p0, Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

    invoke-virtual {v5, v6, p1}, Lcom/mediatek/settings/DisplaySettingsExt;->floatToIndex(Landroid/preference/ListPreference;F)I

    move-result v3

    .line 422
    .local v3, "res":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 436
    .end local v3    # "res":I
    :goto_0
    return v3

    .line 427
    .restart local v3    # "res":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "indices":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 429
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 430
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 431
    .local v4, "thisVal":F
    sub-float v5, v4, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    .line 432
    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    .line 434
    :cond_1
    move v2, v4

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    .end local v4    # "thisVal":F
    :cond_2
    array-length v5, v1

    add-int/lit8 v3, v5, -0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 305
    const-string v0, "DisplaySettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 308
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 141
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 143
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 145
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x7f06001f

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 148
    new-instance v7, Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    .line 149
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->onCreate(Landroid/preference/PreferenceScreen;)V

    .line 152
    const-string v7, "screensaver"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 153
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x112005f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 156
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    iget-object v10, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    .line 162
    :cond_0
    const-string v7, "breathlight"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mBreathLightPreference:Landroid/preference/Preference;

    .line 164
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    iget-object v10, p0, Lcom/android/extrasettings/DisplaySettings;->mBreathLightPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    .line 171
    iget-boolean v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenOff:Z

    if-nez v7, :cond_1

    .line 172
    const-string v7, "screen_timeout"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 178
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/DisplaySettings;->getTimoutValue()I

    move-result v7

    int-to-long v2, v7

    .line 179
    .local v2, "currentTimeout":J
    const-string v7, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentTimeout="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 184
    invoke-direct {p0, v2, v3}, Lcom/android/extrasettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 186
    const-string v7, "font_size"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/extrasettings/WarnedListPreference;

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

    .line 187
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

    invoke-virtual {v7, p0}, Lcom/android/extrasettings/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

    invoke-virtual {v7, p0}, Lcom/android/extrasettings/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/extrasettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 191
    const-string v7, "auto_brightness"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 192
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    :goto_1
    iget-boolean v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenOff:Z

    if-eqz v7, :cond_3

    .line 201
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    const-string v10, "screen_timeout"

    invoke-virtual {p0, v10}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    .line 207
    :goto_2
    invoke-static {v0}, Lcom/android/extrasettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 208
    const-string v7, "lift_to_wake"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 209
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    :goto_3
    invoke-static {v0}, Lcom/android/extrasettings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 216
    const-string v7, "doze"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 217
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    :goto_4
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 224
    const-string v7, "auto_rotate"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/extrasettings/notification/DropDownPreference;

    .line 226
    .local v6, "rotatePreference":Lcom/android/extrasettings/notification/DropDownPreference;
    const v7, 0x7f090a51

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    invoke-static {v0}, Lcom/android/extrasettings/DisplaySettings;->allowAllRotations(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 233
    const v5, 0x7f090a54

    .line 244
    .local v5, "rotateLockedResourceId":I
    :goto_5
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/android/extrasettings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-virtual {v7, v6}, Lcom/mediatek/settings/DisplaySettingsExt;->setRotatePreference(Lcom/android/extrasettings/notification/DropDownPreference;)V

    .line 246
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Lcom/android/extrasettings/notification/DropDownPreference;->setSelectedItem(I)V

    .line 248
    new-instance v7, Lcom/android/extrasettings/DisplaySettings$2;

    invoke-direct {v7, p0, v0}, Lcom/android/extrasettings/DisplaySettings$2;-><init>(Lcom/android/extrasettings/DisplaySettings;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Lcom/android/extrasettings/notification/DropDownPreference;->setCallback(Lcom/android/extrasettings/notification/DropDownPreference$Callback;)V

    .line 263
    .end local v5    # "rotateLockedResourceId":I
    .end local v6    # "rotatePreference":Lcom/android/extrasettings/notification/DropDownPreference;
    :goto_7
    const-string v7, "toggle_keyboard_light_preference"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mToggleKeyboardLightPreference:Landroid/preference/CheckBoxPreference;

    .line 264
    iget-boolean v7, p0, Lcom/android/extrasettings/DisplaySettings;->isKeyboradLightMenuSupport:Z

    if-eqz v7, :cond_b

    .line 265
    const-string v7, "persist.sys.keyboard_light"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_a

    move v1, v8

    .line 266
    .local v1, "keyboardLightFlag":Z
    :goto_8
    const-string v7, "lupei"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lupei DisplaySettings onCreate keyboardLightFlag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mToggleKeyboardLightPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    .end local v1    # "keyboardLightFlag":Z
    :goto_9
    return-void

    .line 174
    .end local v2    # "currentTimeout":J
    :cond_1
    const-string v7, "screen_timeout_ex"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    goto/16 :goto_0

    .line 195
    .restart local v2    # "currentTimeout":J
    :cond_2
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    const-string v10, "auto_brightness"

    invoke-virtual {p0, v10}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 203
    :cond_3
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    const-string v10, "screen_timeout_ex"

    invoke-virtual {p0, v10}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_2

    .line 212
    :cond_4
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    const-string v10, "lift_to_wake"

    invoke-virtual {p0, v10}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_3

    .line 220
    :cond_5
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    const-string v10, "doze"

    invoke-virtual {p0, v10}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_4

    .line 235
    .restart local v6    # "rotatePreference":Lcom/android/extrasettings/notification/DropDownPreference;
    :cond_6
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v8, :cond_7

    .line 237
    const v5, 0x7f090a52

    .restart local v5    # "rotateLockedResourceId":I
    goto/16 :goto_5

    .line 240
    .end local v5    # "rotateLockedResourceId":I
    :cond_7
    const v5, 0x7f090a53

    .restart local v5    # "rotateLockedResourceId":I
    goto/16 :goto_5

    :cond_8
    move v7, v9

    .line 246
    goto/16 :goto_6

    .line 257
    .end local v5    # "rotateLockedResourceId":I
    .end local v6    # "rotatePreference":Lcom/android/extrasettings/notification/DropDownPreference;
    :cond_9
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    const-string v10, "auto_rotate"

    invoke-virtual {p0, v10}, Lcom/android/extrasettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_7

    :cond_a
    move v1, v9

    .line 265
    goto :goto_8

    .line 269
    :cond_b
    iget-object v7, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    iget-object v8, p0, Lcom/android/extrasettings/DisplaySettings;->mToggleKeyboardLightPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/DisplaySettingsExt;->removePreference(Landroid/preference/Preference;)V

    goto :goto_9
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 477
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090973

    new-instance v2, Lcom/android/extrasettings/DisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/DisplaySettings$3;-><init>(Lcom/android/extrasettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/extrasettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 472
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/DisplaySettingsExt;->onPause()V

    .line 473
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 568
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "key":Ljava/lang/String;
    const-string v6, "screen_timeout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "screen_timeout_ex"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 576
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 577
    .local v5, "value":I
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_off_timeout"

    invoke-static {v6, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    int-to-long v10, v5

    invoke-direct {p0, v10, v11}, Lcom/android/extrasettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v5    # "value":I
    :cond_1
    :goto_0
    const-string v6, "font_size"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 584
    invoke-virtual {p0, p2}, Lcom/android/extrasettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 586
    :cond_2
    iget-object v6, p0, Lcom/android/extrasettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_3

    move-object v6, p2

    .line 587
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 588
    .local v2, "auto":Z
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness_mode"

    if-eqz v2, :cond_7

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    .end local v2    # "auto":Z
    :cond_3
    iget-object v6, p0, Lcom/android/extrasettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_4

    move-object v6, p2

    .line 592
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 593
    .local v5, "value":Z
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wake_gesture_enabled"

    if-eqz v5, :cond_8

    move v6, v7

    :goto_2
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    .end local v5    # "value":Z
    :cond_4
    iget-object v6, p0, Lcom/android/extrasettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_6

    .line 596
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 597
    .restart local v5    # "value":Z
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "doze_enabled"

    if-eqz v5, :cond_5

    move v8, v7

    :cond_5
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 599
    .end local v5    # "value":Z
    :cond_6
    return v7

    .line 579
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 580
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v9, "could not persist screen timeout setting"

    invoke-static {v6, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_7
    move v6, v8

    .line 588
    goto :goto_1

    .end local v2    # "auto":Z
    .restart local v5    # "value":Z
    :cond_8
    move v6, v8

    .line 593
    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 604
    iget-object v1, p0, Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/extrasettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/DisplaySettings;->showDialog(I)V

    .line 612
    :goto_0
    return v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/extrasettings/WarnedListPreference;->click()V

    .line 612
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-virtual {v0, p2}, Lcom/mediatek/settings/DisplaySettingsExt;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 557
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mToggleKeyboardLightPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_0

    .line 558
    const-string v0, "lupei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lupei DisplaySettings onPreferenceTreeClick mToggleKeyboardLightPreference isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/DisplaySettings;->mToggleKeyboardLightPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v1, "persist.sys.keyboard_light"

    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mToggleKeyboardLightPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 559
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 460
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 461
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/extrasettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 463
    invoke-direct {p0}, Lcom/android/extrasettings/DisplaySettings;->updateState()V

    .line 465
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings;->mDisplaySettingsExt:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/DisplaySettingsExt;->onResume()V

    .line 466
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 441
    :try_start_0
    iget-object v4, p0, Lcom/android/extrasettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    iget-object v4, p0, Lcom/android/extrasettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 448
    .local v2, "index":I
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFontSizePreference index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 452
    invoke-virtual {p0}, Lcom/android/extrasettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 453
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "fontSizeNames":[Ljava/lang/String;
    const v4, 0x7f090ab9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    return-void

    .line 442
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/extrasettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 542
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference font size =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
