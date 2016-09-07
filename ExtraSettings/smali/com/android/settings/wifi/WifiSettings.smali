.class public Lcom/android/extrasettings/wifi/WifiSettings;
.super Lcom/android/extrasettings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/extrasettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/wifi/WifiSettings$Scanner;,
        Lcom/android/extrasettings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field private static final EXTRA_START_CONNECT_SSID:Ljava/lang/String; = "wifi_start_connect_ssid"

.field static final MENU_ID_ADD_NETWORK:I = 0x4

.field private static final MENU_ID_ADVANCED:I = 0x5

.field private static final MENU_ID_CONNECT:I = 0x7

.field private static final MENU_ID_FORGET:I = 0x8

.field private static final MENU_ID_MODIFY:I = 0x9

.field private static final MENU_ID_SAVED_NETWORK:I = 0x3

.field private static final MENU_ID_SCAN:I = 0x6

.field static final MENU_ID_WPS_PBC:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x2

.field private static final MENU_ID_WRITE_NFC:I = 0xa

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final SAVE_NFC_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state1"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field public static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x1770

.field static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3

.field private static final WRITE_NFC_DIALOG_ID:I = 0x6

.field private static mScanResultsAvailable:Z

.field public static mVerboseLogging:I

.field private static savedNetworksExist:Z


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private mNFCAccessPointSavedState:Landroid/os/Bundle;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

.field public mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

.field private mWifiEnabler:Lcom/android/extrasettings/wifi/WifiEnabler;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

.field private mWifiToNfcDialog:Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    sput v0, Lcom/android/extrasettings/wifi/WifiSettings;->mVerboseLogging:I

    .line 232
    sput-boolean v0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanResultsAvailable:Z

    .line 1151
    new-instance v0, Lcom/android/extrasettings/wifi/WifiSettings$5;

    invoke-direct {v0}, Lcom/android/extrasettings/wifi/WifiSettings$5;-><init>()V

    sput-object v0, Lcom/android/extrasettings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/extrasettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 240
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NO_CERTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/android/extrasettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wifi/WifiSettings$1;-><init>(Lcom/android/extrasettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/extrasettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/wifi/WifiSettings;)Lcom/mediatek/wifi/WifiSettingsExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiSettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/mediatek/wifi/WifiSettingsExt;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/mediatek/wifi/WifiSettingsExt;
    .param p2, "x2"    # Landroid/net/wifi/WifiManager;
    .param p3, "x3"    # Landroid/net/wifi/WifiInfo;
    .param p4, "x4"    # Landroid/net/NetworkInfo;

    .prologue
    .line 92
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/extrasettings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Lcom/mediatek/wifi/WifiSettingsExt;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/WifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    .line 832
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1008
    :cond_0
    return-void
.end method

.method private static constructAccessPoints(Landroid/content/Context;Lcom/mediatek/wifi/WifiSettingsExt;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiSettingsExt"    # Lcom/mediatek/wifi/WifiSettingsExt;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "lastInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "lastNetworkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mediatek/wifi/WifiSettingsExt;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/extrasettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v3, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/wifi/AccessPoint;>;"
    new-instance v4, Lcom/android/extrasettings/wifi/WifiSettings$Multimap;

    const/4 v12, 0x0

    invoke-direct {v4, v12}, Lcom/android/extrasettings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/extrasettings/wifi/WifiSettings$1;)V

    .line 843
    .local v4, "apMap":Lcom/android/extrasettings/wifi/WifiSettings$Multimap;, "Lcom/android/extrasettings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/extrasettings/wifi/AccessPoint;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 844
    .local v6, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_6

    .line 846
    sget-boolean v13, Lcom/android/extrasettings/wifi/WifiSettings;->savedNetworksExist:Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    const/4 v12, 0x1

    :goto_0
    if-eq v13, v12, :cond_0

    .line 847
    sget-boolean v12, Lcom/android/extrasettings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    sput-boolean v12, Lcom/android/extrasettings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 848
    instance-of v12, p0, Landroid/app/Activity;

    if-eqz v12, :cond_0

    move-object v12, p0

    .line 849
    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 852
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 853
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v12, v5, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v12, :cond_2

    iget v12, v5, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v12, :cond_1

    .line 858
    :cond_2
    iget-object v12, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/extrasettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Lcom/android/extrasettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {p1, v5, v0, v12, v13}, Lcom/mediatek/wifi/WifiSettingsExt;->hasChangedSimCard(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 864
    new-instance v2, Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-direct {v2, p0, v5}, Lcom/android/extrasettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 865
    .local v2, "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 866
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/extrasettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 868
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v12, v2, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v12, v2}, Lcom/android/extrasettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 846
    .end local v2    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 847
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 873
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    .line 874
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v11, :cond_b

    .line 875
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 877
    .local v10, "result":Landroid/net/wifi/ScanResult;
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/extrasettings/wifi/WifiSettings;->mScanResultsAvailable:Z

    .line 879
    iget-object v12, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "[IBSS]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 884
    const/4 v7, 0x0

    .line 885
    .local v7, "found":Z
    iget-object v12, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/android/extrasettings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/wifi/AccessPoint;

    .line 886
    .restart local v2    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    invoke-virtual {v2, v10}, Lcom/android/extrasettings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 887
    const/4 v7, 0x1

    goto :goto_4

    .line 889
    .end local v2    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    :cond_9
    if-nez v7, :cond_7

    .line 890
    new-instance v2, Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-direct {v2, p0, v10}, Lcom/android/extrasettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 891
    .restart local v2    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    if-eqz p3, :cond_a

    if-eqz p4, :cond_a

    .line 892
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/extrasettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 894
    :cond_a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    iget-object v12, v2, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v12, v2}, Lcom/android/extrasettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 901
    .end local v2    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    .end local v7    # "found":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :cond_b
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 902
    return-object v3
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 906
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "action":Ljava/lang/String;
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleEvent(), action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 909
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/extrasettings/wifi/WifiSettings;->updateWifiState(I)V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 915
    :cond_2
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 916
    sput-boolean v7, Lcom/android/extrasettings/wifi/WifiSettings;->mScanResultsAvailable:Z

    .line 919
    :cond_3
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 920
    :cond_4
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 921
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 923
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 924
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/extrasettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 925
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 926
    invoke-direct {p0, v2}, Lcom/android/extrasettings/wifi/WifiSettings;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 927
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_5
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 928
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/extrasettings/wifi/WifiSettings;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 929
    :cond_6
    const-string v4, "android.net.wifi.NO_CERTIFICATION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 931
    const-string v1, ""

    .line 932
    .local v1, "apSSID":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v4, :cond_7

    .line 933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    :cond_7
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive  no certification broadcast for AP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 937
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private setOffMessage()V
    .locals 5

    .prologue
    .line 809
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 810
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f09038c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 811
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 813
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    const v1, 0x7f090376

    .line 821
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 822
    .local v0, "charSeq":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 825
    .end local v0    # "charSeq":Ljava/lang/CharSequence;
    .end local v1    # "resId":I
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wifi/WifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    .line 826
    return-void

    .line 819
    :cond_1
    const v1, 0x7f090377

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private updateAccessPoints()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 749
    const v6, 0x7f09038e

    invoke-direct {p0, v6}, Lcom/android/extrasettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 752
    :cond_2
    iget-object v6, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 755
    .local v5, "wifiState":I
    iget-object v6, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v6

    sput v6, Lcom/android/extrasettings/wifi/WifiSettings;->mVerboseLogging:I

    .line 757
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 793
    :pswitch_0
    const v6, 0x7f090367

    invoke-direct {p0, v6}, Lcom/android/extrasettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 760
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v10, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v11, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v6, v8, v9, v10, v11}, Lcom/android/extrasettings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Lcom/mediatek/wifi/WifiSettingsExt;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v1

    .line 764
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/extrasettings/wifi/AccessPoint;>;"
    iget-object v6, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mediatek/wifi/WifiSettingsExt;->emptyCategory(Landroid/preference/PreferenceScreen;)V

    .line 765
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 766
    const v6, 0x7f09038d

    invoke-direct {p0, v6}, Lcom/android/extrasettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 770
    :cond_3
    const-string v6, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accessPoints.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/wifi/AccessPoint;

    .line 773
    .local v0, "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/AccessPoint;->getLevel()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 774
    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v8, v9, v0, v6}, Lcom/mediatek/wifi/WifiSettingsExt;->addPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V

    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2

    .line 777
    .end local v0    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    :cond_6
    iget-object v6, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mediatek/wifi/WifiSettingsExt;->refreshCategory(Landroid/preference/PreferenceScreen;)V

    .line 780
    sget-boolean v6, Lcom/android/extrasettings/wifi/WifiSettings;->mScanResultsAvailable:Z

    if-eqz v6, :cond_0

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 782
    .local v2, "endTime":J
    const-string v6, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Performance test][Settings][wifi] wifi search end ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    sput-boolean v7, Lcom/android/extrasettings/wifi/WifiSettings;->mScanResultsAvailable:Z

    goto/16 :goto_0

    .line 789
    .end local v1    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/extrasettings/wifi/AccessPoint;>;"
    .end local v2    # "endTime":J
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_2
    iget-object v6, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/wifi/WifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 797
    :pswitch_3
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->setOffMessage()V

    goto/16 :goto_0

    .line 757
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 944
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 945
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->pause()V

    .line 971
    :cond_0
    return-void

    .line 949
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_4

    .line 951
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->pause()V

    .line 956
    :goto_0
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 957
    if-eqz p1, :cond_2

    .line 958
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 961
    :cond_2
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 964
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 965
    check-cast v0, Lcom/android/extrasettings/wifi/AccessPoint;

    .line 966
    .local v0, "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v3, v4}, Lcom/android/extrasettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 969
    .end local v0    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/extrasettings/wifi/WifiSettings;->updateAP(Landroid/preference/Preference;)V

    .line 961
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 953
    .end local v1    # "i":I
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 974
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 975
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 979
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 993
    :goto_0
    iput-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 994
    iput-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 995
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->pause()V

    .line 996
    :goto_1
    return-void

    .line 981
    :pswitch_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 985
    :pswitch_1
    const v1, 0x7f090366

    invoke-direct {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 989
    :pswitch_2
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addNetworkForSelector()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1231
    iput-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 1232
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    .line 1233
    return-void
.end method

.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 444
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 445
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 447
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const v3, 0x7f090380

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 451
    sget-boolean v2, Lcom/android/extrasettings/wifi/WifiSettings;->savedNetworksExist:Z

    if-eqz v2, :cond_0

    .line 452
    const/4 v2, 0x3

    const v3, 0x7f0903e4

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 457
    :cond_0
    const/4 v2, 0x6

    const v3, 0x7f090761

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 460
    const/4 v2, 0x5

    const v3, 0x7f090387

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 462
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {v2, v1, p1}, Lcom/mediatek/wifi/WifiSettingsExt;->onCreateOptionsMenu(ZLandroid/view/Menu;)V

    .line 466
    return-void

    .line 445
    :array_0
    .array-data 4
        0x7f010021
        0x7f010023
    .end array-data
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1096
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1092
    return-void
.end method

.method createWifiEnabler()Lcom/android/extrasettings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 402
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    new-instance v1, Lcom/android/extrasettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/extrasettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/extrasettings/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1064
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 1078
    :goto_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1081
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1084
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1087
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/wifi/WifiSettingsExt;->updatePriority()V

    .line 1088
    :goto_1
    return-void

    .line 1070
    :cond_1
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method getAccessPointsCount()I
    .locals 3

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1120
    .local v0, "wifiIsEnabled":Z
    if-eqz v0, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wifi/WifiSettingsExt;->getAccessPointsCount(Landroid/preference/PreferenceScreen;)I

    move-result v1

    .line 1124
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1148
    const v0, 0x7f090ad4

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 804
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 805
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 263
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 265
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 267
    new-instance v8, Lcom/android/extrasettings/wifi/WifiSettings$2;

    invoke-direct {v8, p0}, Lcom/android/extrasettings/wifi/WifiSettings$2;-><init>(Lcom/android/extrasettings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 285
    new-instance v8, Lcom/android/extrasettings/wifi/WifiSettings$3;

    invoke-direct {v8, p0}, Lcom/android/extrasettings/wifi/WifiSettings$3;-><init>(Lcom/android/extrasettings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 303
    new-instance v8, Lcom/android/extrasettings/wifi/WifiSettings$4;

    invoke-direct {v8, p0}, Lcom/android/extrasettings/wifi/WifiSettings$4;-><init>(Lcom/android/extrasettings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 321
    if-eqz p1, :cond_1

    .line 322
    const-string v8, "edit_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 323
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 324
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 328
    :cond_0
    const-string v8, "wifi_ap_state1"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 329
    const-string v8, "wifi_ap_state1"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mNFCAccessPointSavedState:Landroid/os/Bundle;

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 338
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "wifi_enable_next_on_connect"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 340
    iget-boolean v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v8, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 344
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 347
    .local v3, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/extrasettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 352
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const v8, 0x7f060064

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 354
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 355
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 356
    invoke-virtual {p0, v10}, Lcom/android/extrasettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 359
    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    iget-object v9, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, p0, v9}, Lcom/mediatek/wifi/WifiSettingsExt;->onActivityCreated(Lcom/android/extrasettings/SettingsPreferenceFragment;Landroid/net/wifi/WifiManager;)V

    .line 362
    const-string v8, "wifi_start_connect_ssid"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 363
    const-string v8, "wifi_start_connect_ssid"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "ssid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 365
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 366
    .local v6, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 367
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 368
    .local v5, "preference":Landroid/preference/Preference;
    instance-of v8, v5, Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v8, :cond_4

    move-object v0, v5

    .line 369
    check-cast v0, Lcom/android/extrasettings/wifi/AccessPoint;

    .line 370
    .local v0, "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    iget-object v8, v0, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    iget v8, v0, Lcom/android/extrasettings/wifi/AccessPoint;->security:I

    if-eqz v8, :cond_4

    .line 372
    invoke-virtual {p0, v6, v5}, Lcom/android/extrasettings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 378
    .end local v0    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    .end local v2    # "i":I
    .end local v5    # "preference":Landroid/preference/Preference;
    .end local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_3
    return-void

    .line 366
    .restart local v2    # "i":I
    .restart local v5    # "preference":Landroid/preference/Preference;
    .restart local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v7    # "ssid":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1114
    iput-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 1115
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    .line 1116
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1012
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->forget()V

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiDialog;->getController()Lcom/android/extrasettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->submit(Lcom/android/extrasettings/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 610
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 611
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 643
    :goto_0
    return v0

    .line 613
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 640
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/wifi/WifiSettingsExt;->onContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0

    .line 615
    :pswitch_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->connect(I)V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 620
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 622
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {p0, v1, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 627
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 631
    :pswitch_2
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {p0, v1, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 635
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 643
    :cond_3
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1193
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1194
    new-instance v0, Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/wifi/WifiSettingsExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    .line 1195
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/wifi/WifiSettingsExt;->onCreate()V

    .line 1196
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 561
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_3

    .line 562
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 565
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    .line 566
    check-cast v2, Lcom/android/extrasettings/wifi/AccessPoint;

    .end local v2    # "preference":Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 567
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 568
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v3, v10, :cond_0

    .line 569
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_0

    .line 570
    const/4 v3, 0x7

    const v4, 0x7f090388

    invoke-interface {p1, v9, v3, v9, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 574
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v10, :cond_1

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_2

    .line 581
    :cond_1
    const/16 v3, 0x8

    const v4, 0x7f090389

    invoke-interface {p1, v9, v3, v9, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 585
    :cond_2
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/extrasettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    iget-object v5, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/extrasettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/extrasettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    iget-object v8, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-boolean v8, v8, Lcom/android/extrasettings/wifi/AccessPoint;->wpsAvailable:Z

    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/wifi/WifiSettingsExt;->build(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/mediatek/wifi/AccessPoint;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/mediatek/wifi/WifiSettingsExt;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/net/NetworkInfo$DetailedState;Lcom/mediatek/wifi/AccessPoint;)V

    .line 589
    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    if-eq v3, v10, :cond_3

    .line 590
    const/16 v3, 0x9

    const v4, 0x7f09038a

    invoke-interface {p1, v9, v3, v9, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 592
    :try_start_0
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 593
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/nfc/NfcAdapter;->getModeFlag(I)I

    move-result v3

    if-ne v3, v11, :cond_3

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_3

    .line 598
    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const v6, 0x7f09038b

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_3
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v3, "WifiSettings"

    const-string v4, "this device doesn\'t support NFC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x0

    .line 691
    packed-switch p1, :pswitch_data_0

    .line 737
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 693
    :pswitch_1
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 694
    .local v1, "ap":Lcom/android/extrasettings/wifi/AccessPoint;
    if-nez v1, :cond_0

    .line 695
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 696
    new-instance v1, Lcom/android/extrasettings/wifi/AccessPoint;

    .end local v1    # "ap":Lcom/android/extrasettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Lcom/android/extrasettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 698
    .restart local v1    # "ap":Lcom/android/extrasettings/wifi/AccessPoint;
    iput-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 700
    iput-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 704
    :cond_0
    iput-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 706
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wifi/WifiSettingsExt;->recordPriority(Landroid/net/wifi/WifiConfiguration;)V

    .line 709
    :cond_1
    new-instance v2, Lcom/android/extrasettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v2, v3, p0, v1, v4}, Lcom/android/extrasettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    iput-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

    .line 710
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

    goto :goto_0

    .line 712
    .end local v1    # "ap":Lcom/android/extrasettings/wifi/AccessPoint;
    :pswitch_2
    new-instance v2, Lcom/android/extrasettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/extrasettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 714
    :pswitch_3
    new-instance v2, Lcom/android/extrasettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/extrasettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 716
    :pswitch_4
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    .line 717
    new-instance v2, Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v5, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Lcom/android/extrasettings/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;

    .line 719
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 722
    .local v0, "NfcAccessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    if-nez v0, :cond_3

    .line 723
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mNFCAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 724
    new-instance v0, Lcom/android/extrasettings/wifi/AccessPoint;

    .end local v0    # "NfcAccessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mNFCAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v2, v3}, Lcom/android/extrasettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 726
    .restart local v0    # "NfcAccessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    iput-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mNFCAccessPointSavedState:Landroid/os/Bundle;

    .line 730
    :cond_3
    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 731
    new-instance v2, Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v2, v3, v0, v4}, Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Lcom/android/extrasettings/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;

    .line 733
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;

    goto/16 :goto_0

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 437
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/WifiSettingsExt;->unregisterPriorityObserver(Landroid/content/ContentResolver;)V

    .line 1204
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onDestroy()V

    .line 1205
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 382
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onDestroyView()V

    .line 384
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/extrasettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/extrasettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 387
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0903dd

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 495
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    :goto_0
    return v6

    .line 497
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 552
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    if-eqz v0, :cond_5

    .line 553
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {v0, p1}, Lcom/mediatek/wifi/WifiSettingsExt;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 499
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 500
    goto :goto_0

    .line 516
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 517
    goto :goto_0

    .line 519
    :pswitch_2
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_1
    move v6, v10

    .line 522
    goto :goto_0

    .line 524
    :pswitch_3
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v6, v10

    .line 527
    goto :goto_0

    .line 529
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/extrasettings/SettingsActivity;

    if-eqz v0, :cond_3

    .line 530
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    const-class v1, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v10

    .line 538
    goto :goto_0

    .line 534
    :cond_3
    const-class v0, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/extrasettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 540
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/extrasettings/SettingsActivity;

    if-eqz v0, :cond_4

    .line 541
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    const-class v1, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903de

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 549
    goto/16 :goto_0

    .line 545
    :cond_4
    const-class v0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0903de

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/extrasettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 556
    :cond_5
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto/16 :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onPause()V

    .line 423
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/extrasettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/extrasettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiEnabler;->pause()V

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->pause()V

    .line 429
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 648
    instance-of v1, p2, Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 649
    check-cast p2, Lcom/android/extrasettings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 651
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 655
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->mAccessPointExt:Lcom/mediatek/wifi/AccessPointExt;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-boolean v2, v2, Lcom/android/extrasettings/wifi/AccessPoint;->wpsAvailable:Z

    invoke-virtual {v1, v2}, Lcom/mediatek/wifi/AccessPointExt;->isOpenApWPSSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {p0, v1, v3}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    .line 672
    :goto_0
    return v0

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 660
    sget-boolean v1, Lcom/android/extrasettings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v1, :cond_1

    .line 661
    sput-boolean v0, Lcom/android/extrasettings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 662
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {p0, v1, v3}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 670
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 408
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onResume()V

    .line 409
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/extrasettings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/extrasettings/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 417
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {v1}, Lcom/mediatek/wifi/WifiSettingsExt;->onResume()V

    .line 418
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 473
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 477
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 478
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 484
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mNFCAccessPointSavedState:Landroid/os/Bundle;

    .line 485
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mNFCAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 486
    const-string v0, "wifi_ap_state1"

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mNFCAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 490
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onStart()V

    .line 394
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/extrasettings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/extrasettings/wifi/WifiEnabler;

    .line 395
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1135
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/WifiSettingsExt;->emptyCategory(Landroid/preference/PreferenceScreen;)V

    .line 1107
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1144
    :cond_0
    return-void
.end method

.method public showDialog(Lcom/android/extrasettings/wifi/AccessPoint;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/extrasettings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 676
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->removeDialog(I)V

    .line 678
    iput-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiDialog;

    .line 679
    iput-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 683
    :cond_0
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 684
    iput-boolean p2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 686
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->showDialog(I)V

    .line 687
    return-void
.end method

.method submit(Lcom/android/extrasettings/wifi/WifiConfigController;)V
    .locals 6
    .param p1, "configController"    # Lcom/android/extrasettings/wifi/WifiConfigController;

    .prologue
    const/4 v5, -0x1

    .line 1023
    invoke-virtual {p1}, Lcom/android/extrasettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1024
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submit, config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/wifi/WifiSettingsExt;->hasSimAkaProblem(Landroid/net/wifi/WifiConfiguration;Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    :goto_1
    return-void

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    goto :goto_0

    .line 1032
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/extrasettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mediatek/wifi/WifiSettingsExt;->submit(Landroid/net/wifi/WifiConfiguration;Landroid/preference/Preference;ILandroid/net/NetworkInfo$DetailedState;)V

    .line 1037
    :cond_2
    if-nez v0, :cond_5

    .line 1038
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_3

    .line 1040
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1041
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/extrasettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->connect(I)V

    .line 1056
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1057
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mScanner:Lcom/android/extrasettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1059
    :cond_4
    invoke-direct {p0}, Lcom/android/extrasettings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_1

    .line 1044
    :cond_5
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v5, :cond_6

    .line 1045
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 1046
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2

    .line 1049
    :cond_6
    invoke-virtual {p1}, Lcom/android/extrasettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1050
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2

    .line 1052
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2
.end method

.method public updateAP(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "group"    # Landroid/preference/Preference;

    .prologue
    .line 1213
    instance-of v4, p1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 1214
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 1215
    .local v3, "screen":Landroid/preference/PreferenceGroup;
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAP, screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1218
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1219
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v4, v2, Lcom/android/extrasettings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 1220
    check-cast v0, Lcom/android/extrasettings/wifi/AccessPoint;

    .line 1221
    .local v0, "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/extrasettings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4, v5}, Lcom/android/extrasettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 1216
    .end local v0    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1225
    .end local v1    # "i":I
    .end local v2    # "preference":Landroid/preference/Preference;
    .end local v3    # "screen":Landroid/preference/PreferenceGroup;
    :cond_1
    return-void
.end method
