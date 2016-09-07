.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;
.super Ljava/lang/Object;
.source "BandwidthUsage.java"

# interfaces
.implements Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 240
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # invokes: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$500(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$100(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 242
    return-void
.end method

.method public onLimitChanging()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$100(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    return-void
.end method

.method public requestLimitEdit()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->show(Lcom/mediatek/wifi/hotspot/BandwidthUsage;J)V

    .line 247
    return-void
.end method
