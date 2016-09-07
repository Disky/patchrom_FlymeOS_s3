.class Lcom/android/extrasettings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/extrasettings/IccLockSettings$3;->this$0:Lcom/android/extrasettings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 513
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings$3;->this$0:Lcom/android/extrasettings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/extrasettings/IccLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 515
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/extrasettings/IccLockSettings$3;->this$0:Lcom/android/extrasettings/IccLockSettings;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    # setter for: Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v2}, Lcom/android/extrasettings/IccLockSettings;->access$402(Lcom/android/extrasettings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 519
    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings$3;->this$0:Lcom/android/extrasettings/IccLockSettings;

    # invokes: Lcom/android/extrasettings/IccLockSettings;->updatePreferences()V
    invoke-static {v2}, Lcom/android/extrasettings/IccLockSettings;->access$200(Lcom/android/extrasettings/IccLockSettings;)V

    .line 522
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTabChanged()... slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings$3;->this$0:Lcom/android/extrasettings/IccLockSettings;

    # invokes: Lcom/android/extrasettings/IccLockSettings;->handleRadioStatus()V
    invoke-static {v2}, Lcom/android/extrasettings/IccLockSettings;->access$500(Lcom/android/extrasettings/IccLockSettings;)V

    .line 525
    return-void

    .line 515
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_0
.end method
