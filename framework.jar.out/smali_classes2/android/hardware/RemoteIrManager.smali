.class public final Landroid/hardware/RemoteIrManager;
.super Ljava/lang/Object;
.source "RemoteIrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteIr"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/hardware/IRemoteIrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    .line 48
    const-string v0, "remoteir"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/IRemoteIrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IRemoteIrService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    .line 51
    iget-object v0, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "RemoteIr"

    const-string v1, "RemoteIrManager: no remote ir service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTransmit()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 197
    const/4 v1, -0x1

    .line 198
    .local v1, "ret":I
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 200
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v2}, Landroid/hardware/RemoteIrManager;->transmit([BI)I

    move-result v1

    .line 202
    if-gez v1, :cond_0

    .line 203
    const-string v2, "RemoteIr"

    const-string v3, "failed to cancelTransmit."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return v1

    .line 198
    nop

    :array_0
    .array-data 1
        0x69t
        0x69t
        -0x6at
        -0x6at
    .end array-data
.end method

.method public changeFWMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 472
    const/4 v1, -0x1

    .line 474
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 475
    const-string v3, "RemoteIr"

    const-string v4, "failed to receive; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 487
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 480
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/hardware/IRemoteIrService;->change_fw_mode(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 485
    :goto_1
    const-string v3, "RemoteIr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteIrManager: changeModeUserIr returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 487
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 481
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to changeFWMode."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getCarrierFrequencies()[Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v4, :cond_1

    .line 540
    const-string v4, "RemoteIr"

    const-string v5, "no remote ir service."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 558
    :cond_0
    :goto_0
    return-object v2

    .line 545
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    invoke-interface {v4}, Landroid/hardware/IRemoteIrService;->getCarrierFrequencies()[I

    move-result-object v0

    .line 546
    .local v0, "freqs":[I
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 547
    const-string v4, "RemoteIr"

    const-string v5, "remote ir service returned an uneven number of frequencies."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 548
    goto :goto_0

    .line 550
    :cond_2
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;

    .line 552
    .local v2, "range":[Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 553
    div-int/lit8 v4, v1, 0x2

    new-instance v5, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;

    aget v6, v0, v1

    add-int/lit8 v7, v1, 0x1

    aget v7, v0, v7

    invoke-direct {v5, p0, v6, v7}, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;-><init>(Landroid/hardware/RemoteIrManager;II)V

    aput-object v5, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 556
    .end local v0    # "freqs":[I
    .end local v1    # "i":I
    .end local v2    # "range":[Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 558
    goto :goto_0
.end method

.method public getGpioValue()I
    .locals 5

    .prologue
    .line 423
    const/4 v1, -0x1

    .line 425
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 426
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 438
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 431
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/IRemoteIrService;->getValue(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 438
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 432
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to getGpioValue."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hasIrEmitter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v1, :cond_0

    .line 63
    const-string v1, "RemoteIr"

    const-string v2, "no remote ir service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    invoke-interface {v1}, Landroid/hardware/IRemoteIrService;->hasIrEmitter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public receive([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 349
    const/4 v1, -0x1

    .line 351
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 352
    const-string v3, "RemoteIr"

    const-string v4, "failed to receive; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 364
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 357
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->receive(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 362
    :goto_1
    const-string v3, "RemoteIr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteIrManager: receive returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 364
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 358
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to receive."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public receiveData([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 224
    const/4 v1, -0x1

    .line 226
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 227
    const-string v3, "RemoteIr"

    const-string v4, "failed to receiveData; no consumer ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 239
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 232
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->receiveData(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    :goto_1
    const-string v3, "RemoteIr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteIrManager: receiveData returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 239
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 233
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to receiveData."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public receiveData2([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 257
    const/4 v1, -0x1

    .line 259
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 260
    const-string v3, "RemoteIr"

    const-string v4, "failed to receiveData; no consumer ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 272
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 265
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->receiveData2(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_1
    const-string v3, "RemoteIr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteIrManager: receiveData returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 272
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 266
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to receiveData."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public receive_init()I
    .locals 7

    .prologue
    const/4 v3, 0x4

    .line 287
    const/4 v2, -0x1

    .line 288
    .local v2, "ret":I
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 290
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v3}, Landroid/hardware/RemoteIrManager;->transmit([BI)I

    move-result v2

    .line 292
    if-gez v2, :cond_0

    .line 293
    const-string v3, "RemoteIr"

    const-string v4, "failed to initialize receive."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    return v2

    .line 300
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/IRemoteIrService;->setMode(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to setMode."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 288
    :array_0
    .array-data 1
        0x11t
        0x11t
        -0x12t
        -0x12t
    .end array-data
.end method

.method public receive_is_ready()I
    .locals 4

    .prologue
    .line 321
    const/4 v1, -0x1

    .line 323
    .local v1, "ret":I
    iget-object v2, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-eqz v2, :cond_0

    .line 326
    :try_start_0
    iget-object v2, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/hardware/IRemoteIrService;->recvIsReady(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteIr"

    const-string v3, "failed to check receive data is ready."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setGpioMode(II)I
    .locals 5
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 375
    const/4 v1, -0x1

    .line 377
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 378
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 390
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 383
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->setMode(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 390
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 384
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setGpioValue(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 399
    const/4 v1, -0x1

    .line 401
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 402
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 414
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 407
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/hardware/IRemoteIrService;->setValue(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 414
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 408
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setResetValue(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 448
    const/4 v1, -0x1

    .line 450
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 451
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 463
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 456
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/hardware/IRemoteIrService;->setResetValue(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 463
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 457
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to setResetValue."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public transmit([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 87
    const/4 v1, -0x1

    .line 88
    .local v1, "ret":I
    const-string v3, "RemoteIr"

    const-string v4, "RemoteIrManager: function transmit called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 92
    const-string v3, "RemoteIr"

    const-string v4, "failed to transmit; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 102
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 97
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    const/16 v5, 0xfa

    invoke-interface {v3, v4, p1, p2, v5}, Landroid/hardware/IRemoteIrService;->transmit_unit(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_1
    const-string v3, "RemoteIr"

    const-string v4, "RemoteIrManager end function transmit 2"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 102
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 98
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to transmit."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public write_data([BI)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 117
    const/4 v1, -0x1

    .line 119
    .local v1, "ret":I
    const-string v3, "RemoteIr"

    const-string v4, "RemoteIrManager: write_data called."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 122
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_data; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 132
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 127
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->transmit_raw(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :goto_1
    const-string v3, "RemoteIr"

    const-string v4, "RemoteIrManager: write_data called end."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 132
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 128
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_data."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public write_data2([BI)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 148
    const/4 v1, -0x1

    .line 150
    .local v1, "ret":I
    const-string v3, "RemoteIr"

    const-string v4, "RemoteIrManager: write_data2 called."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 153
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_data; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 163
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 158
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->transmit_raw2(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :goto_1
    const-string v3, "RemoteIr"

    const-string v4, "RemoteIrManager: write_data2 called end."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 163
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 159
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_data."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public write_unit([BII)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "unitsize"    # I

    .prologue
    .line 173
    const/4 v1, -0x1

    .line 175
    .local v1, "ret":I
    const-string v3, "RemoteIr"

    const-string v4, "RemoteIrManager: transmit_unit called."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 178
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_unit; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 188
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 183
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/hardware/IRemoteIrService;->transmit_unit(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 188
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 184
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_unit."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
