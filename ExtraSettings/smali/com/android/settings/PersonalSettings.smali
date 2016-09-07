.class public Lcom/android/extrasettings/PersonalSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "PersonalSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/extrasettings/search/Indexable;


# instance fields
.field mBackKill:Landroid/preference/SwitchPreference;

.field mChangeDpi:Landroid/preference/EditTextPreference;

.field mDobleTap:Landroid/preference/SwitchPreference;

.field mFlashCall:Landroid/preference/SwitchPreference;

.field mMainSD:Landroid/preference/SwitchPreference;

.field mMultiUser:Landroid/preference/SwitchPreference;

.field mNetSpeed:Landroid/preference/SwitchPreference;

.field mSearchRecent:Landroid/preference/SwitchPreference;

.field mShowAM:Landroid/preference/SwitchPreference;

.field mSoftKeys:Landroid/preference/SwitchPreference;

.field mSoundCap:Landroid/preference/SwitchPreference;

.field mVibrateButtons:Landroid/preference/SwitchPreference;

.field mainSD:Ljava/lang/String;

.field mclockCenter:Landroid/preference/SwitchPreference;

.field modelo:Ljava/lang/String;

.field multiuser:Ljava/lang/String;

.field softKeys:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mNetSpeed:Landroid/preference/SwitchPreference;

    .line 98
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mFlashCall:Landroid/preference/SwitchPreference;

    .line 99
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mMultiUser:Landroid/preference/SwitchPreference;

    .line 100
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mSearchRecent:Landroid/preference/SwitchPreference;

    .line 101
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mSoftKeys:Landroid/preference/SwitchPreference;

    .line 102
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mShowAM:Landroid/preference/SwitchPreference;

    .line 103
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mclockCenter:Landroid/preference/SwitchPreference;

    .line 104
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mMainSD:Landroid/preference/SwitchPreference;

    .line 105
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mSoundCap:Landroid/preference/SwitchPreference;

    .line 106
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mBackKill:Landroid/preference/SwitchPreference;

    .line 107
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mVibrateButtons:Landroid/preference/SwitchPreference;

    .line 108
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mChangeDpi:Landroid/preference/EditTextPreference;

    .line 109
    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mDobleTap:Landroid/preference/SwitchPreference;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->multiuser:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->softKeys:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->mainSD:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/android/extrasettings/PersonalSettings;->modelo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super/range {p0 .. p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    new-instance v15, Ljava/io/File;

    const-string v16, "/system/build.prop"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "cadenaLeida":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_4

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "fw.show_multiuserui"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 126
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "fw.show_multiuserui="

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->multiuser:Ljava/lang/String;

    .line 128
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "qemu.hw.mainkeys"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "qemu.hw.mainkeys="

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->softKeys:Ljava/lang/String;

    .line 131
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.mtk_2sdcard_swap"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.mtk_2sdcard_swap="

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mainSD:Ljava/lang/String;

    .line 134
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.product.model"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.product.model="

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->modelo:Ljava/lang/String;

    .line 137
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 139
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "cadenaLeida":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 142
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 143
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 145
    .local v10, "resolver":Landroid/content/ContentResolver;
    const v14, 0x7f06002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->addPreferencesFromResource(I)V

    .line 146
    const-string v14, "toggle_net_speed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mNetSpeed:Landroid/preference/SwitchPreference;

    .line 149
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "net_speed"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v9, 0x1

    .line 150
    .local v9, "netSpeed":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mNetSpeed:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mNetSpeed:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 196
    .end local v9    # "netSpeed":Z
    :goto_2
    const-string v14, "toggle_multi_user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mMultiUser:Landroid/preference/SwitchPreference;

    .line 198
    const/4 v8, 0x0

    .line 199
    .local v8, "multi":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->multiuser:Ljava/lang/String;

    if-eqz v14, :cond_a

    .line 200
    const-string v14, "0"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/PersonalSettings;->multiuser:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 201
    const/4 v8, 0x0

    .line 209
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mMultiUser:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mMultiUser:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 213
    :goto_4
    const-string v14, "toggle_main_keys"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mSoftKeys:Landroid/preference/SwitchPreference;

    .line 215
    const/4 v11, 0x0

    .line 216
    .local v11, "soft":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->softKeys:Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 217
    const-string v14, "1"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/PersonalSettings;->softKeys:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 218
    const/4 v11, 0x0

    .line 224
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mSoftKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mSoftKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    const-string v14, "IROCK"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/PersonalSettings;->modelo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mSoftKeys:Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 233
    :cond_7
    :goto_6
    const-string v14, "toggle_sound_cap"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mSoundCap:Landroid/preference/SwitchPreference;

    .line 236
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screenshot_shutter_sound"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v12, 0x0

    .line 237
    .local v12, "soundCap":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mSoundCap:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mSoundCap:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 241
    .end local v12    # "soundCap":Z
    :goto_8
    const-string v14, "toggle_back_kill"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mBackKill:Landroid/preference/SwitchPreference;

    .line 244
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "kill_app_longpress_back"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v2, 0x1

    .line 245
    .local v2, "backKill":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mBackKill:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mBackKill:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 249
    .end local v2    # "backKill":Z
    :goto_a
    const-string v14, "toggle_double_tap"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mDobleTap:Landroid/preference/SwitchPreference;

    .line 252
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "double_tap_sleep_gesture"

    const/16 v16, 0x1

    const/16 v17, -0x2

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    const/4 v5, 0x1

    .line 253
    .local v5, "dobletap":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mDobleTap:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mDobleTap:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 257
    .end local v5    # "dobletap":Z
    :goto_c
    const-string v14, "toggle_flash_call"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mFlashCall:Landroid/preference/SwitchPreference;

    .line 259
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "flash_Call"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    const/4 v6, 0x1

    .line 260
    .local v6, "flashCall":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mFlashCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mFlashCall:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 264
    .end local v6    # "flashCall":Z
    :goto_e
    const-string v14, "toggle_vibrate_buttons"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mVibrateButtons:Landroid/preference/SwitchPreference;

    .line 267
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "vibrate_buttons"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    const/4 v13, 0x1

    .line 268
    .local v13, "vibrateButtons":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mVibrateButtons:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mVibrateButtons:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 273
    .end local v13    # "vibrateButtons":Z
    :goto_10
    const-string v14, "edt_cambioDpi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/extrasettings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mChangeDpi:Landroid/preference/EditTextPreference;

    .line 275
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 276
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mChangeDpi:Landroid/preference/EditTextPreference;

    iget v15, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mChangeDpi:Landroid/preference/EditTextPreference;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090b96

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/PersonalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090b80

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/PersonalSettings;->mChangeDpi:Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 290
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    :goto_11
    return-void

    .line 149
    .end local v8    # "multi":Z
    .end local v11    # "soft":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 202
    .restart local v8    # "multi":Z
    :cond_9
    :try_start_a
    const-string v14, "1"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/PersonalSettings;->multiuser:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-result v14

    if-eqz v14, :cond_5

    .line 203
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 206
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 219
    .restart local v11    # "soft":Z
    :cond_b
    :try_start_b
    const-string v14, "0"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/PersonalSettings;->softKeys:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    move-result v14

    if-eqz v14, :cond_6

    .line 220
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 236
    :cond_c
    const/4 v12, 0x1

    goto/16 :goto_7

    .line 244
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 252
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 259
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 267
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_f

    .line 279
    :catch_1
    move-exception v14

    goto :goto_11

    .line 270
    :catch_2
    move-exception v14

    goto/16 :goto_10

    .line 262
    :catch_3
    move-exception v14

    goto/16 :goto_e

    .line 255
    :catch_4
    move-exception v14

    goto/16 :goto_c

    .line 247
    :catch_5
    move-exception v14

    goto/16 :goto_a

    .line 239
    :catch_6
    move-exception v14

    goto/16 :goto_8

    .line 229
    :catch_7
    move-exception v14

    goto/16 :goto_6

    .line 211
    .end local v11    # "soft":Z
    :catch_8
    move-exception v14

    goto/16 :goto_4

    .line 152
    .end local v8    # "multi":Z
    :catch_9
    move-exception v14

    goto/16 :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v10, 0x7f090b87

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "key":Ljava/lang/String;
    const-string v5, "toggle_net_speed"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "net_speed"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    :goto_0
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    :cond_0
    const-string v5, "toggle_vibrate_buttons"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "vibrate_buttons"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    :cond_1
    const-string v5, "toggle_flash_call"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "flash_Call"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    :goto_2
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    :cond_2
    const-string v5, "toggle_multi_user"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p2

    .line 312
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 314
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v8, "su"

    invoke-virtual {v5, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 315
    .local v0, "bos":Ljava/io/OutputStream;
    const-string v5, "mount -o,remount rw /system\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 316
    const-string v5, "busybox sed -i s/fw.show_multiuserui=0/fw.show_multiuserui=1/g /system/build.prop\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 317
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 318
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "bos":Ljava/io/OutputStream;
    :goto_3
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 336
    :cond_3
    const-string v5, "toggle_main_keys"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, p2

    .line 337
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 339
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v8, "su"

    invoke-virtual {v5, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 340
    .restart local v0    # "bos":Ljava/io/OutputStream;
    const-string v5, "mount -o,remount rw /system\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 341
    const-string v5, "busybox sed -i s/qemu.hw.mainkeys=1/qemu.hw.mainkeys=0/g /system/build.prop\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 342
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 343
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 359
    .end local v0    # "bos":Ljava/io/OutputStream;
    :goto_4
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 361
    :cond_4
    const-string v5, "toggle_search_bar_recents"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 362
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "search_bar_recents"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v6

    :goto_5
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    :cond_5
    const-string v5, "toggle_clock_am"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 365
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "clock_show_am"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v6

    :goto_6
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    :cond_6
    const-string v5, "toggle_clock_center"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 368
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "clock_center"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v6

    :goto_7
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    :cond_7
    const-string v5, "toggle_double_tap"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 371
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "double_tap_sleep_gesture"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v6

    :goto_8
    const/4 v10, -0x2

    invoke-static {v8, v9, v5, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 378
    :cond_8
    const-string v5, "toggle_sound_cap"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 379
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screenshot_shutter_sound"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_16

    move v5, v7

    :goto_9
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    :cond_9
    const-string v5, "toggle_back_kill"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 382
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "kill_app_longpress_back"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    move v7, v6

    :cond_a
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    :cond_b
    const-string v5, "edt_cambioDpi"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 386
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "nDPI":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v5

    if-eqz v5, :cond_17

    .line 390
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v7, "su\n"

    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 391
    .restart local v0    # "bos":Ljava/io/OutputStream;
    const-string v5, "wm density reset\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 392
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 393
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 396
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/extrasettings/PersonalSettings$1;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/PersonalSettings$1;-><init>(Lcom/android/extrasettings/PersonalSettings;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 421
    .local v4, "trh":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 476
    .end local v0    # "bos":Ljava/io/OutputStream;
    .end local v3    # "nDPI":Ljava/lang/String;
    .end local v4    # "trh":Ljava/lang/Thread;
    :cond_c
    :goto_a
    return v6

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_d
    move v5, v7

    .line 300
    goto/16 :goto_0

    :cond_e
    move v5, v7

    .line 304
    goto/16 :goto_1

    :cond_f
    move v5, v7

    .line 308
    goto/16 :goto_2

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v8, "su"

    invoke-virtual {v5, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 325
    .restart local v0    # "bos":Ljava/io/OutputStream;
    const-string v5, "mount -o,remount rw /system\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 326
    const-string v5, "busybox sed -i s/fw.show_multiuserui=1/fw.show_multiuserui=0/g /system/build.prop\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 327
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 328
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 329
    .end local v0    # "bos":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    goto/16 :goto_3

    .line 349
    :cond_11
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v8, "su"

    invoke-virtual {v5, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 350
    .restart local v0    # "bos":Ljava/io/OutputStream;
    const-string v5, "mount -o,remount rw /system\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 351
    const-string v5, "busybox sed -i s/qemu.hw.mainkeys=0/qemu.hw.mainkeys=1/g /system/build.prop\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 352
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 353
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    .line 354
    .end local v0    # "bos":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    goto/16 :goto_4

    :cond_12
    move v5, v7

    .line 362
    goto/16 :goto_5

    :cond_13
    move v5, v7

    .line 365
    goto/16 :goto_6

    :cond_14
    move v5, v7

    .line 368
    goto/16 :goto_7

    :cond_15
    move v5, v7

    .line 371
    goto/16 :goto_8

    :cond_16
    move v5, v6

    .line 379
    goto/16 :goto_9

    .line 427
    .end local p2    # "newValue":Ljava/lang/Object;
    .restart local v3    # "nDPI":Ljava/lang/String;
    :cond_17
    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0xb4

    if-lt v5, v7, :cond_18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x258

    if-le v5, v7, :cond_19

    .line 428
    :cond_18
    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/extrasettings/PersonalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090b95

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_a

    .line 471
    .end local v3    # "nDPI":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto/16 :goto_a

    .line 432
    .restart local v3    # "nDPI":Ljava/lang/String;
    :cond_19
    :try_start_7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v7, "su\n"

    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 433
    .restart local v0    # "bos":Ljava/io/OutputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wm density "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 434
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 435
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 438
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/extrasettings/PersonalSettings$2;

    invoke-direct {v5, p0, v3}, Lcom/android/extrasettings/PersonalSettings$2;-><init>(Lcom/android/extrasettings/PersonalSettings;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 463
    .restart local v4    # "trh":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_a

    .line 465
    .end local v0    # "bos":Ljava/io/OutputStream;
    .end local v4    # "trh":Ljava/lang/Thread;
    :catch_4
    move-exception v5

    goto/16 :goto_a

    .line 423
    :catch_5
    move-exception v5

    goto/16 :goto_a

    .line 344
    .end local v3    # "nDPI":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_6
    move-exception v5

    goto/16 :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method
