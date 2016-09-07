.class public Lcom/mediatek/settings/wfd/WfdSinkExt;
.super Ljava/lang/Object;
.source "WfdSinkExt.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mPreWfdState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSinkFragment:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

.field private mSinkToast:Landroid/widget/Toast;

.field private mUiPortrait:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mPreWfdState:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mUiPortrait:Z

    .line 77
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wfd/WfdSinkExt$1;-><init>(Lcom/mediatek/settings/wfd/WfdSinkExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mPreWfdState:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mUiPortrait:Z

    .line 77
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wfd/WfdSinkExt$1;-><init>(Lcom/mediatek/settings/wfd/WfdSinkExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/wfd/WfdSinkExt;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkExt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/wfd/WfdSinkExt;Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkExt;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkExt;->handleWfdStatusChanged(Landroid/hardware/display/WifiDisplayStatus;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/settings/wfd/WfdSinkExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkExt;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mUiPortrait:Z

    return p1
.end method

.method private handleWfdStateChanged(IZ)V
    .locals 8
    .param p1, "wfdState"    # I
    .param p2, "sinkMode"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    :pswitch_0
    return-void

    .line 164
    :pswitch_1
    if-eqz p2, :cond_1

    .line 165
    const-string v2, "WfdSinkExt"

    const-string v3, "dismiss fragment"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkFragment:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkFragment:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-virtual {v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->dismissAllowingStateLoss()V

    .line 169
    :cond_0
    invoke-direct {p0, v5}, Lcom/mediatek/settings/wfd/WfdSinkExt;->setWfdMode(Z)V

    .line 171
    :cond_1
    iget v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mPreWfdState:I

    if-ne v2, v7, :cond_2

    .line 172
    invoke-direct {p0, v5}, Lcom/mediatek/settings/wfd/WfdSinkExt;->showToast(Z)V

    .line 174
    :cond_2
    iput-boolean v5, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mUiPortrait:Z

    goto :goto_0

    .line 179
    :pswitch_2
    if-eqz p2, :cond_4

    .line 180
    const-string v2, "WfdSinkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUiPortrait: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mUiPortrait:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkFragment:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget-boolean v3, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mUiPortrait:Z

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestOrientation(Z)V

    .line 182
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mContext:Landroid/content/Context;

    const-string v3, "wifi_display"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "wifi_display_hide_guide"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 184
    .local v1, "showGuide":Z
    if-eqz v1, :cond_3

    .line 185
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkFragment:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkFragment:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-virtual {v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->addWfdSinkGuide()V

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "wifi_display_hide_guide"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    :cond_3
    iget v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mPreWfdState:I

    if-eq v2, v7, :cond_4

    .line 192
    invoke-direct {p0, v6}, Lcom/mediatek/settings/wfd/WfdSinkExt;->showToast(Z)V

    .line 195
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "showGuide":Z
    :cond_4
    iput-boolean v5, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mUiPortrait:Z

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleWfdStatusChanged(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 6
    .param p1, "status"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    const/4 v2, 0x0

    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 143
    .local v0, "bStateOn":Z
    :goto_0
    const-string v3, "WfdSinkExt"

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

    .line 144
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 146
    .local v1, "wfdState":I
    const-string v2, "WfdSinkExt"

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

    .line 148
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->isSinkMode()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkExt;->handleWfdStateChanged(IZ)V

    .line 149
    iput v1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mPreWfdState:I

    .line 159
    .end local v1    # "wfdState":I
    :goto_1
    return-void

    .end local v0    # "bStateOn":Z
    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    .line 153
    .restart local v0    # "bStateOn":Z
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->isSinkMode()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkExt;->handleWfdStateChanged(IZ)V

    .line 157
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mPreWfdState:I

    goto :goto_1
.end method

.method private isSinkMode()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSinkEnabled()Z

    move-result v0

    return v0
.end method

.method private setWfdMode(Z)V
    .locals 3
    .param p1, "sink"    # Z

    .prologue
    .line 218
    const-string v0, "WfdSinkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfdMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->enableSink(Z)V

    .line 220
    return-void
.end method

.method private showToast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v0, 0x7f0900b3

    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkToast:Landroid/widget/Toast;

    .line 210
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    return-void

    .line 206
    :cond_1
    const v0, 0x7f0900b4

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private waitWfdSinkConnection(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->waitWifiDisplayConnection(Landroid/view/Surface;)V

    .line 224
    return-void
.end method


# virtual methods
.method public disconnectWfdSinkConnection()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "WfdSinkExt"

    const-string v1, "disconnectWfdSinkConnection"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->setWfdMode(Z)V

    .line 134
    const-string v0, "WfdSinkExt"

    const-string v1, "after disconnectWfdSinkConnection"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 95
    const-string v2, "WfdSinkExt"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    .line 99
    .local v1, "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/wfd/WfdSinkExt;->handleWfdStatusChanged(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v2, "com.mediatek.wfd.portrait"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "WfdSinkExt"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    :cond_0
    return-void
.end method

.method public registerSinkFragment(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mSinkFragment:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .line 139
    return-void
.end method

.method public sendUibcEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventDesc"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setupWfdSinkConnection(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 122
    const-string v0, "WfdSinkExt"

    const-string v1, "setupWfdSinkConnection"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->setWfdMode(Z)V

    .line 124
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkExt;->waitWfdSinkConnection(Landroid/view/Surface;)V

    .line 125
    return-void
.end method
