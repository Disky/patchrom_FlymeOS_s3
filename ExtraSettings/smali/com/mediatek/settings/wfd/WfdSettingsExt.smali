.class public Lcom/mediatek/settings/wfd/WfdSettingsExt;
.super Ljava/lang/Object;
.source "WfdSettingsExt.java"


# static fields
.field public static final DEVICE_1080P_RESOLUTION_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_720P_RESOLUTION_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicePref:Landroid/preference/SwitchPreference;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_720P_RESOLUTION_LIST:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_1080P_RESOLUTION_LIST:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;-><init>(Lcom/mediatek/settings/wfd/WfdSettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    .line 98
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/settings/wfd/WfdSettingsExt;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSettingsExt;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/wfd/WfdSettingsExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSettingsExt;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->updateDeviceName()V

    return-void
.end method

.method private handleWfdStateChanged(IZ)V
    .locals 4
    .param p1, "wfdState"    # I
    .param p2, "sinkMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_0
    if-nez p2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 242
    :cond_1
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.floatmenu"

    const-string v2, "com.mediatek.floatmenu.FloatMenuService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto :goto_0

    .line 250
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    if-nez p2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 257
    :pswitch_2
    if-nez p2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isSinkMode()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSinkEnabled()Z

    move-result v0

    return v0
.end method

.method private updateDeviceName()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addAdditionalPreference(Landroid/preference/PreferenceScreen;Z)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "available"    # Z

    .prologue
    const/4 v5, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "added":Z
    if-eqz p2, :cond_1

    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    .line 162
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    const v3, 0x7f0200b1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 168
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    const v3, 0x7f0900b1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 169
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 170
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "mediatek.settings.WFD_SINK_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setIntent(Landroid/content/Intent;)V

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->updateDeviceName()V

    .line 174
    new-instance v1, Lcom/android/extrasettings/ProgressCategory;

    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/android/extrasettings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    .local v1, "cat":Lcom/android/extrasettings/ProgressCategory;
    const v2, 0x7f09034a

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/ProgressCategory;->setEmptyTextRes(I)V

    .line 176
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/ProgressCategory;->setOrder(I)V

    .line 177
    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/ProgressCategory;->setTitle(I)V

    .line 178
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 179
    const/4 v0, 0x1

    .line 181
    .end local v1    # "cat":Lcom/android/extrasettings/ProgressCategory;
    :cond_1
    return v0

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDevicePref:Landroid/preference/SwitchPreference;

    const v3, 0x7f0200b2

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setIcon(I)V

    goto :goto_0
.end method

.method public handleWfdStatusChanged(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 6
    .param p1, "status"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    const/4 v2, 0x0

    .line 218
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    if-nez v3, :cond_0

    .line 232
    :goto_0
    return-void

    .line 221
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 222
    .local v0, "bStateOn":Z
    :goto_1
    const-string v3, "WfdSettingsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleWfdStatusChanged bStateOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 225
    .local v1, "wfdState":I
    const-string v2, "WfdSettingsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleWfdStatusChanged wfdState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->isSinkMode()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->handleWfdStateChanged(IZ)V

    goto :goto_0

    .end local v0    # "bStateOn":Z
    .end local v1    # "wfdState":I
    :cond_1
    move v0, v2

    .line 221
    goto :goto_1

    .line 228
    .restart local v0    # "bStateOn":Z
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->isSinkMode()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->handleWfdStateChanged(IZ)V

    goto :goto_0
.end method

.method public onCreateOptionMenu(Landroid/view/Menu;Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "status"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_max_resolution"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "currentResolution":I
    const-string v3, "WfdSettingsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current resolution is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v3, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const/4 v3, 0x2

    const v4, 0x7f0900b0

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-eq v4, v1, :cond_1

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 112
    goto :goto_0
.end method

.method public onOptionMenuSelected(Landroid/view/MenuItem;Landroid/app/FragmentManager;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    new-instance v0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;

    invoke-direct {v0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;-><init>()V

    const-string v1, "change resolution"

    invoke-virtual {v0, p2, v1}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 188
    const-string v1, "WfdSettingsExt"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "WfdSettingsExt"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    :cond_0
    return-void
.end method

.method public prepareWfdConnect()V
    .locals 3

    .prologue
    .line 269
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.floatmenu"

    const-string v2, "com.mediatek.floatmenu.FloatMenuService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 274
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
