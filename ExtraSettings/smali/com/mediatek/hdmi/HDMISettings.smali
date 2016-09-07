.class public Lcom/mediatek/hdmi/HDMISettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "HDMISettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAudioOutputPref:Landroid/preference/ListPreference;

.field private mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

.field private mHdmiSettingsObserver:Landroid/database/ContentObserver;

.field private mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleHdmiPref:Landroid/preference/SwitchPreference;

.field private mVideoResolutionPref:Landroid/preference/ListPreference;

.field private mVideoScalePref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/mediatek/hdmi/HDMISettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/HDMISettings$1;-><init>(Lcom/mediatek/hdmi/HDMISettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 55
    new-instance v0, Lcom/mediatek/hdmi/HDMISettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/HDMISettings$2;-><init>(Lcom/mediatek/hdmi/HDMISettings;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/hdmi/HDMISettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/HDMISettings;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePref()V

    return-void
.end method

.method private updatePref()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "HDMISettings"

    const-string v1, "updatePref"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePrefStatus()V

    .line 171
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updateSelectedResolution()V

    .line 172
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updateSelectedScale()V

    .line 173
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updateSelectedAudioOutput()V

    .line 174
    return-void
.end method

.method private updatePrefStatus()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 177
    const-string v4, "HDMISettings"

    const-string v5, "updatePrefStatus"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 179
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 186
    :cond_1
    const/4 v3, 0x0

    .line 188
    .local v3, "shouldEnable":Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v4}, Lcom/mediatek/hdmi/IMtkHdmiManager;->isSignalOutputting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 192
    :goto_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 193
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 194
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hdmi_enable_status"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 196
    .local v2, "hdmiEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 197
    return-void

    .line 189
    .end local v2    # "hdmiEnabled":Z
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "HDMISettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hdmi manager RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateSelectedAudioOutput()V
    .locals 7

    .prologue
    .line 251
    iget-object v3, p0, Lcom/mediatek/hdmi/HDMISettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 252
    .local v1, "dlg":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 256
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/hdmi/HDMISettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v4}, Lcom/mediatek/hdmi/IMtkHdmiManager;->isSignalOutputting()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    iget-object v3, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hdmi_audio_output_mode"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 262
    .local v0, "audioOutputMode":I
    iget-object v3, p0, Lcom/mediatek/hdmi/HDMISettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 263
    const-string v3, "HDMISettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSelectedAudioOutput audioOutputMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 257
    .end local v0    # "audioOutputMode":I
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HDMISettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hdmi manager RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSelectedResolution()V
    .locals 15

    .prologue
    const/16 v14, 0x64

    .line 200
    const-string v11, "HDMISettings"

    const-string v12, "updateSelectedResolution"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 202
    .local v1, "dlg":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 203
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 205
    :cond_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hdmi_video_resolution"

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 207
    .local v10, "videoResolution":I
    if-le v10, v14, :cond_1

    .line 208
    const/16 v10, 0x64

    .line 210
    :cond_1
    const/4 v11, 0x1

    new-array v9, v11, [I

    const/4 v11, 0x0

    aput v14, v9, v11

    .line 212
    .local v9, "supportedResolutions":[I
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v11}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getSupportedResolutions()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 216
    :goto_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b004f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, "resolutionEntries":[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v5, "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v6, "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900ea

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    move-object v0, v9

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget v7, v0, v3

    .line 225
    .local v7, "resolution":I
    :try_start_1
    aget-object v11, v8, v7

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v6    # "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v7    # "resolution":I
    .end local v8    # "resolutionEntries":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Landroid/os/RemoteException;
    const-string v11, "HDMISettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hdmi manager RemoteException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arr$":[I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v6    # "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v7    # "resolution":I
    .restart local v8    # "resolutionEntries":[Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v11, "HDMISettings"

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 231
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v7    # "resolution":I
    :cond_2
    iget-object v12, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 233
    iget-object v12, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 236
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private updateSelectedScale()V
    .locals 5

    .prologue
    .line 240
    const-string v2, "HDMISettings"

    const-string v3, "updateSelectedScale"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 242
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_video_scale"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, "videoScale":I
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    .line 106
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-nez v4, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMISettings;->finish()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const v4, 0x7f0900e5

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMISettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v4}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 116
    const v4, 0x7f0900eb

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMISettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "hdmi":Ljava/lang/String;
    const v4, 0x7f0900ec

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMISettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "mhl":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    .end local v1    # "hdmi":Ljava/lang/String;
    .end local v2    # "mhl":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/mediatek/hdmi/IMtkHdmiManager;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    const-string v4, "HDMISettings"

    const-string v5, "remove mVideoScalePref"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMISettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_2
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    const/16 v5, 0x78

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getAudioParameter(II)I

    move-result v4

    if-gt v4, v7, :cond_0

    .line 131
    const-string v4, "HDMISettings"

    const-string v5, "remove mAudioOutputPref"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMISettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/hdmi/HDMISettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v3    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "HDMISettings"

    const-string v5, "HdmiManager RemoteException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const-string v4, "HDMISettings"

    const-string v5, "HDMISettings.onCreate()"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const v4, 0x7f060023

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMISettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMISettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    .line 74
    const-string v4, "hdmi_toggler"

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    .line 75
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string v4, "video_resolution"

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    .line 77
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    const-string v4, "video_scale"

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    .line 79
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 82
    .local v3, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "scaleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 84
    aget-object v4, v3, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ef

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v3, v1

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 93
    const-string v4, "audio_output"

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    .line 94
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_SMARTBOOK_SUPPORT:Z

    if-eqz v4, :cond_2

    .line 97
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/mediatek/hdmi/HDMISettings;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SMARTBOOK_PLUG"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    :cond_2
    const-string v4, "mtkhdmi"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 161
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SMARTBOOK_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/hdmi/HDMISettings;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroy()V

    .line 166
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 156
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 267
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "key":Ljava/lang/String;
    const-string v6, "HDMISettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " preference changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :try_start_0
    const-string v6, "hdmi_toggler"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 272
    .local v0, "checked":Z
    iget-object v6, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v6, v0}, Lcom/mediatek/hdmi/IMtkHdmiManager;->enableHdmi(Z)Z

    .line 298
    .end local v0    # "checked":Z
    :cond_0
    :goto_0
    return v9

    .line 273
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v6, "video_resolution"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 274
    iget-object v6, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/mediatek/hdmi/IMtkHdmiManager;->setVideoResolution(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "HDMISettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hdmi manager RemoteException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    :try_start_1
    const-string v6, "video_scale"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 277
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 278
    .local v4, "scaleValue":I
    if-ltz v4, :cond_3

    const/16 v6, 0xa

    if-gt v4, v6, :cond_3

    .line 279
    iget-object v6, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v6, v4}, Lcom/mediatek/hdmi/IMtkHdmiManager;->setVideoScale(I)Z

    goto :goto_0

    .line 281
    :cond_3
    const-string v6, "HDMISettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scaleValue error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v4    # "scaleValue":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    const-string v6, "audio_output"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 285
    .local v5, "which":I
    const/4 v3, 0x2

    .line 286
    .local v3, "maxChannel":I
    if-ne v5, v9, :cond_5

    .line 287
    iget-object v6, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    const/16 v7, 0x78

    const/4 v8, 0x3

    invoke-interface {v6, v7, v8}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getAudioParameter(II)I

    move-result v3

    .line 290
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HDMI_channel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 291
    iget-object v6, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hdmi_audio_output_mode"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 293
    const-string v6, "HDMISettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioSystem.setParameters HDMI_channel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",which: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 142
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePref()V

    .line 143
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_enable_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_cable_plugged"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    return-void
.end method
