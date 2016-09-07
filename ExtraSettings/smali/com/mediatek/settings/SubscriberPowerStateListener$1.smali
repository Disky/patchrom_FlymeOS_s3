.class Lcom/mediatek/settings/SubscriberPowerStateListener$1;
.super Landroid/telephony/PhoneStateListener;
.source "SubscriberPowerStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/SubscriberPowerStateListener;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/SubscriberPowerStateListener;

.field final synthetic val$record:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/SubscriberPowerStateListener;ILandroid/telephony/SubscriptionInfo;)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener$1;->this$0:Lcom/mediatek/settings/SubscriberPowerStateListener;

    iput-object p3, p0, Lcom/mediatek/settings/SubscriberPowerStateListener$1;->val$record:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 71
    .local v0, "state":I
    const-string v1, "SubscriberPowerStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceState.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener$1;->this$0:Lcom/mediatek/settings/SubscriberPowerStateListener;

    # getter for: Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;
    invoke-static {v1}, Lcom/mediatek/settings/SubscriberPowerStateListener;->access$000(Lcom/mediatek/settings/SubscriberPowerStateListener;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/SubscriberPowerStateListener$1;->val$record:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener$1;->this$0:Lcom/mediatek/settings/SubscriberPowerStateListener;

    # invokes: Lcom/mediatek/settings/SubscriberPowerStateListener;->stopPhoneRegisterListener()V
    invoke-static {v1}, Lcom/mediatek/settings/SubscriberPowerStateListener;->access$100(Lcom/mediatek/settings/SubscriberPowerStateListener;)V

    .line 77
    return-void
.end method
