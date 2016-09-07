.class Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->callBack(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

.field final synthetic val$fileInfoForMisc:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iput-object p2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->val$fileInfoForMisc:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->val$fileInfoForMisc:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$302(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 214
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J
    invoke-static {v2, v4, v5}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$402(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;J)J

    .line 215
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    # getter for: Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$300(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    # getter for: Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$300(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;

    .line 217
    .local v1, "info":Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iget-wide v4, v1, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    # += operator for: Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J
    invoke-static {v2, v4, v5}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$414(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;J)J

    goto :goto_0

    .line 220
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {v2}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 221
    return-void
.end method
