.class Lcom/mediatek/wifi/WifiGprsSelector$7;
.super Ljava/lang/Object;
.source "WifiGprsSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wifi/WifiGprsSelector;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/WifiGprsSelector;

.field final synthetic val$simItemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iput-object p2, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->val$simItemList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x4

    .line 552
    const-string v2, "WifiGprsSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->val$simItemList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    .line 554
    .local v0, "simItem":Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSubId:I

    # setter for: Lcom/mediatek/wifi/WifiGprsSelector;->mSubId:I
    invoke-static {v2, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->access$702(Lcom/mediatek/wifi/WifiGprsSelector;I)I

    .line 555
    const-string v2, "WifiGprsSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mSubId:I
    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->access$700(Lcom/mediatek/wifi/WifiGprsSelector;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v2, "WifiGprsSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsSim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",SIM_INDICATOR_LOCKED="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-boolean v2, v0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v2, :cond_1

    .line 560
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mCellConnMgr:Lcom/mediatek/internal/telephony/CellConnMgr;
    invoke-static {v2}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1300(Lcom/mediatek/wifi/WifiGprsSelector;)Lcom/mediatek/internal/telephony/CellConnMgr;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSubId:I

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/internal/telephony/CellConnMgr;->getCurrentState(II)I

    move-result v1

    .line 561
    .local v1, "state":I
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mCellConnMgr:Lcom/mediatek/internal/telephony/CellConnMgr;
    invoke-static {v2}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1300(Lcom/mediatek/wifi/WifiGprsSelector;)Lcom/mediatek/internal/telephony/CellConnMgr;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v1, v5, :cond_0

    .line 562
    const-string v2, "WifiGprsSelector"

    const-string v3, "mCellConnMgr.handleCellConn"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    const/16 v3, 0x3ea

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->showDialog(I)V
    invoke-static {v2, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1400(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    .line 571
    .end local v1    # "state":I
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 572
    return-void

    .line 566
    .restart local v1    # "state":I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSubId:I

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->switchGprsDefautlSIM(I)V
    invoke-static {v2, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1500(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    goto :goto_0

    .line 569
    .end local v1    # "state":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$7;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    const/4 v3, 0x0

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->switchGprsDefautlSIM(I)V
    invoke-static {v2, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1500(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    goto :goto_0
.end method
