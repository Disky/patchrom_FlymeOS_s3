.class Lcom/android/extrasettings/applications/InstalledAppDetails$4;
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
    .line 1495
    iput-object p1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$4;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1498
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$4;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails$4;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/extrasettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V
    invoke-static {v1, v0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->access$1400(Lcom/android/extrasettings/applications/InstalledAppDetails;Z)V

    .line 1499
    return-void

    .line 1498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
