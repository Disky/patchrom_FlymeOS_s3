.class Lcom/android/extrasettings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/DataUsageSummary;->handleMultiSimDataDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DataUsageSummary;

.field final synthetic val$currentSir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$7;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iput-object p2, p0, Lcom/android/extrasettings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$7;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$1400(Lcom/android/extrasettings/DataUsageSummary;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1346
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$7;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v2, 0x1

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/extrasettings/DataUsageSummary;->access$1100(Lcom/android/extrasettings/DataUsageSummary;IZ)V

    .line 1347
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$7;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->disableDataForOtherSubscriptions(Landroid/telephony/SubscriptionInfo;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/DataUsageSummary;->access$1500(Lcom/android/extrasettings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V

    .line 1348
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$7;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$100(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 1349
    return-void
.end method
