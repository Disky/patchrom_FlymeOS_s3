.class public Lcom/mediatek/audioprofile/BesSurroundSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "BesSurroundSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/mediatek/audioprofile/BesSurroundItem$OnClickListener;


# instance fields
.field private mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

.field private mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initBesSurroundStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBesSurroundState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBesSurroundMode()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public createSwitch()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x8070018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 60
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 62
    .local v1, "padding":I
    iget-object v2, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 63
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 66
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 72
    iget-object v2, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    const v2, 0x7f09003d

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/SettingsActivity;->setTitle(I)V

    .line 74
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 77
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BesSurroundSettings:onCheckedChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setBesSurroundState(Z)I

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 38
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 41
    :cond_0
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/BesSurroundSettings;->addPreferencesFromResource(I)V

    .line 42
    const-string v1, "movie_mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/BesSurroundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/BesSurroundItem;

    iput-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    .line 43
    const-string v1, "music_mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/BesSurroundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/BesSurroundItem;

    iput-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    .line 44
    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v1, p0}, Lcom/mediatek/audioprofile/BesSurroundItem;->setOnClickListener(Lcom/mediatek/audioprofile/BesSurroundItem$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v1, p0}, Lcom/mediatek/audioprofile/BesSurroundItem;->setOnClickListener(Lcom/mediatek/audioprofile/BesSurroundItem$OnClickListener;)V

    .line 46
    const-string v1, "audioprofile"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 47
    return-void
.end method

.method public onRadioButtonClicked(Lcom/mediatek/audioprofile/BesSurroundItem;)V
    .locals 4
    .param p1, "emiter"    # Lcom/mediatek/audioprofile/BesSurroundItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setBesSurroundMode(I)I

    .line 97
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 103
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setBesSurroundMode(I)I

    .line 100
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->createSwitch()V

    .line 53
    invoke-direct {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->initBesSurroundStatus()V

    .line 54
    return-void
.end method
