.class Lcom/android/extrasettings/deviceinfo/SimStatus$3;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 406
    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/extrasettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$500(Lcom/android/extrasettings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    # setter for: Lcom/android/extrasettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v2, v1}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$002(Lcom/android/extrasettings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 409
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/extrasettings/deviceinfo/SimStatus;->updatePhoneInfos()V
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$600(Lcom/android/extrasettings/deviceinfo/SimStatus;)V

    .line 410
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/extrasettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$800(Lcom/android/extrasettings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/extrasettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v2}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$700(Lcom/android/extrasettings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 414
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/extrasettings/deviceinfo/SimStatus;->updateDataState()V
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$200(Lcom/android/extrasettings/deviceinfo/SimStatus;)V

    .line 415
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/extrasettings/deviceinfo/SimStatus;->updateNetworkType()V
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$300(Lcom/android/extrasettings/deviceinfo/SimStatus;)V

    .line 416
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/extrasettings/deviceinfo/SimStatus;->updatePreference()V
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$900(Lcom/android/extrasettings/deviceinfo/SimStatus;)V

    .line 419
    const-string v1, "SimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged()... slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/SimStatus$3;->this$0:Lcom/android/extrasettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/extrasettings/deviceinfo/SimStatus;->handleRadioStatus()V
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/SimStatus;->access$1000(Lcom/android/extrasettings/deviceinfo/SimStatus;)V

    .line 422
    return-void
.end method
