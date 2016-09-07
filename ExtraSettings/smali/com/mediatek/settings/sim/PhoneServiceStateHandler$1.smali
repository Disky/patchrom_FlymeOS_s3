.class Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneServiceStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;II)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->this$0:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    iput p3, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->val$subId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 98
    const-string v0, "PhoneServiceStateHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener:onServiceStateChanged: subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->val$subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->this$0:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    # getter for: Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;
    invoke-static {v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->access$000(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;)Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->this$0:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    # getter for: Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;
    invoke-static {v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->access$000(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;)Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->val$subId:I

    invoke-interface {v0, p1, v1}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;->onServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 103
    :cond_0
    return-void
.end method
