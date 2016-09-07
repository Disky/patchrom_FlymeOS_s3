.class Lcom/android/extrasettings/sim/SimSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/extrasettings/sim/SimSettings$2;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 626
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubReceiver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings$2;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->handleAirplaneModeBroadcast(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/extrasettings/sim/SimSettings;->access$1000(Lcom/android/extrasettings/sim/SimSettings;Landroid/content/Intent;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings$2;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->handleDataConnectionStateChanged(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/extrasettings/sim/SimSettings;->access$1100(Lcom/android/extrasettings/sim/SimSettings;Landroid/content/Intent;)V

    goto :goto_0

    .line 632
    :cond_2
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 633
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings$2;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v1}, Lcom/android/extrasettings/sim/SimSettings;->access$1200(Lcom/android/extrasettings/sim/SimSettings;)V

    goto :goto_0

    .line 634
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings$2;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->isPhoneAccountAction(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/extrasettings/sim/SimSettings;->access$1300(Lcom/android/extrasettings/sim/SimSettings;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 635
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings$2;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->updateCallValues()V
    invoke-static {v1}, Lcom/android/extrasettings/sim/SimSettings;->access$1400(Lcom/android/extrasettings/sim/SimSettings;)V

    goto :goto_0

    .line 636
    :cond_4
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings$2;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->isSimSwitchAction(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/extrasettings/sim/SimSettings;->access$1500(Lcom/android/extrasettings/sim/SimSettings;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings$2;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->updateSimPref()V
    invoke-static {v1}, Lcom/android/extrasettings/sim/SimSettings;->access$1600(Lcom/android/extrasettings/sim/SimSettings;)V

    goto :goto_0
.end method
