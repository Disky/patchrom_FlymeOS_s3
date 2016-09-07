.class public Lcom/android/server/RemoteIrService;
.super Landroid/hardware/IRemoteIrService$Stub;
.source "RemoteIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "RemoteIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mNativeHal:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 76
    invoke-direct {p0}, Landroid/hardware/IRemoteIrService$Stub;-><init>()V

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    .line 79
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : RemoteIrService called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 83
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "RemoteIrService"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RemoteIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 86
    invoke-static {}, Lcom/android/server/RemoteIrService;->halOpen()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    .line 88
    iget-wide v2, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No RemoteIR HAL loaded! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-wide v2, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    iget-wide v2, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 99
    :cond_2
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : RemoteIrService called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private static native halCancelTransmit(J)I
.end method

.method private static native halChangeFWMode(JI)I
.end method

.method private static native halCheckReceiveReady(J)I
.end method

.method private static native halGetCarrierFrequencies(J)[I
.end method

.method private static native halGetMode(J)I
.end method

.method private static native halGetValue(J)I
.end method

.method private static native halOpen()J
.end method

.method private static native halReceive(J[BI)I
.end method

.method private static native halReceiveData(J[BI)I
.end method

.method private static native halReceiveData2(J[BI)I
.end method

.method private static native halReceiveInit(J)I
.end method

.method private static native halSetMode(JII)I
.end method

.method private static native halSetResetMode(JI)I
.end method

.method private static native halSetValue(JI)I
.end method

.method private static native halTransmit(J[BI)I
.end method

.method private static native halTransmit2(J[BI)I
.end method

.method private throwIfNoIrEmitter()V
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTransmit(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, -0x1

    .line 251
    .local v0, "ret":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : cancelTransmit called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 254
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5}, Lcom/android/server/RemoteIrService;->halCancelTransmit(J)I

    move-result v0

    .line 256
    if-gez v0, :cond_0

    .line 257
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error cancelTransmit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : cancelTransmit called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v0

    .line 259
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public change_fw_mode(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 478
    const/4 v0, -0x1

    .line 479
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : change_fw_mode called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 488
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 489
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2}, Lcom/android/server/RemoteIrService;->halChangeFWMode(JI)I

    move-result v0

    .line 491
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService :  change_fw_mode called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return v0

    .line 491
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCarrierFrequencies()[I
    .locals 4

    .prologue
    .line 499
    const-string v0, "RemoteIrService"

    const-string v1, "Class RemoteIrService : getCarrierFrequencies called"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 507
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    const-string v0, "RemoteIrService"

    const-string v2, "Class RemoteIrService : change_fw_mode called ended"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-wide v2, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v2, v3}, Lcom/android/server/RemoteIrService;->halGetCarrierFrequencies(J)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 395
    const/4 v0, -0x1

    .line 396
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : getMode called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 406
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 407
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5}, Lcom/android/server/RemoteIrService;->halGetMode(J)I

    move-result v0

    .line 408
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService :  getMode called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v0

    .line 408
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v0, -0x1

    .line 438
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : getValue called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 447
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 448
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5}, Lcom/android/server/RemoteIrService;->halGetValue(J)I

    move-result v0

    .line 449
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService :  getValue called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v0

    .line 449
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public hasIrEmitter()Z
    .locals 4

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receive(Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 344
    const/4 v0, -0x1

    .line 345
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : receive called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 356
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 360
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2, p3}, Lcom/android/server/RemoteIrService;->halReceive(J[BI)I

    move-result v0

    .line 362
    if-gez v0, :cond_1

    .line 363
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error receiving: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : receive called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v0

    .line 365
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public receiveData(Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 267
    const/4 v0, -0x1

    .line 268
    .local v0, "ret":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : receiveData called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 272
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 273
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2, p3}, Lcom/android/server/RemoteIrService;->halReceiveData(J[BI)I

    move-result v0

    .line 274
    if-gez v0, :cond_0

    .line 275
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error receiveData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : receiveData called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v0

    .line 277
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public receiveData2(Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 286
    const/4 v0, -0x1

    .line 287
    .local v0, "ret":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : receiveData2 called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 290
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2, p3}, Lcom/android/server/RemoteIrService;->halReceiveData2(J[BI)I

    move-result v0

    .line 292
    if-gez v0, :cond_0

    .line 293
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error receiveData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : receiveData2 called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v0

    .line 295
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recvInit(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, -0x1

    .line 305
    .local v0, "ret":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : recvInit called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 313
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 314
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5}, Lcom/android/server/RemoteIrService;->halReceiveInit(J)I

    move-result v0

    .line 315
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : recvInit called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v0

    .line 315
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recvIsReady(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, -0x1

    .line 325
    .local v0, "ret":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : recvIsReady called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 333
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 334
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5}, Lcom/android/server/RemoteIrService;->halCheckReceiveReady(J)I

    move-result v0

    .line 335
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : recvIsReady called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v0

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setMode(Ljava/lang/String;II)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .prologue
    .line 374
    const/4 v0, -0x1

    .line 375
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : setMode called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 385
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 386
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2, p3}, Lcom/android/server/RemoteIrService;->halSetMode(JII)I

    move-result v0

    .line 387
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService :  setMode called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v0

    .line 387
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setResetValue(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 457
    const/4 v0, -0x1

    .line 458
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : setResetValue called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 467
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 468
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2}, Lcom/android/server/RemoteIrService;->halSetResetMode(JI)I

    move-result v0

    .line 469
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService :  setResetValue called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v0

    .line 469
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setValue(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 417
    const/4 v0, -0x1

    .line 418
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : setValue called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 427
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2}, Lcom/android/server/RemoteIrService;->halSetValue(JI)I

    move-result v0

    .line 429
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService :  setValue called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v0

    .line 429
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public transmit_raw(Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 117
    const/4 v0, -0x1

    .line 118
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : transmit_raw called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 127
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2, p3}, Lcom/android/server/RemoteIrService;->halTransmit(J[BI)I

    move-result v0

    .line 129
    if-gez v0, :cond_1

    .line 130
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error transmitting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : transmit_raw called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v0

    .line 132
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public transmit_raw2(Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 140
    const/4 v0, -0x1

    .line 141
    .local v0, "err":I
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : transmit_raw2 called"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 150
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    invoke-static {v4, v5, p2, p3}, Lcom/android/server/RemoteIrService;->halTransmit2(J[BI)I

    move-result v0

    .line 152
    if-gez v0, :cond_1

    .line 153
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error transmitting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    const-string v1, "RemoteIrService"

    const-string v2, "Class RemoteIrService : transmit_raw2 called ended"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v0

    .line 155
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public transmit_unit(Ljava/lang/String;[BII)I
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I
    .param p4, "unitsize"    # I

    .prologue
    .line 164
    const/4 v3, -0x1

    .line 165
    .local v3, "err":I
    const-string v9, "RemoteIrService"

    const-string v10, "Class RemoteIrService : transmit_unit called"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v9, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.TRANSMIT_IR"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 168
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "Requires TRANSMIT_IR permission"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 175
    const/4 v9, 0x4

    move/from16 v0, p4

    if-ge v0, v9, :cond_1

    .line 176
    const/4 v9, -0x2

    .line 243
    :goto_0
    return v9

    .line 179
    :cond_1
    add-int/lit8 v9, p4, 0x4

    new-array v8, v9, [B

    .line 184
    .local v8, "unitBuf":[B
    iget-object v10, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v10

    .line 186
    const/4 v7, 0x0

    .line 187
    .local v7, "srcPos":I
    const/4 v6, 0x0

    .line 189
    .local v6, "pktNo":I
    const/4 v5, 0x0

    .line 191
    .local v5, "num_to_write":I
    :goto_1
    if-lez p3, :cond_5

    .line 194
    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    move/from16 v5, p4

    .line 197
    :goto_2
    const/4 v9, 0x0

    int-to-byte v11, v6

    :try_start_0
    aput-byte v11, v8, v9

    .line 198
    const/4 v9, 0x1

    add-int/lit8 v11, v5, 0x2

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    .line 201
    const/4 v9, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v7, v8, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 203
    move v2, v6

    .line 204
    .local v2, "chksum":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_3
    add-int/lit8 v9, v5, 0x2

    if-ge v4, v9, :cond_3

    .line 205
    aget-byte v9, v8, v4

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2    # "chksum":I
    .end local v4    # "i":I
    :cond_2
    move/from16 v5, p3

    .line 194
    goto :goto_2

    .line 208
    .restart local v2    # "chksum":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v9, v5, 0x2

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    .line 209
    add-int/lit8 v9, v5, 0x3

    and-int/lit16 v11, v2, 0xff

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    .line 211
    iget-wide v12, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    add-int/lit8 v9, v5, 0x4

    invoke-static {v12, v13, v8, v9}, Lcom/android/server/RemoteIrService;->halTransmit(J[BI)I

    move-result v3

    .line 212
    if-gez v3, :cond_4

    .line 213
    const-string v9, "RemoteIrService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error transmitting_unit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_4
    sub-int p3, p3, v5

    .line 217
    add-int/2addr v7, v5

    .line 218
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 228
    .end local v2    # "chksum":I
    .end local v4    # "i":I
    :cond_5
    move/from16 v0, p4

    if-ne v5, v0, :cond_6

    .line 232
    const/4 v9, 0x0

    int-to-byte v11, v6

    aput-byte v11, v8, v9

    .line 233
    const/4 v9, 0x1

    const/4 v11, 0x2

    aput-byte v11, v8, v9

    .line 234
    const/4 v9, 0x2

    const/4 v11, 0x0

    aput-byte v11, v8, v9

    .line 235
    const/4 v9, 0x3

    add-int/lit8 v11, v6, 0x2

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    .line 238
    iget-wide v12, p0, Lcom/android/server/RemoteIrService;->mNativeHal:J

    const/4 v9, 0x4

    invoke-static {v12, v13, v8, v9}, Lcom/android/server/RemoteIrService;->halTransmit(J[BI)I

    move-result v3

    .line 241
    :cond_6
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const-string v9, "RemoteIrService"

    const-string v10, "Class RemoteIrService : transmit_unit called ended"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v3

    .line 243
    goto/16 :goto_0

    .line 241
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
