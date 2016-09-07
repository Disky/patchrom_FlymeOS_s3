.class public Lcom/android/extrasettings/BreathLightMenu;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "BreathLightMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBreathLightBatteryLow:Landroid/preference/SwitchPreference;

.field private mBreathLightCharge:Landroid/preference/SwitchPreference;

.field private mBreathLightMissEvent:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 22
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/BreathLightMenu;->addPreferencesFromResource(I)V

    .line 25
    const-string v0, "charging"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/BreathLightMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightCharge:Landroid/preference/SwitchPreference;

    .line 26
    iget-object v3, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightCharge:Landroid/preference/SwitchPreference;

    const-string v0, "persist.sys.bl_charge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 27
    iget-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightCharge:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 29
    const-string v0, "battery_low"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/BreathLightMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightBatteryLow:Landroid/preference/SwitchPreference;

    .line 30
    iget-object v3, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightBatteryLow:Landroid/preference/SwitchPreference;

    const-string v0, "persist.sys.bl_battery_low"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 31
    iget-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightBatteryLow:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    const-string v0, "missing_event"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/BreathLightMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightMissEvent:Landroid/preference/SwitchPreference;

    .line 34
    iget-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightMissEvent:Landroid/preference/SwitchPreference;

    const-string v3, "persist.sys.bl_miss_evevt"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightMissEvent:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    return-void

    :cond_0
    move v0, v2

    .line 26
    goto :goto_0

    :cond_1
    move v0, v2

    .line 30
    goto :goto_1

    :cond_2
    move v1, v2

    .line 34
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightCharge:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    .line 42
    const-string v1, "persist.sys.bl_charge"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 43
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightBatteryLow:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_4

    .line 44
    const-string v1, "persist.sys.bl_battery_low"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "0"

    goto :goto_2

    .line 45
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    iget-object v0, p0, Lcom/android/extrasettings/BreathLightMenu;->mBreathLightMissEvent:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 46
    const-string v1, "persist.sys.bl_miss_evevt"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "0"

    goto :goto_3
.end method
