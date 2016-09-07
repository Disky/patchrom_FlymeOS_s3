.class public Lcom/mediatek/settings/ext/DefaultAudioProfileExt;
.super Landroid/content/ContextWrapper;
.source "DefaultAudioProfileExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IAudioProfileExt;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/app/Fragment;

.field private mHasMoreRingtone:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 27
    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mHasMoreRingtone:Z

    .line 36
    invoke-virtual {p0}, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method


# virtual methods
.method public addCustomizedPreference(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 94
    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 2
    .param p1, "defaultLayoutId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method public getPrefImageView(I)Landroid/view/View;
    .locals 1
    .param p1, "defaultImageViewId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrefRadioButton(I)Landroid/view/View;
    .locals 1
    .param p1, "defaultRBId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 61
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getPreferenceSummary(I)Landroid/view/View;
    .locals 1
    .param p1, "defaultSummaryId"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPreferenceTitle(I)Landroid/view/View;
    .locals 1
    .param p1, "defaultTitleId"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isPrefEditable()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onAudioProfileSettingPaused(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 107
    return-void
.end method

.method public onAudioProfileSettingResumed(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 103
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public removeRingVolumePreference(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 111
    return-void
.end method

.method public setRingerVolume(Landroid/media/AudioManager;I)V
    .locals 2
    .param p1, "audiomanager"    # Landroid/media/AudioManager;
    .param p2, "volume"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 85
    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 86
    return-void
.end method

.method public setRingtonePickerParams(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    const-string v0, "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;->mHasMoreRingtone:Z

    .line 81
    return-void
.end method

.method public setVolume(Landroid/media/AudioManager;II)V
    .locals 1
    .param p1, "audiomanager"    # Landroid/media/AudioManager;
    .param p2, "streamType"    # I
    .param p3, "volume"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 90
    return-void
.end method
