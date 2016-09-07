.class public Lcom/android/extrasettings/location/LocationMode;
.super Lcom/android/extrasettings/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/extrasettings/location/RadioButtonPreference$OnClickListener;


# instance fields
.field private mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

.field private mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

.field private mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/extrasettings/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 60
    :cond_0
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/location/LocationMode;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    const-string v1, "high_accuracy"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    .line 64
    const-string v1, "battery_saving"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    .line 65
    const-string v1, "sensors_only"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    .line 66
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/extrasettings/location/RadioButtonPreference$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/extrasettings/location/RadioButtonPreference$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/extrasettings/location/RadioButtonPreference$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationMode;->refreshLocationMode()V

    .line 71
    return-object v0
.end method

.method private updateRadioButtons(Lcom/android/extrasettings/location/RadioButtonPreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/extrasettings/location/RadioButtonPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f090ae1

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 126
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 127
    .local v0, "enabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 130
    return-void

    .line 111
    .end local v0    # "enabled":Z
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/extrasettings/location/LocationMode;->updateRadioButtons(Lcom/android/extrasettings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/extrasettings/location/LocationMode;->updateRadioButtons(Lcom/android/extrasettings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/extrasettings/location/LocationMode;->updateRadioButtons(Lcom/android/extrasettings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/extrasettings/location/LocationMode;->updateRadioButtons(Lcom/android/extrasettings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/extrasettings/location/LocationSettingsBase;->onPause()V

    .line 53
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/extrasettings/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/extrasettings/location/RadioButtonPreference;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mHighAccuracy:Lcom/android/extrasettings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 98
    const/4 v0, 0x3

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/location/LocationMode;->setLocationMode(I)V

    .line 105
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mBatterySaving:Lcom/android/extrasettings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 100
    const/4 v0, 0x2

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationMode;->mSensorsOnly:Lcom/android/extrasettings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/extrasettings/location/LocationSettingsBase;->onResume()V

    .line 47
    invoke-direct {p0}, Lcom/android/extrasettings/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 48
    return-void
.end method
