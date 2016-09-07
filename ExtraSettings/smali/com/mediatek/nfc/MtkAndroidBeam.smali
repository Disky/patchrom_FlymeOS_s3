.class public Lcom/mediatek/nfc/MtkAndroidBeam;
.super Landroid/app/Fragment;
.source "MtkAndroidBeam.java"

# interfaces
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mUpdateStatusOnly:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mUpdateStatusOnly:Z

    .line 62
    new-instance v0, Lcom/mediatek/nfc/MtkAndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/mediatek/nfc/MtkAndroidBeam$1;-><init>(Lcom/mediatek/nfc/MtkAndroidBeam;)V

    iput-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/MtkAndroidBeam;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/MtkAndroidBeam;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/nfc/MtkAndroidBeam;->updateSwitchButton()V

    return-void
.end method

.method private updateSwitchButton()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_0

    .line 118
    iput-boolean v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mUpdateStatusOnly:Z

    .line 119
    iget-object v2, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    iget-object v3, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mUpdateStatusOnly:Z

    .line 121
    iget-object v2, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    iget-object v3, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 123
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 121
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/nfc/MtkAndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/MtkAndroidBeam;->setHasOptionsMenu(Z)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 154
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BEAM_PLUS_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 155
    const v0, 0x7f09008f

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 134
    const-string v0, "MtkAndroidBeam"

    const-string v1, "onCreateView "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BEAM_PLUS_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 136
    const v0, 0x7f040006

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mView:Landroid/view/View;

    invoke-static {p2, v0, v1, v2}, Lcom/android/extrasettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mView:Landroid/view/View;

    return-object v0

    .line 139
    :cond_0
    const v0, 0x7f040005

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "MtkAndroidBeam"

    const-string v1, "onDestroyView,"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 149
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/nfc/MtkAndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    const-class v1, Lcom/mediatek/beam/BeamShareHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 166
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "MtkAndroidBeam"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/nfc/MtkAndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 107
    const-string v0, "MtkAndroidBeam"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/nfc/MtkAndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    invoke-direct {p0}, Lcom/mediatek/nfc/MtkAndroidBeam;->updateSwitchButton()V

    .line 114
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 88
    const-string v1, "MtkAndroidBeam"

    const-string v2, "onStart, mSwitchBar addOnSwitchChangeListener "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/nfc/MtkAndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 91
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 92
    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 93
    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 100
    const-string v0, "MtkAndroidBeam"

    const-string v1, "onStop, mSwitchBar removeOnSwitchChangeListener "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 103
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 171
    const-string v1, "MtkAndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUpdateStatusOnly is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mUpdateStatusOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mUpdateStatusOnly:Z

    if-nez v1, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "success":Z
    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 176
    if-eqz p2, :cond_2

    .line 177
    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 181
    :goto_0
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 184
    :cond_0
    const-string v1, "MtkAndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Ndef push "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 187
    .end local v0    # "success":Z
    :cond_1
    return-void

    .line 179
    .restart local v0    # "success":Z
    :cond_2
    iget-object v1, p0, Lcom/mediatek/nfc/MtkAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0
.end method
