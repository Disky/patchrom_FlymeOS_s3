.class public Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;
.super Ljava/lang/Object;
.source "KeyguardPluginFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardPluginFactory"

.field private static mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

.field private static mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

.field private static mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

.field private static mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

.field private static mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

.field private static mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    .line 14
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 15
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 16
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 17
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 18
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCarrierTextExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    if-nez v0, :cond_0

    .line 52
    const-class v0, Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 54
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierTextExt carrierTextExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 58
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierTextExt get DefaultCarrierTextExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCustomizeClock(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICustomizeClock;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    if-nez v0, :cond_0

    .line 22
    const-class v0, Lcom/mediatek/keyguard/ext/ICustomizeClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ICustomizeClock;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    .line 24
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizeClock customizeClock= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultCustomizeClock;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/ext/DefaultCustomizeClock;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    .line 28
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizeClock get DefaultCustomizeClock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getEmergencyButtonExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    if-nez v0, :cond_0

    .line 37
    const-class v0, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 39
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmergencyButtonExt emergencyButtonExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 43
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmergencyButtonExt get DefaultEmergencyButtonExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getKeyguardUtilExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    if-nez v0, :cond_0

    .line 67
    const-class v0, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 69
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardUtilExt keyguardUtilExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 73
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardUtilExt get DefaultKeyguardUtilExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLockScreenExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ILockScreenExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    if-nez v0, :cond_0

    .line 96
    const-class v0, Lcom/mediatek/keyguard/ext/ILockScreenExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ILockScreenExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    .line 98
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockScreenExt lockScreenExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultLockScreenExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultLockScreenExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    .line 102
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockScreenExt get DefaultLockScreenExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getOperatorSIMString(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    if-nez v0, :cond_0

    .line 81
    const-class v0, Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 83
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorSIMString operatorSIMString= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 87
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorSIMString get DefaultOperatorSIMString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
