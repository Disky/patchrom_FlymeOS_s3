.class Lcom/android/extrasettings/DataUsageSummary$16;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2977
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$16;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2982
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2983
    .local v0, "action":Ljava/lang/String;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive broadcast , action =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2986
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$16;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/extrasettings/DataUsageSummary;->mIsAirplaneModeOn:Z

    .line 2987
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$16;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updateBody()V
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$100(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 2992
    :cond_0
    :goto_0
    return-void

    .line 2988
    :cond_1
    const-string v1, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2989
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$16;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$3700(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/net/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->read()V

    .line 2990
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$16;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updateBody()V
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$100(Lcom/android/extrasettings/DataUsageSummary;)V

    goto :goto_0
.end method
