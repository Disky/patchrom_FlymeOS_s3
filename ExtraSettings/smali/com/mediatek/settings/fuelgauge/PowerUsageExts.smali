.class public Lcom/mediatek/settings/fuelgauge/PowerUsageExts;
.super Ljava/lang/Object;
.source "PowerUsageExts.java"


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

.field private mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

.field private mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appListGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 45
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getBatteryExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IBatteryExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    .line 47
    return-void
.end method


# virtual methods
.method public initPowerUsageExtItems()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-interface {v0, v3, v4}, Lcom/mediatek/settings/ext/IBatteryExt;->loadPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    .line 55
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_UI_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    .line 58
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    const-string v3, "background_power_saving"

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090136

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 60
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    const/4 v3, -0x4

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 61
    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "background_power_saving_enable"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 68
    :cond_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

    const-string v3, "battery_percentage"

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    const v4, 0x7f090b6d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

    const/4 v3, -0x3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_show_battery_percent"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 76
    return-void

    :cond_1
    move v0, v2

    .line 61
    goto :goto_0

    :cond_2
    move v1, v2

    .line 72
    goto :goto_1
.end method

.method public onPowerUsageExtItemsClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 81
    instance-of v6, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    move-object v2, p2

    .line 82
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 83
    .local v2, "pref":Landroid/preference/CheckBoxPreference;
    const-string v6, "background_power_saving"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 85
    .local v0, "bgState":I
    :goto_0
    const-string v6, "PowerUsageSummary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "background power saving state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "background_power_saving_enable"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 89
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    .end local v0    # "bgState":I
    :cond_0
    const-string v6, "battery_percentage"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 97
    .local v3, "state":I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "status_bar_show_battery_percent"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.intent.action.BATTERY_PERCENTAGE_SWITCH"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v5, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    .line 102
    iget-object v5, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    :cond_1
    iget-object v5, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pref":Landroid/preference/CheckBoxPreference;
    .end local v3    # "state":I
    :cond_2
    :goto_2
    return v4

    .restart local v2    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_3
    move v0, v5

    .line 84
    goto :goto_0

    :cond_4
    move v3, v5

    .line 96
    goto :goto_1

    .line 109
    .end local v2    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    invoke-interface {v6, p1, p2}, Lcom/mediatek/settings/ext/IBatteryExt;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 112
    goto :goto_2
.end method
