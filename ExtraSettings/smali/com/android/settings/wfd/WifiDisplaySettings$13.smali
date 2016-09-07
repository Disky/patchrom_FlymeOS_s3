.class Lcom/android/extrasettings/wfd/WifiDisplaySettings$13;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1000(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 679
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1, v2}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1002(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)I

    .line 680
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->update(I)V
    invoke-static {v1, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1100(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)V

    .line 681
    return-void
.end method
