.class Lcom/mediatek/settings/ClearMotionSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ClearMotionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/ClearMotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/ClearMotionSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/ClearMotionSettings;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const-string v0, "ClearMotionSettingsLog"

    const-string v1, "mUpdateClearMotionStatusReceiver"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    # invokes: Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionStatus()V
    invoke-static {v0}, Lcom/mediatek/settings/ClearMotionSettings;->access$000(Lcom/mediatek/settings/ClearMotionSettings;)V

    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    # getter for: Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/mediatek/settings/ClearMotionSettings;->access$100(Lcom/mediatek/settings/ClearMotionSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    # invokes: Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionDemo(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->access$200(Lcom/mediatek/settings/ClearMotionSettings;Z)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    # invokes: Lcom/mediatek/settings/ClearMotionSettings;->prepareVideo()V
    invoke-static {v0}, Lcom/mediatek/settings/ClearMotionSettings;->access$300(Lcom/mediatek/settings/ClearMotionSettings;)V

    .line 78
    return-void
.end method
