.class public Lcom/android/extrasettings/wifi/AdvancedWifiSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/wifi/AdvancedWifiSettings$WpsFragment;
    }
.end annotation


# instance fields
.field private mAdvancedWifiSettingsExt:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiAssistantPreference:Lcom/android/extrasettings/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/extrasettings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/AdvancedWifiSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method private initPreferences()V
    .locals 18

    .prologue
    .line 135
    const-string v15, "notify_open_networks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 137
    .local v4, "notifyOpenNetworks":Landroid/preference/SwitchPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_networks_available_notification_on"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_0
    invoke-virtual {v4, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v15

    invoke-virtual {v4, v15}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 141
    const-string v15, "wifi_scan_always_available"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 143
    .local v6, "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_scan_always_enabled"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v6, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 146
    new-instance v3, Landroid/content/Intent;

    const-string v15, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v3, "intent":Landroid/content/Intent;
    const-string v15, "com.android.certinstaller"

    const-string v16, "com.android.certinstaller.CertInstallerMain"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v15, "install_as_uid"

    const/16 v16, 0x3f2

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v15, "install_credentials"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 151
    .local v5, "pref":Landroid/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 154
    .local v1, "context":Landroid/content/Context;
    const-string v15, "wifi_assistant"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/extrasettings/AppListSwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/extrasettings/AppListSwitchPreference;

    .line 155
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 157
    .local v7, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-nez v15, :cond_6

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/extrasettings/AppListSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/extrasettings/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    .line 164
    :cond_0
    :goto_2
    new-instance v11, Landroid/content/Intent;

    const-class v15, Lcom/android/extrasettings/Settings$WifiP2pSettingsActivity;

    invoke-direct {v11, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v11, "wifiDirectIntent":Landroid/content/Intent;
    const-string v15, "wifi_direct"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 167
    .local v12, "wifiDirectPref":Landroid/preference/Preference;
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 170
    const-string v15, "wps_push_button"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 171
    .local v14, "wpsPushPref":Landroid/preference/Preference;
    new-instance v15, Lcom/android/extrasettings/wifi/AdvancedWifiSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/extrasettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    const-string v15, "wps_pin_entry"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 181
    .local v13, "wpsPinPref":Landroid/preference/Preference;
    new-instance v15, Lcom/android/extrasettings/wifi/AdvancedWifiSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/extrasettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v13, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 189
    const-string v15, "frequency_band"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 191
    .local v2, "frequencyPref":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 192
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v10

    .line 194
    .local v10, "value":I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_7

    .line 195
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 207
    .end local v10    # "value":I
    :cond_1
    :goto_3
    const-string v15, "sleep_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    .line 208
    .local v8, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v8, :cond_3

    .line 209
    invoke-static {v1}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 210
    const v15, 0x7f0b000e

    invoke-virtual {v8, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 212
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_sleep_policy"

    const/16 v17, 0x2

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 216
    .restart local v10    # "value":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, "stringValue":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 220
    .end local v9    # "stringValue":Ljava/lang/String;
    .end local v10    # "value":I
    :cond_3
    return-void

    .line 137
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "frequencyPref":Landroid/preference/ListPreference;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pref":Landroid/preference/Preference;
    .end local v6    # "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    .end local v7    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    .end local v8    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v11    # "wifiDirectIntent":Landroid/content/Intent;
    .end local v12    # "wifiDirectPref":Landroid/preference/Preference;
    .end local v13    # "wpsPinPref":Landroid/preference/Preference;
    .end local v14    # "wpsPushPref":Landroid/preference/Preference;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 143
    .restart local v6    # "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 160
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "pref":Landroid/preference/Preference;
    .restart local v7    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/extrasettings/AppListSwitchPreference;

    if-eqz v15, :cond_0

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/extrasettings/AppListSwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 198
    .restart local v2    # "frequencyPref":Landroid/preference/ListPreference;
    .restart local v10    # "value":I
    .restart local v11    # "wifiDirectIntent":Landroid/content/Intent;
    .restart local v12    # "wifiDirectPref":Landroid/preference/Preference;
    .restart local v13    # "wpsPinPref":Landroid/preference/Preference;
    .restart local v14    # "wpsPushPref":Landroid/preference/Preference;
    :cond_7
    const-string v15, "AdvancedWifiSettings"

    const-string v16, "Failed to fetch frequency band"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 201
    .end local v10    # "value":I
    :cond_8
    if-eqz v2, :cond_1

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private initWifiAssistantPreference(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 224
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 225
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 226
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 227
    .local v4, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v5, v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 229
    goto :goto_0

    .line 230
    .end local v4    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    iget-object v5, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/extrasettings/AppListSwitchPreference;

    iget-object v6, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/extrasettings/AppListSwitchPreference;->setPackageNames([Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private refreshWifiInfo()V
    .locals 5

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 342
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 344
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "mac_address"

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 345
    .local v3, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 346
    .local v1, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v1    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 351
    return-void

    .line 345
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 346
    .restart local v1    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f090497

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p2, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0b000e

    .line 239
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 241
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 243
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 237
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0b000d

    goto :goto_0

    .line 240
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 108
    iget-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 113
    iget-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mAdvancedWifiSettingsExt:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->onActivityCreated(Landroid/content/ContentResolver;)V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 98
    new-instance v0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;-><init>(Lcom/android/extrasettings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mAdvancedWifiSettingsExt:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    .line 100
    iget-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mAdvancedWifiSettingsExt:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->onCreate()V

    .line 101
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 129
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mAdvancedWifiSettingsExt:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->onPause()V

    .line 132
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 284
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "key":Ljava/lang/String;
    const-string v8, "frequency_band"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 288
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 289
    .local v6, "value":I
    iget-object v8, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v8, v6, v11}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 290
    invoke-direct {p0, p1, v6}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v6    # "value":I
    :cond_0
    const-string v8, "sleep_policy"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 326
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 327
    .local v5, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "wifi_sleep_policy"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    invoke-direct {p0, p1, v5}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "stringValue":Ljava/lang/String;
    :cond_1
    move v8, v10

    .line 337
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v8

    .line 291
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f0903e1

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 294
    goto :goto_0

    .line 296
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v8, "wifi_assistant"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 297
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v1, p2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v7

    .line 299
    .local v7, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v7, :cond_3

    .line 300
    iget-object v8, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move v8, v10

    .line 301
    goto :goto_0

    .line 304
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 309
    iget-object v8, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 321
    goto :goto_0

    .line 313
    :cond_4
    const-string v8, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v8, "packageName"

    iget-object v10, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 330
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 331
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f09037b

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 333
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 261
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "key":Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    :goto_0
    return v2

    .line 267
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v3, "wifi_scan_always_available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 271
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    const-string v3, "wifi_ap_auto_join_available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 272
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_auto_join"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 276
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 120
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 123
    iget-object v0, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->mAdvancedWifiSettingsExt:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->onResume()V

    .line 124
    return-void
.end method
