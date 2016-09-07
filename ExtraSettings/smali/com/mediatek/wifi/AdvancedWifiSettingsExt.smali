.class public Lcom/mediatek/wifi/AdvancedWifiSettingsExt;
.super Ljava/lang/Object;
.source "AdvancedWifiSettingsExt.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIpAddressPref:Landroid/preference/Preference;

.field private mIpv6AddressPref:Landroid/preference/Preference;

.field private mMacAddressPref:Landroid/preference/Preference;

.field private mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/SettingsPreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/extrasettings/SettingsPreferenceFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt$1;-><init>(Lcom/mediatek/wifi/AdvancedWifiSettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    const-string v0, "AdvancedWifiSettingsExt"

    const-string v1, "AdvancedWifiSettingsExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wifi/AdvancedWifiSettingsExt;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private addWifiInfoPreference()V
    .locals 9

    .prologue
    .line 204
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    const-string v6, "mac_address"

    invoke-virtual {v5, v6}, Lcom/android/extrasettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mMacAddressPref:Landroid/preference/Preference;

    .line 205
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    const-string v6, "current_ip_address"

    invoke-virtual {v5, v6}, Lcom/android/extrasettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpAddressPref:Landroid/preference/Preference;

    .line 206
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 208
    .local v4, "screen":Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 209
    .local v1, "order":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 210
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 211
    .local v3, "preference":Landroid/preference/Preference;
    const-string v5, "mac_address"

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "current_ip_address"

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 212
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "order":I
    .local v2, "order":I
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setOrder(I)V

    move v1, v2

    .line 209
    .end local v2    # "order":I
    .restart local v1    # "order":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mMacAddressPref:Landroid/preference/Preference;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "order":I
    .restart local v2    # "order":I
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 216
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpAddressPref:Landroid/preference/Preference;

    if-eqz v5, :cond_3

    .line 217
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpAddressPref:Landroid/preference/Preference;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "order":I
    .restart local v1    # "order":I
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 221
    :goto_1
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_DHCPV6C_WIFI:Z

    if-eqz v5, :cond_2

    .line 222
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpAddressPref:Landroid/preference/Preference;

    const v6, 0x7f09005e

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 223
    new-instance v5, Landroid/preference/Preference;

    iget-object v6, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    const v8, 0x101008d

    invoke-direct {v5, v6, v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpv6AddressPref:Landroid/preference/Preference;

    .line 224
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpv6AddressPref:Landroid/preference/Preference;

    const v6, 0x7f09005f

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 225
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpv6AddressPref:Landroid/preference/Preference;

    const-string v6, "current_ipv6_address"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpv6AddressPref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_2
    return-void

    .end local v1    # "order":I
    .restart local v2    # "order":I
    :cond_3
    move v1, v2

    .end local v2    # "order":I
    .restart local v1    # "order":I
    goto :goto_1
.end method

.method private initPreferences()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 119
    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    const-string v6, "notify_open_networks"

    invoke-virtual {v3, v6}, Lcom/android/extrasettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    .line 120
    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    const-string v6, "sleep_policy"

    invoke-virtual {v3, v6}, Lcom/android/extrasettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 121
    .local v2, "sleepPolicyPref":Landroid/preference/ListPreference;
    invoke-static {}, Lcom/mediatek/wifi/WifiUtils;->getCMCC()Z

    move-result v1

    .line 122
    .local v1, "excluded":Z
    if-eqz v2, :cond_0

    .line 123
    iget-object v6, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v3}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0b000e

    :goto_0
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b006f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v3, v7}, Lcom/mediatek/settings/ext/IWifiExt;->setSleepPolicyPreference(Landroid/preference/ListPreference;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    const-string v6, "wifi_ap_auto_join_available"

    invoke-virtual {v3, v6}, Lcom/android/extrasettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 132
    .local v0, "autoJoin":Landroid/preference/SwitchPreference;
    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v3}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d0002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 133
    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_auto_join"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 135
    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 141
    :cond_1
    :goto_2
    return-void

    .line 123
    .end local v0    # "autoJoin":Landroid/preference/SwitchPreference;
    :cond_2
    const v3, 0x7f0b000d

    goto :goto_0

    .restart local v0    # "autoJoin":Landroid/preference/SwitchPreference;
    :cond_3
    move v3, v5

    .line 133
    goto :goto_1

    .line 137
    :cond_4
    if-eqz v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v3}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private refreshWifiInfo()V
    .locals 12

    .prologue
    const v11, 0x7f090497

    const/4 v10, 0x1

    .line 148
    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_DHCPV6C_WIFI:Z

    if-eqz v7, :cond_7

    .line 150
    invoke-static {}, Lcom/mediatek/settings/UtilsExt;->getWifiIpAddresses()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "ipAddress":Ljava/lang/String;
    const-string v7, "AdvancedWifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshWifiInfo, the ipAddress is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz v1, :cond_5

    .line 153
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "ipAddresses":[Ljava/lang/String;
    array-length v3, v2

    .line 155
    .local v3, "ipAddressesLength":I
    const-string v7, "AdvancedWifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ipAddressesLength is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_6

    .line 157
    aget-object v7, v2, v0

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 158
    const-string v7, "AdvancedWifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ipAddresses[i] is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v8, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpAddressPref:Landroid/preference/Preference;

    aget-object v7, v2, v0

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    if-ne v3, v10, :cond_0

    .line 162
    iget-object v7, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpv6AddressPref:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    aget-object v7, v2, v0

    goto :goto_1

    .line 166
    :cond_2
    const-string v4, ""

    .line 167
    .local v4, "ipSummary":Ljava/lang/String;
    aget-object v7, v2, v0

    if-nez v7, :cond_4

    .line 168
    iget-object v7, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_3
    iget-object v7, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpv6AddressPref:Landroid/preference/Preference;

    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    if-ne v3, v10, :cond_0

    .line 179
    iget-object v7, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpAddressPref:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 170
    :cond_4
    aget-object v7, v2, v0

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "ipv6Addresses":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_3

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 184
    .end local v0    # "i":I
    .end local v2    # "ipAddresses":[Ljava/lang/String;
    .end local v3    # "ipAddressesLength":I
    .end local v4    # "ipSummary":Ljava/lang/String;
    .end local v5    # "ipv6Addresses":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_5
    iget-object v7, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpv6AddressPref:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    invoke-direct {p0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->setDefaultIPAddress()V

    .line 191
    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_6
    :goto_4
    iget-object v7, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v7}, Lcom/mediatek/settings/ext/IWifiExt;->refreshNetworkInfoView()V

    .line 192
    return-void

    .line 188
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->setDefaultIPAddress()V

    goto :goto_4
.end method

.method private setDefaultIPAddress()V
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/extrasettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "ipAddress":Ljava/lang/String;
    const-string v1, "AdvancedWifiSettingsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default ipAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIpAddressPref:Landroid/preference/Preference;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090497

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 91
    const-string v0, "AdvancedWifiSettingsExt"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v1, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->initConnectView(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    iget-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiExt;->initPreference(Landroid/content/ContentResolver;)V

    .line 96
    invoke-direct {p0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->addWifiInfoPreference()V

    .line 97
    iget-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v1, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mFragment:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiExt;->initNetworkInfoView(Landroid/preference/PreferenceScreen;)V

    .line 99
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "AdvancedWifiSettingsExt"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIntentFilter:Landroid/content/IntentFilter;

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 105
    const-string v0, "AdvancedWifiSettingsExt"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->initPreferences()V

    .line 107
    invoke-direct {p0}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->refreshWifiInfo()V

    .line 109
    iget-object v0, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method
