.class Lcom/mediatek/settings/deviceinfo/MemoryExts$3;
.super Landroid/os/AsyncTask;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    iput-object p2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;->val$mountService:Landroid/os/storage/IMountService;

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "MemorySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings mountVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;->val$mountService:Landroid/os/storage/IMountService;

    # getter for: Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 390
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    const-string v0, "MemorySettings"

    const-string v1, "Mount service is null, can\'t mount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0
.end method
