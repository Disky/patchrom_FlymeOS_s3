.class Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Lcom/android/extrasettings/deviceinfo/StorageMeasurement$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$this$0:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$this$0:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;

    iput-object p3, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "fileInfoForMisc":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;>;"
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;-><init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method
