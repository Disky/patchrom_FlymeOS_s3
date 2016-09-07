.class Lcom/android/extrasettings/RadioInfo$16;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/android/extrasettings/RadioInfo$16;->this$0:Lcom/android/extrasettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1036
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo$16;->this$0:Lcom/android/extrasettings/RadioInfo;

    const-string v5, "toggle VoLTE provisioned: currently %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo$16;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->isImsVoLteProvisioned()Z
    invoke-static {v2}, Lcom/android/extrasettings/RadioInfo;->access$4100(Lcom/android/extrasettings/RadioInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "on"

    :goto_0
    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/extrasettings/RadioInfo;->access$1000(Lcom/android/extrasettings/RadioInfo;Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo$16;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->isImsVoLteProvisioned()Z
    invoke-static {v2}, Lcom/android/extrasettings/RadioInfo;->access$4100(Lcom/android/extrasettings/RadioInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1039
    .local v1, "newValue":Z
    :goto_1
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo$16;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/extrasettings/RadioInfo;->access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo$16;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/extrasettings/RadioInfo;->access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo$16;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/extrasettings/RadioInfo;->access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1041
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1042
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/android/extrasettings/RadioInfo$16$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/extrasettings/RadioInfo$16$1;-><init>(Lcom/android/extrasettings/RadioInfo$16;Lcom/android/ims/ImsManager;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1055
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo$16;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateImsVoLteProvisionedState()V
    invoke-static {v2}, Lcom/android/extrasettings/RadioInfo;->access$1700(Lcom/android/extrasettings/RadioInfo;)V

    .line 1056
    return-void

    .line 1036
    .end local v1    # "newValue":Z
    :cond_1
    const-string v2, "off"

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1038
    goto :goto_1
.end method
