.class public Lcom/mediatek/lbs/em2/utils/AgpsInterface;
.super Ljava/lang/Object;
.source "AgpsInterface.java"


# instance fields
.field protected client:Landroid/net/LocalSocket;

.field protected in:Ljava/io/DataInputStream;

.field protected out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->checkVersion()V

    .line 105
    return-void
.end method

.method private getAgpsConfigInt(ILcom/mediatek/lbs/em2/utils/AgpsConfig;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "config"    # Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    move-result-object v0

    .line 332
    .local v0, "agpsSetting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsEnable:Z

    .line 333
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsProtocol:I

    .line 334
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->gpevt:Z

    .line 336
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;

    move-result-object v1

    .line 337
    .local v1, "cpSetting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->molrPosMethod:I

    .line 338
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddrEnable:Z

    .line 339
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddr:Ljava/lang/String;

    .line 340
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumberEnable:Z

    .line 341
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumber:Ljava/lang/String;

    .line 342
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpAutoReset:Z

    .line 343
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayloadEnable:Z

    .line 344
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBinary(Ljava/io/DataInputStream;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayload:[B

    .line 346
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;

    move-result-object v3

    .line 347
    .local v3, "upSetting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->caEnable:Z

    .line 348
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->niRequest:Z

    .line 349
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->roaming:Z

    .line 350
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->cdmaPreferred:I

    .line 351
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->prefMethod:I

    .line 352
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVersion:I

    .line 353
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->tlsVersion:I

    .line 354
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplLog:Z

    .line 355
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->msaEnable:Z

    .line 356
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->msbEnable:Z

    .line 357
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->ecidEnable:Z

    .line 358
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->otdoaEnable:Z

    .line 359
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopHacc:I

    .line 360
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopVacc:I

    .line 361
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopLocAge:I

    .line 362
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopDelay:I

    .line 363
    const/16 v4, 0x69

    if-lt p1, v4, :cond_0

    .line 364
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->lppEnable:Z

    .line 366
    :cond_0
    const/16 v4, 0x6a

    if-lt p1, v4, :cond_1

    .line 367
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->certFromSdcard:Z

    .line 369
    :cond_1
    const/16 v4, 0x6b

    if-lt p1, v4, :cond_2

    .line 370
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->autoProfileEnable:Z

    .line 372
    :cond_2
    const/16 v4, 0x6c

    if-lt p1, v4, :cond_3

    .line 373
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B

    move-result v4

    iput-byte v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->ut2:B

    .line 374
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B

    move-result v4

    iput-byte v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->ut3:B

    .line 377
    :cond_3
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;

    move-result-object v2

    .line 378
    .local v2, "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 379
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 380
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 381
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 382
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 383
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 384
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 385
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 386
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 387
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 388
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 389
    return-void
.end method


# virtual methods
.method public checkVersion()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 192
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 193
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 194
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 196
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 198
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v1

    .line 199
    .local v1, "majorVersion":S
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v2

    .line 201
    .local v2, "minorVersion":S
    if-eq v1, v5, :cond_0

    .line 202
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app maj ver=1 is not equal to AGPSD\'s maj ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v1    # "majorVersion":S
    .end local v2    # "minorVersion":S
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v3

    .line 205
    .restart local v1    # "majorVersion":S
    .restart local v2    # "minorVersion":S
    :cond_0
    if-ge v2, v5, :cond_1

    .line 206
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app min ver=1 is greater than AGPSD\'s min ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_1
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 217
    return-void
.end method

.method protected close()V
    .locals 2

    .prologue
    .line 1245
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 1232
    :cond_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    .line 1233
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "agpsd2"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1237
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1239
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    .line 1240
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    .line 1241
    return-void
.end method

.method public getAgpsConfig()Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .locals 4

    .prologue
    .line 220
    new-instance v1, Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-direct {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;-><init>()V

    .line 222
    .local v1, "config":Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    const/16 v0, 0x64

    .line 223
    .local v0, "cmd":I
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 225
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v3, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 226
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 229
    invoke-direct {p0, v0, v1}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->getAgpsConfigInt(ILcom/mediatek/lbs/em2/utils/AgpsConfig;)V

    .line 232
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 238
    return-object v1

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v3
.end method

.method public setSuplProfile(Lcom/mediatek/lbs/em2/utils/SuplProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .prologue
    .line 983
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 985
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xdb

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 986
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 987
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 988
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 989
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-boolean v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 990
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 992
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 993
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 995
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 996
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1000
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1006
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method
