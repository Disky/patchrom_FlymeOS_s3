.class Lcom/android/extrasettings/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/MediaFormat;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/extrasettings/MediaFormat$1;->this$0:Lcom/android/extrasettings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/extrasettings/MediaFormat$1;->this$0:Lcom/android/extrasettings/MediaFormat;

    # getter for: Lcom/android/extrasettings/MediaFormat;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Lcom/android/extrasettings/MediaFormat;->access$000(Lcom/android/extrasettings/MediaFormat;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat$1;->this$0:Lcom/android/extrasettings/MediaFormat;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat$1;->this$0:Lcom/android/extrasettings/MediaFormat;

    invoke-virtual {v1}, Lcom/android/extrasettings/MediaFormat;->finish()V

    goto :goto_0
.end method
