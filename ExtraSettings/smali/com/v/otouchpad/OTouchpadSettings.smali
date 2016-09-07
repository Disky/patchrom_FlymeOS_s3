.class public Lcom/v/otouchpad/OTouchpadSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "OTouchpadSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private mCheckBoxAppNameSwitch:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxUnlock:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxUpDownLeftRight:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mOtouchpadActionAppPreScreen:Landroid/preference/PreferenceScreen;

.field private mResetDefaultApp:Z

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mSwitchChecked:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mResetDefaultApp:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mValidListener:Z

    return-void
.end method

.method private doCloseAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    const-string v1, "persist.sys.otouchpad_switch"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "persist.sys.otouchpad_ap_switch"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "persist.sys.otouchpad_u_d_l_r"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "persist.sys.otouchpad_camera"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "persist.sys.otouchpad_unlock"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "persist.sys.otouchpad_music"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 337
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/mt-i2c.2/i2c-2/2-002c/enable_backtouch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "otouchPadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->otouchPadWriter(Ljava/io/File;Ljava/lang/String;)Z

    .line 351
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad otouchPadFile is not exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    .end local v0    # "otouchPadFile":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/mt-i2c.2/i2c-2/2-002c/enable_backtouch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v0    # "otouchPadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->otouchPadWriter(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_0

    .line 348
    :cond_2
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad otouchPadFile is not exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static doOpenAction()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 354
    const-string v1, "persist.sys.otouchpad_switch"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v1, "persist.sys.otouchpad_ap_switch"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "persist.sys.otouchpad_u_d_l_r"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "persist.sys.otouchpad_camera"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "persist.sys.otouchpad_unlock"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "persist.sys.otouchpad_music"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 364
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/mt-i2c.2/i2c-2/2-002c/enable_backtouch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "otouchPadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->otouchPadWriter(Ljava/io/File;Ljava/lang/String;)Z

    .line 378
    :goto_0
    return-void

    .line 368
    :cond_1
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad otouchPadFile is not exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v0    # "otouchPadFile":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/mt-i2c.2/i2c-2/2-002c/enable_backtouch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v0    # "otouchPadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->otouchPadWriter(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_0

    .line 375
    :cond_3
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad otouchPadFile is not exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static otouchPadWriter(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writeValue"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v3, 0x1

    .line 382
    .local v3, "writeFlag":Z
    const/4 v0, 0x0

    .line 384
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    if-eqz v1, :cond_2

    .line 393
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 397
    :goto_0
    const/4 v0, 0x0

    .line 400
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return v3

    .line 394
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v3, 0x0

    .line 389
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    if-eqz v0, :cond_0

    .line 393
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 397
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 394
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 395
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 391
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v0, :cond_1

    .line 393
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 397
    :goto_5
    const/4 v0, 0x0

    :cond_1
    throw v4

    .line 394
    :catch_3
    move-exception v2

    .line 395
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 391
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 387
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_2
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private setCheckBoxChecked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    iget-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxAppNameSwitch:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.otouchpad_ap_switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    iget-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.otouchpad_camera"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 318
    iget-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUpDownLeftRight:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.otouchpad_u_d_l_r"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUnlock:Landroid/preference/CheckBoxPreference;

    const-string v3, "persist.sys.otouchpad_unlock"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    return-void

    :cond_0
    move v0, v2

    .line 312
    goto :goto_0

    :cond_1
    move v0, v2

    .line 317
    goto :goto_1

    :cond_2
    move v0, v2

    .line 318
    goto :goto_2

    :cond_3
    move v1, v2

    .line 322
    goto :goto_3
.end method

.method private setCheckBoxEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxAppNameSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUpDownLeftRight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 309
    return-void
.end method

.method private showOTouchpadCameraHelpDlg()V
    .locals 5

    .prologue
    .line 198
    iget-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 199
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400ed

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 200
    .local v1, "dialog":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f1001fd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->mImageView:Landroid/widget/ImageView;

    .line 203
    iget-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 204
    iget-object v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 207
    const v3, 0x7f090b50

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 209
    const v3, 0x104000a

    new-instance v4, Lcom/v/otouchpad/OTouchpadSettings$1;

    invoke-direct {v4, p0}, Lcom/v/otouchpad/OTouchpadSettings$1;-><init>(Lcom/v/otouchpad/OTouchpadSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 218
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    const-string v4, "GestureSettings"

    const-string v5, "OTouchpad onActivityCreated() :"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/v/otouchpad/OTouchpadSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 128
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 131
    iget-object v4, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 133
    const-string v4, "persist.sys.otouchpad_switch"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchChecked:Z

    .line 134
    iget-object v2, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchChecked:Z

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 136
    iget-object v2, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/extrasettings/widget/SwitchBar;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/v/otouchpad/OTouchpadSettings;->setCheckBoxEnabled(Z)V

    .line 137
    invoke-direct {p0}, Lcom/v/otouchpad/OTouchpadSettings;->setCheckBoxChecked()V

    .line 139
    return-void

    :cond_0
    move v2, v3

    .line 133
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad onCreate() :"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/v/otouchpad/OTouchpadSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/v/otouchpad/OTouchpadSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, "resolver":Landroid/content/ContentResolver;
    const v1, 0x7f060058

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->addPreferencesFromResource(I)V

    .line 100
    const-string v1, "otouchpad_settings_custom_app_switch"

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxAppNameSwitch:Landroid/preference/CheckBoxPreference;

    .line 101
    const-string v1, "otouchpad_settings_custom_app_name"

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mOtouchpadActionAppPreScreen:Landroid/preference/PreferenceScreen;

    .line 102
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mOtouchpadActionAppPreScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const-string v1, "otouchpad_settings_up_down_left_right"

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUpDownLeftRight:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v1, "otouchpad_settings_camera_mood_album"

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v1, "otouchpad_settings_mood_music"

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    .line 107
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxAppNameSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUpDownLeftRight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    const-string v1, "otouchpad_settings_unlock"

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUnlock:Landroid/preference/CheckBoxPreference;

    .line 118
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 194
    iget-object v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 195
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/v/otouchpad/OTouchpadSettings;->mValidListener:Z

    .line 188
    :cond_0
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 189
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 234
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTouchpad onPreferenceChange() : key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 236
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUpDownLeftRight:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 237
    const-string v2, "persist.sys.otouchpad_u_d_l_r"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/v/otouchpad/OTouchpadSettings;->doCloseAction()V

    .line 239
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTouchpad onPreferenceChange() : OTOUCHPAD_UP_DOWN_LEFT_RIGHT_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.otouchpad_u_d_l_r"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 237
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    .line 241
    const-string v2, "persist.sys.otouchpad_music"

    if-eqz v0, :cond_3

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/v/otouchpad/OTouchpadSettings;->doCloseAction()V

    .line 243
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTouchpad onPreferenceChange() : OTOUCHPAD_MUSIC_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.otouchpad_music"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    :cond_3
    const-string v1, "0"

    goto :goto_2

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_7

    .line 245
    const-string v2, "persist.sys.otouchpad_camera"

    if-eqz v0, :cond_6

    const-string v1, "1"

    :goto_3
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-eqz v0, :cond_5

    .line 247
    invoke-direct {p0}, Lcom/v/otouchpad/OTouchpadSettings;->showOTouchpadCameraHelpDlg()V

    .line 249
    :cond_5
    invoke-direct {p0}, Lcom/v/otouchpad/OTouchpadSettings;->doCloseAction()V

    .line 250
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTouchpad onPreferenceChange() : OTOUCHPAD_CAMERA_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.otouchpad_camera"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 245
    :cond_6
    const-string v1, "0"

    goto :goto_3

    .line 251
    :cond_7
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxAppNameSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_9

    .line 252
    const-string v2, "persist.sys.otouchpad_ap_switch"

    if-eqz v0, :cond_8

    const-string v1, "1"

    :goto_4
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/v/otouchpad/OTouchpadSettings;->doCloseAction()V

    goto :goto_1

    .line 252
    :cond_8
    const-string v1, "0"

    goto :goto_4

    .line 258
    :cond_9
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mCheckBoxUnlock:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 259
    const-string v2, "persist.sys.otouchpad_unlock"

    if-eqz v0, :cond_a

    const-string v1, "1"

    :goto_5
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/v/otouchpad/OTouchpadSettings;->doCloseAction()V

    .line 261
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTouchpad onPreferenceChange() : OTOUCHPAD_UNLOCK_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.otouchpad_unlock"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 259
    :cond_a
    const-string v1, "0"

    goto :goto_5
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 222
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad onPreferenceClick() :"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mOtouchpadActionAppPreScreen:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, "allAppsIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.v.otouchpad.AllAppsListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    .end local v0    # "allAppsIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 14

    .prologue
    const v13, 0x7f090b4b

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 143
    const-string v8, "GestureSettings"

    const-string v9, "OTouchpad onResume"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v8, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "allIntentApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v8, "persist.sys.otp_pkg"

    const-string v9, "persist.sys.otp_def_pkg_act"

    const-string v10, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v11

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "packageName":Ljava/lang/String;
    const-string v8, "persist.sys.otp_act"

    const-string v9, "persist.sys.otp_def_pkg_act"

    const-string v10, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v12

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "activityName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 152
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 153
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "appName":Ljava/lang/String;
    iget-object v8, p0, Lcom/v/otouchpad/OTouchpadSettings;->mOtouchpadActionAppPreScreen:Landroid/preference/PreferenceScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iput-boolean v11, p0, Lcom/v/otouchpad/OTouchpadSettings;->mResetDefaultApp:Z

    .line 159
    .end local v2    # "appName":Ljava/lang/String;
    :cond_0
    iget-boolean v8, p0, Lcom/v/otouchpad/OTouchpadSettings;->mResetDefaultApp:Z

    if-eqz v8, :cond_1

    .line 160
    const-string v8, "persist.sys.otp_def_pkg_act"

    const-string v9, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v11

    .line 162
    .local v7, "resetPackageName":Ljava/lang/String;
    const-string v8, "persist.sys.otp_def_pkg_act"

    const-string v9, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v6, v8, v12

    .line 164
    .local v6, "resetActivityName":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 165
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 166
    const-string v8, "persist.sys.otp_pkg"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v8, "persist.sys.otp_act"

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2    # "appName":Ljava/lang/String;
    iget-object v8, p0, Lcom/v/otouchpad/OTouchpadSettings;->mOtouchpadActionAppPreScreen:Landroid/preference/PreferenceScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/v/otouchpad/OTouchpadSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    const-string v8, "GestureSettings"

    const-string v9, "OTouchpad settings reset def app"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v2    # "appName":Ljava/lang/String;
    .end local v6    # "resetActivityName":Ljava/lang/String;
    .end local v7    # "resetPackageName":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 176
    iget-boolean v8, p0, Lcom/v/otouchpad/OTouchpadSettings;->mValidListener:Z

    if-nez v8, :cond_2

    .line 177
    iget-object v8, p0, Lcom/v/otouchpad/OTouchpadSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v8, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 178
    iput-boolean v12, p0, Lcom/v/otouchpad/OTouchpadSettings;->mValidListener:Z

    .line 180
    :cond_2
    return-void

    .line 151
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 164
    .restart local v6    # "resetActivityName":Ljava/lang/String;
    .restart local v7    # "resetPackageName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 270
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad onSwitchChanged() :"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-eqz p2, :cond_2

    .line 272
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad onSwitchChanged() isChecked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v2, "persist.sys.otouchpad_switch"

    if-eqz p2, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/mt-i2c.2/i2c-2/2-002c/enable_backtouch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "otouchPadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->otouchPadWriter(Ljava/io/File;Ljava/lang/String;)Z

    .line 280
    :goto_1
    invoke-static {}, Lcom/v/otouchpad/OTouchpadSettings;->doOpenAction()V

    .line 281
    invoke-direct {p0, p2}, Lcom/v/otouchpad/OTouchpadSettings;->setCheckBoxEnabled(Z)V

    .line 293
    :goto_2
    return-void

    .line 273
    .end local v0    # "otouchPadFile":Ljava/io/File;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 278
    .restart local v0    # "otouchPadFile":Ljava/io/File;
    :cond_1
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad otouchPadFile is not exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    .end local v0    # "otouchPadFile":Ljava/io/File;
    :cond_2
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad onSwitchChanged() noChecked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v2, "persist.sys.otouchpad_switch"

    if-eqz p2, :cond_3

    const-string v1, "1"

    :goto_3
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/mt-i2c.2/i2c-2/2-002c/enable_backtouch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v0    # "otouchPadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/v/otouchpad/OTouchpadSettings;->otouchPadWriter(Ljava/io/File;Ljava/lang/String;)Z

    .line 291
    :goto_4
    invoke-direct {p0, p2}, Lcom/v/otouchpad/OTouchpadSettings;->setCheckBoxEnabled(Z)V

    goto :goto_2

    .line 284
    .end local v0    # "otouchPadFile":Ljava/io/File;
    :cond_3
    const-string v1, "0"

    goto :goto_3

    .line 289
    .restart local v0    # "otouchPadFile":Ljava/io/File;
    :cond_4
    const-string v1, "GestureSettings"

    const-string v2, "OTouchpad otouchPadFile is not exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
