.class Lcom/android/extrasettings/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1266
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1269
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDataEnabledListener... mBinding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mBinding:Z
    invoke-static {v6}, Lcom/android/extrasettings/DataUsageSummary;->access$500(Lcom/android/extrasettings/DataUsageSummary;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mBinding:Z
    invoke-static {v4}, Lcom/android/extrasettings/DataUsageSummary;->access$500(Lcom/android/extrasettings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1302
    :goto_0
    return-void

    .line 1272
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/extrasettings/DataUsageSummary;->access$600(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1273
    .local v1, "dataEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/extrasettings/DataUsageSummary;->access$700(Lcom/android/extrasettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, "currentTab":Ljava/lang/String;
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDataEnabledListener... dataEanbled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mCurrentTab: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/extrasettings/DataUsageSummary;->access$700(Lcom/android/extrasettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    # invokes: Lcom/android/extrasettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$800(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1277
    if-eqz v1, :cond_4

    .line 1279
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/extrasettings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1280
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->handleMultiSimDataDialog()V
    invoke-static {v2}, Lcom/android/extrasettings/DataUsageSummary;->access$900(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 1301
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/extrasettings/DataUsageSummary;->access$1300(Lcom/android/extrasettings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "dataEnabled":Z
    :cond_2
    move v1, v3

    .line 1272
    goto :goto_1

    .line 1282
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v1    # "dataEnabled":Z
    :cond_3
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I
    invoke-static {v5, v0}, Lcom/android/extrasettings/DataUsageSummary;->access$1000(Lcom/android/extrasettings/DataUsageSummary;Ljava/lang/String;)I

    move-result v5

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v4, v5, v2}, Lcom/android/extrasettings/DataUsageSummary;->access$1100(Lcom/android/extrasettings/DataUsageSummary;IZ)V

    goto :goto_2

    .line 1292
    :cond_4
    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->access$1200()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->needToShowDialog()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1293
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/extrasettings/DataUsageSummary;->access$700(Lcom/android/extrasettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/extrasettings/DataUsageSummary;->access$1000(Lcom/android/extrasettings/DataUsageSummary;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/extrasettings/DataUsageSummary;I)V

    goto :goto_2

    .line 1295
    :cond_5
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I
    invoke-static {v4, v0}, Lcom/android/extrasettings/DataUsageSummary;->access$1000(Lcom/android/extrasettings/DataUsageSummary;Ljava/lang/String;)I

    move-result v4

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v2, v4, v3}, Lcom/android/extrasettings/DataUsageSummary;->access$1100(Lcom/android/extrasettings/DataUsageSummary;IZ)V

    goto :goto_2
.end method
