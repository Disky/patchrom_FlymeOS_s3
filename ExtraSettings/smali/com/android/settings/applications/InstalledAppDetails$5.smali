.class Lcom/android/extrasettings/applications/InstalledAppDetails$5;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1736
    const-string v0, "InstalledAppDetails"

    const-string v1, "dynamic swap, update the UI about SD card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    # invokes: Lcom/android/extrasettings/applications/InstalledAppDetails;->refeshUi2SD()V
    invoke-static {v0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->access$1600(Lcom/android/extrasettings/applications/InstalledAppDetails;)V

    .line 1739
    return-void
.end method