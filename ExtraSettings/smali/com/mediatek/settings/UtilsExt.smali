.class public Lcom/mediatek/settings/UtilsExt;
.super Ljava/lang/Object;
.source "UtilsExt.java"


# static fields
.field public static disableAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/settings/UtilsExt;->mList:Ljava/util/ArrayList;

    .line 77
    const-string v0, "/system/etc/disableapplist.txt"

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->readFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/UtilsExt;->disableAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    const-class v1, Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 226
    .local v0, "ext":Lcom/mediatek/settings/ext/IApnSettingsExt;
    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;-><init>()V

    .line 229
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IApnSettingsExt;
    :cond_0
    return-object v0
.end method

.method public static getAudioProfilePlgin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    const-class v1, Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 466
    .local v0, "ext":Lcom/mediatek/settings/ext/IAudioProfileExt;
    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IAudioProfileExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;-><init>(Landroid/content/Context;)V

    .line 469
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IAudioProfileExt;
    :cond_0
    return-object v0
.end method

.method public static getBatteryExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IBatteryExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    const-class v1, Lcom/mediatek/settings/ext/IBatteryExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IBatteryExt;

    .line 322
    .local v0, "ext":Lcom/mediatek/settings/ext/IBatteryExt;
    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/mediatek/settings/ext/DefaultBatteryExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IBatteryExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultBatteryExt;-><init>()V

    .line 325
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IBatteryExt;
    :cond_0
    return-object v0
.end method

.method public static getDataProectExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataProtectionExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    const-class v1, Lcom/mediatek/settings/ext/IDataProtectionExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IDataProtectionExt;

    .line 477
    .local v0, "ext":Lcom/mediatek/settings/ext/IDataProtectionExt;
    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDataProtectionExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IDataProtectionExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultDataProtectionExt;-><init>(Landroid/content/Context;)V

    .line 480
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IDataProtectionExt;
    :cond_0
    return-object v0
.end method

.method public static getDataUsageSummaryPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    const-class v1, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 521
    .local v0, "ext":Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;-><init>(Landroid/content/Context;)V

    .line 524
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    :cond_0
    return-object v0
.end method

.method public static getDateTimeSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    const-class v1, Lcom/mediatek/settings/ext/IDateTimeSettingsExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IDateTimeSettingsExt;

    .line 307
    .local v0, "ext":Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDateTimeSettingsExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultDateTimeSettingsExt;-><init>()V

    .line 310
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    :cond_0
    return-object v0
.end method

.method public static getDevExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDevExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 581
    const-class v1, Lcom/mediatek/settings/ext/IDevExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IDevExt;

    .line 583
    .local v0, "ext":Lcom/mediatek/settings/ext/IDevExt;
    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDevExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IDevExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultDevExt;-><init>(Landroid/content/Context;)V

    .line 586
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IDevExt;
    :cond_0
    return-object v0
.end method

.method public static getDeviceInfoSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 448
    const-class v1, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    .line 450
    .local v0, "ext":Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDeviceInfoSettingsExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultDeviceInfoSettingsExt;-><init>()V

    .line 453
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    :cond_0
    return-object v0
.end method

.method public static getMdmPermControlExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IMdmPermissionControlExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const-class v1, Lcom/mediatek/settings/ext/IMdmPermissionControlExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IMdmPermissionControlExt;

    .line 371
    .local v0, "ext":Lcom/mediatek/settings/ext/IMdmPermissionControlExt;
    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/mediatek/settings/ext/DefaultMdmPermControlExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IMdmPermissionControlExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultMdmPermControlExt;-><init>(Landroid/content/Context;)V

    .line 374
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IMdmPermissionControlExt;
    :cond_0
    return-object v0
.end method

.method public static getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const-class v1, Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 183
    .local v0, "ext":Lcom/mediatek/settings/ext/ISettingsMiscExt;
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/ISettingsMiscExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;-><init>(Landroid/content/Context;)V

    .line 186
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/ISettingsMiscExt;
    :cond_0
    return-object v0
.end method

.method public static getPermControlExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPermissionControlExt;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    const-class v1, Lcom/mediatek/settings/ext/IPermissionControlExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IPermissionControlExt;

    .line 348
    .local v0, "ext":Lcom/mediatek/settings/ext/IPermissionControlExt;
    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/mediatek/settings/ext/DefaultPermissionControlExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IPermissionControlExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultPermissionControlExt;-><init>(Landroid/content/Context;)V

    .line 350
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IPermissionControlExt;
    const-string v1, "UtilsExt"

    const-string v2, "getPermControlExtPlugin(), can\'t find PermissionControlExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    return-object v0
.end method

.method public static getPrivacyProtectionLockExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPplSettingsEntryExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    const-class v1, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    .line 360
    .local v0, "ext":Lcom/mediatek/settings/ext/IPplSettingsEntryExt;
    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IPplSettingsEntryExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;-><init>(Landroid/content/Context;)V

    .line 363
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IPplSettingsEntryExt;
    :cond_0
    return-object v0
.end method

.method public static getRcseApnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    const-class v1, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    check-cast v0, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    .line 236
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;-><init>()V

    .line 239
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    :cond_0
    return-object v0
.end method

.method public static getReplaceApnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const-class v1, Lcom/mediatek/settings/ext/IReplaceApnProfileExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IReplaceApnProfileExt;

    .line 246
    .local v0, "ext":Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/mediatek/settings/ext/DefaultReplaceApnProfile;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultReplaceApnProfile;-><init>()V

    .line 249
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    :cond_0
    return-object v0
.end method

.method public static getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 550
    const-class v1, Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 552
    .local v0, "ext":Lcom/mediatek/settings/ext/ISimManagementExt;
    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSimManagementExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/ISimManagementExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultSimManagementExt;-><init>()V

    .line 555
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/ISimManagementExt;
    :cond_0
    return-object v0
.end method

.method public static getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    const-class v1, Lcom/mediatek/settings/ext/ISimRoamingExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/ISimRoamingExt;

    .line 491
    .local v0, "ext":Lcom/mediatek/settings/ext/ISimRoamingExt;
    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSimRoamingExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/ISimRoamingExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultSimRoamingExt;-><init>()V

    .line 494
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/ISimRoamingExt;
    :cond_0
    return-object v0
.end method

.method public static getStatusBarPlmnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    const-class v1, Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    .line 435
    .local v0, "ext":Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;-><init>(Landroid/content/Context;)V

    .line 438
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    :cond_0
    return-object v0
.end method

.method public static getStatusExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    const-class v1, Lcom/mediatek/settings/ext/IStatusExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IStatusExt;

    .line 506
    .local v0, "ext":Lcom/mediatek/settings/ext/IStatusExt;
    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lcom/mediatek/settings/ext/DefaultStatusExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IStatusExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultStatusExt;-><init>()V

    .line 509
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IStatusExt;
    :cond_0
    return-object v0
.end method

.method public static getVolumeDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 380
    .local v1, "mStorageManager":Landroid/os/storage/StorageManager;
    const/4 v2, 0x0

    .line 381
    .local v2, "volumeDescription":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 382
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 383
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 384
    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 389
    :cond_0
    const-string v4, "UtilsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volumeDescription = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v2

    .line 382
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getVolumeString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "stringId"    # I
    .param p1, "volumeDescription"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    if-nez p1, :cond_1

    .line 395
    const-string v3, "UtilsExt"

    const-string v4, "+volumeDescription is null and use default string"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    :cond_0
    :goto_0
    return-object v1

    .line 399
    :cond_1
    const v3, 0x7f09018e

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "sdCardString":Ljava/lang/String;
    const-string v3, "UtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdCardString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 407
    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string v3, "UtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdCardString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 410
    const-string v3, "UtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 413
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 414
    const-string v3, "UtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not any available then replase key word sd str="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 418
    .local v2, "tr":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getWifiApDialogPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiApDialogExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    const-class v1, Lcom/mediatek/settings/ext/IWifiApDialogExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IWifiApDialogExt;

    .line 260
    .local v0, "ext":Lcom/mediatek/settings/ext/IWifiApDialogExt;
    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IWifiApDialogExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;-><init>()V

    .line 263
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IWifiApDialogExt;
    :cond_0
    return-object v0
.end method

.method public static getWifiIpAddresses()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    .local v5, "wifiNetwork":Ljava/net/NetworkInterface;
    const-string v0, ""

    .line 135
    .local v0, "addresses":Ljava/lang/String;
    :try_start_0
    const-string v7, "wlan0"

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 140
    if-nez v5, :cond_0

    .line 141
    const-string v7, "UtilsExt"

    const-string v8, "wifiNetwork is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-object v6

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_0
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 145
    .local v2, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-nez v2, :cond_1

    .line 146
    const-string v7, "UtilsExt"

    const-string v8, "enumeration is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 150
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 151
    .local v4, "inet":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "hostAddress":Ljava/lang/String;
    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 155
    :cond_2
    const-string v6, "UtilsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InetAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v6, "UtilsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hostAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    instance-of v6, v4, Ljava/net/Inet6Address;

    if-eqz v6, :cond_3

    .line 158
    const-string v6, "UtilsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IPV6 address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 160
    :cond_3
    instance-of v6, v4, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 161
    const-string v6, "UtilsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IPV4 address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 165
    .end local v3    # "hostAddress":Ljava/lang/String;
    .end local v4    # "inet":Ljava/net/InetAddress;
    :cond_4
    const-string v6, "UtilsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP addresses = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "; "

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 167
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_6
    :goto_2
    const-string v6, "UtilsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The result of IP addresses = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 172
    goto/16 :goto_0

    .line 168
    :cond_7
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 169
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    const-class v1, Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IWifiExt;

    .line 198
    .local v0, "ext":Lcom/mediatek/settings/ext/IWifiExt;
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IWifiExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultWifiExt;-><init>(Landroid/content/Context;)V

    .line 201
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IWifiExt;
    :cond_0
    return-object v0
.end method

.method public static getWifiSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiSettingsExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const-class v1, Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IWifiSettingsExt;

    .line 212
    .local v0, "ext":Lcom/mediatek/settings/ext/IWifiSettingsExt;
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IWifiSettingsExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;-><init>()V

    .line 215
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IWifiSettingsExt;
    :cond_0
    return-object v0
.end method

.method public static isExSdcardInserted()Z
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getSdSwapState()Z

    move-result v0

    .line 294
    .local v0, "isExSdcardInserted":Z
    const-string v1, "UtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExSdcardInserted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 535
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return v1

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSomeStorageEmulated()Z
    .locals 6

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, "isExistEmulatedStorage":Z
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 276
    .local v2, "mountService":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    .line 277
    invoke-interface {v2}, Landroid/os/storage/IMountService;->isExternalStorageEmulated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :goto_0
    const-string v3, "UtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExistEmulatedStorage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v1

    .line 279
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_0
    :try_start_1
    const-string v3, "UtilsExt"

    const-string v4, "MountService return null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 281
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "UtilsExt"

    const-string v4, "RemoteException happens, couldn\'t talk to MountService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 90
    sget-object v8, Lcom/mediatek/settings/UtilsExt;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 91
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 93
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 95
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 96
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 104
    const-string v8, "UtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " read line "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v8, Lcom/mediatek/settings/UtilsExt;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 108
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 109
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .local v5, "io":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v8, "UtilsExt"

    const-string v9, "IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 116
    :cond_0
    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    .end local v5    # "io":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v7

    .line 98
    :cond_2
    :try_start_5
    const-string v8, "UtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not exist!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 116
    :cond_3
    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 119
    :catch_1
    move-exception v5

    .line 120
    .restart local v5    # "io":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 107
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "io":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_4
    :try_start_7
    sget-object v7, Lcom/mediatek/settings/UtilsExt;->mList:Ljava/util/ArrayList;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 113
    if-eqz v1, :cond_5

    .line 114
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 116
    :cond_5
    if-eqz v4, :cond_6

    .line 117
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 121
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 119
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v5

    .line 120
    .restart local v5    # "io":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 119
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v5

    .line 120
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 112
    .end local v5    # "io":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 113
    :goto_4
    if-eqz v0, :cond_7

    .line 114
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 116
    :cond_7
    if-eqz v3, :cond_8

    .line 117
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 121
    :cond_8
    :goto_5
    throw v7

    .line 119
    :catch_4
    move-exception v5

    .line 120
    .restart local v5    # "io":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 112
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "io":Ljava/io/IOException;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 108
    :catch_5
    move-exception v5

    goto :goto_1

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method
