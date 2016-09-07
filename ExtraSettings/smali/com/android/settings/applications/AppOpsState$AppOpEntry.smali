.class public Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOpEntry"
.end annotation


# instance fields
.field private final mApp:Lcom/android/extrasettings/applications/AppOpsState$AppEntry;

.field private final mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgOps:Landroid/app/AppOpsManager$PackageOps;

.field private final mSwitchOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwitchOrder:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/extrasettings/applications/AppOpsState$AppEntry;I)V
    .locals 1
    .param p1, "pkg"    # Landroid/app/AppOpsManager$PackageOps;
    .param p2, "op"    # Landroid/app/AppOpsManager$OpEntry;
    .param p3, "app"    # Lcom/android/extrasettings/applications/AppOpsState$AppEntry;
    .param p4, "switchOrder"    # I

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    .line 300
    iput-object p1, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    .line 301
    iput-object p3, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/extrasettings/applications/AppOpsState$AppEntry;

    .line 302
    iput p4, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mSwitchOrder:I

    .line 303
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/extrasettings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p2}, Lcom/android/extrasettings/applications/AppOpsState$AppEntry;->addOp(Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 304
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method private static addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 6
    .param p1, "op"    # Landroid/app/AppOpsManager$OpEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$OpEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 310
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 311
    .local v1, "pos":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    .end local v1    # "pos":Landroid/app/AppOpsManager$OpEntry;
    :goto_1
    return-void

    .line 318
    .restart local v1    # "pos":Landroid/app/AppOpsManager$OpEntry;
    :cond_0
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 319
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 309
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "pos":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;
    .locals 10
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "withTerseCounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;[",
            "Ljava/lang/CharSequence;",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 358
    if-lez v2, :cond_0

    .line 359
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 362
    .local v3, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getAllowedCount()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getIgnoredCount()I

    move-result v6

    add-int v1, v5, v6

    .line 364
    .local v1, "count":I
    if-eqz p4, :cond_1

    if-lez v1, :cond_1

    .line 365
    const v5, 0x7f0e0001

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "quantity":Ljava/lang/String;
    const v5, 0x7f0901fb

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    aget-object v7, p2, v7

    aput-object v7, v6, v8

    aput-object v4, v6, v9

    invoke-virtual {p3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .end local v4    # "quantity":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v5

    aget-object v5, p2, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 373
    .end local v1    # "count":I
    .end local v3    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public addOp(Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2
    .param p1, "op"    # Landroid/app/AppOpsManager$OpEntry;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/extrasettings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/extrasettings/applications/AppOpsState$AppEntry;->addOp(Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 328
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 329
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/extrasettings/applications/AppOpsState$AppEntry;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 332
    :cond_0
    return-void
.end method

.method public getAppEntry()Lcom/android/extrasettings/applications/AppOpsState$AppEntry;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/extrasettings/applications/AppOpsState$AppEntry;

    return-object v0
.end method

.method public getCountsText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v9, 0x7f0e0001

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 377
    iget-object v5, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    .line 378
    .local v4, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAllowedCount()I

    move-result v0

    .line 379
    .local v0, "allowed":I
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getIgnoredCount()I

    move-result v2

    .line 381
    .local v2, "denied":I
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 382
    const/4 v5, 0x0

    .line 395
    :goto_0
    return-object v5

    .line 385
    :cond_0
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "allowedQuantity":Ljava/lang/CharSequence;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "deniedQuantity":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 391
    const v5, 0x7f0901fc

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 392
    :cond_1
    if-nez v0, :cond_2

    .line 393
    const v5, 0x7f0901fd

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 395
    :cond_2
    const v5, 0x7f0901fe

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v3, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    return-object v0
.end method

.method public getPackageOps()Landroid/app/AppOpsManager$PackageOps;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    return-object v0
.end method

.method public getSummaryText(Lcom/android/extrasettings/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "state"    # Lcom/android/extrasettings/applications/AppOpsState;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/extrasettings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/extrasettings/applications/AppOpsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchOrder()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mSwitchOrder:I

    return v0
.end method

.method public getSwitchText(Lcom/android/extrasettings/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "state"    # Lcom/android/extrasettings/applications/AppOpsState;

    .prologue
    const/4 v3, 0x0

    .line 403
    iget-object v1, p1, Lcom/android/extrasettings/applications/AppOpsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 404
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/extrasettings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 407
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/extrasettings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "showEmptyText"    # Z

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const v0, 0x7f0908c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f0908c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/extrasettings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
