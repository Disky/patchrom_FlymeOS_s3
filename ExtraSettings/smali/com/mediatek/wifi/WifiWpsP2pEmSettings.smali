.class public Lcom/mediatek/wifi/WifiWpsP2pEmSettings;
.super Ljava/lang/Object;
.source "WifiWpsP2pEmSettings.java"


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mIsOnlyVisibilityWpsPin:Z

.field private mIsWifiP2pEmOpen:Z

.field private mIsWifiWpsEmOpen:Z

.field private mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiWpsEmDialog:Landroid/app/AlertDialog;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

.field private mWpsOrP2p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "WifiWpsP2pEmSettings"

    const-string v1, "WifiWpsP2pEmSettings, WifiManager"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    .line 68
    iput-object p2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/net/wifi/p2p/WifiP2pManager;
    .param p3, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "WifiWpsP2pEmSettings"

    const-string v1, "WifiWpsP2pEmSettings, WifiP2pManager"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    .line 60
    iput-object p2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 61
    iput-object p3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)Lcom/mediatek/wifi/AccessPoint;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;ILcom/mediatek/wifi/AccessPoint;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wifi/WifiWpsP2pEmSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/mediatek/wifi/AccessPoint;
    .param p3, "x3"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->showWifiWpsEmDialog(ILcom/mediatek/wifi/AccessPoint;Z)V

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/mediatek/wifi/AccessPoint;
    .locals 1
    .param p0, "apSsid"    # Ljava/lang/String;
    .param p1, "apBssid"    # Ljava/lang/String;
    .param p2, "apNetworkId"    # I
    .param p3, "apWpsAvailable"    # Z

    .prologue
    .line 336
    new-instance v0, Lcom/mediatek/wifi/AccessPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/wifi/AccessPoint;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method private createDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 298
    iget v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    if-eqz v0, :cond_0

    .line 300
    packed-switch p1, :pswitch_data_0

    .line 325
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 302
    :pswitch_0
    new-instance v0, Lcom/mediatek/wifi/WifiWpsEmDialog;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsOnlyVisibilityWpsPin:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/wifi/WifiWpsEmDialog;-><init>(Landroid/content/Context;Lcom/mediatek/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 304
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090159

    new-instance v2, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$10;

    invoke-direct {v2, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$10;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09015a

    new-instance v2, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$9;

    invoke-direct {v2, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$9;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showWifiWpsEmDialog(ILcom/mediatek/wifi/AccessPoint;Z)V
    .locals 1
    .param p1, "dialogId"    # I
    .param p2, "accessPoint"    # Lcom/mediatek/wifi/AccessPoint;
    .param p3, "isOnlyVisibilityWpsPin"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->removeDialog(I)V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    .line 287
    :cond_0
    iput-object p2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    .line 288
    iput-boolean p3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsOnlyVisibilityWpsPin:Z

    .line 291
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    .line 292
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 295
    :cond_1
    return-void
.end method


# virtual methods
.method public contextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    iget v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    if-eqz v3, :cond_0

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v2

    .line 275
    :goto_0
    return v1

    .line 249
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget v3, v3, Lcom/mediatek/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 250
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->showWifiWpsEmDialog(ILcom/mediatek/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 253
    :cond_1
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->showWifiWpsEmDialog(ILcom/mediatek/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 258
    :pswitch_1
    const-string v3, "WifiWpsP2pEmSettings"

    const-string v4, "click context item: wps_pbc"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v3, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$8;

    invoke-direct {v3, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$8;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    iput-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 268
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 269
    .local v0, "config":Landroid/net/wifi/WpsInfo;
    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 270
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->startWpsExternalRegistrar(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createContextMenu(Landroid/view/ContextMenu;Ljava/lang/Object;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "selectedAccessPoint"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 234
    instance-of v0, p2, Lcom/mediatek/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    if-eqz v0, :cond_0

    .line 235
    check-cast p2, Lcom/mediatek/wifi/AccessPoint;

    .end local p2    # "selectedAccessPoint":Ljava/lang/Object;
    iput-object p2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    .line 236
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget-boolean v0, v0, Lcom/mediatek/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v0, :cond_0

    .line 237
    const/16 v0, 0xb

    const v1, 0x7f0900ba

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 238
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget v0, v0, Lcom/mediatek/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 239
    const/16 v0, 0xc

    const v1, 0x7f0900bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 243
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    iget v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    if-eqz v1, :cond_1

    .line 84
    const v1, 0x7f0900c4

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 85
    .local v0, "nfc":Landroid/view/SubMenu;
    const/16 v1, 0xd

    const v2, 0x7f0900ba

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    const/16 v1, 0xe

    const v2, 0x7f0900bb

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 104
    .end local v0    # "nfc":Landroid/view/SubMenu;
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiP2pEmOpen:Z

    if-eqz v1, :cond_0

    .line 91
    const v1, 0x7f0900c5

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 92
    .restart local v0    # "nfc":Landroid/view/SubMenu;
    const/4 v1, 0x3

    const v2, 0x7f0900c9

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 94
    const/4 v1, 0x4

    const v2, 0x7f0900c6

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 96
    const/4 v1, 0x5

    const v2, 0x7f0900c7

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 98
    const/4 v1, 0x6

    const v2, 0x7f0900ca

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    const/4 v1, 0x7

    const v2, 0x7f0900c8

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public handleP2pStateChanged()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autonomous_go"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    return-void
.end method

.method public optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 115
    iget v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    if-eqz v1, :cond_2

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v3

    .line 229
    :cond_1
    :goto_1
    return v2

    .line 119
    :pswitch_0
    const/4 v1, 0x4

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->showWifiWpsEmDialog(ILcom/mediatek/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 122
    :pswitch_1
    const-string v1, "WifiWpsP2pEmSettings"

    const-string v4, "click menu item: WPS Register PBC"

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$1;

    invoke-direct {v1, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$1;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    iput-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 132
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 133
    .local v0, "config":Landroid/net/wifi/WpsInfo;
    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 134
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v3}, Landroid/net/wifi/WifiManager;->startWpsExternalRegistrar(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    goto :goto_1

    .line 139
    .end local v0    # "config":Landroid/net/wifi/WpsInfo;
    :cond_2
    iget v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiP2pEmOpen:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v1, "WifiWpsP2pEmSettings"

    const-string v3, "onOptionsItemSelected, MENU_ID_WPS_TAG"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 146
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const v4, 0x22065

    new-instance v5, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$2;

    invoke-direct {v5, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$2;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    .line 155
    :pswitch_3
    const-string v1, "WifiWpsP2pEmSettings"

    const-string v3, "onOptionsItemSelected, MENU_ID_P2P_TAG"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 158
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const v4, 0x22062

    new-instance v5, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$3;

    invoke-direct {v5, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$3;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    .line 168
    :pswitch_4
    const-string v1, "WifiWpsP2pEmSettings"

    const-string v3, "onOptionsItemSelected, MENU_ID_OOB_DEVICE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 171
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const v4, 0x2205f

    new-instance v5, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$4;

    invoke-direct {v5, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$4;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_1

    .line 181
    :pswitch_5
    const-string v1, "WifiWpsP2pEmSettings"

    const-string v3, "onOptionsItemSelected, MENU_ID_AUTO_GO_DEVICE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 184
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const v4, 0x22068

    new-instance v5, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$5;

    invoke-direct {v5, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$5;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_1

    .line 194
    :pswitch_6
    const-string v1, "WifiWpsP2pEmSettings"

    const-string v4, "onOptionsItemSelected, MENU_ID_AUTO_GO"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "WifiWpsP2pEmSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MENU_ID_AUTO_GO isChecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 197
    const-string v1, "WifiWpsP2pEmSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MENU_ID_AUTO_GO isChecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "autonomous_go"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$6;

    invoke-direct {v4, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$6;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 196
    goto :goto_2

    .line 211
    :cond_4
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "autonomous_go"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$7;

    invoke-direct {v4, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$7;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 140
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    iget v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiP2pEmOpen:Z

    if-eqz v3, :cond_0

    .line 109
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 110
    .local v0, "autoGoMenu":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autonomous_go"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 112
    .end local v0    # "autoGoMenu":Landroid/view/MenuItem;
    :cond_0
    return-void

    .restart local v0    # "autoGoMenu":Landroid/view/MenuItem;
    :cond_1
    move v1, v2

    .line 110
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 72
    iget v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wps_em_wifi_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    .line 79
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-ne v2, v0, :cond_0

    .line 77
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wps_em_p2p_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiP2pEmOpen:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
