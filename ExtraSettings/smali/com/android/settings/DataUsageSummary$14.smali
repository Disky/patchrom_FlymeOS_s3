.class Lcom/android/extrasettings/DataUsageSummary$14;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/extrasettings/widget/ChartDataUsageView$DataUsageChartListener;


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
    .line 1575
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$14;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$14;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$14;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$2200(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/extrasettings/DataUsageSummary;->access$1700(Lcom/android/extrasettings/DataUsageSummary;J)V

    .line 1584
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$14;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$14;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$2200(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/extrasettings/DataUsageSummary;->access$3300(Lcom/android/extrasettings/DataUsageSummary;J)V

    .line 1579
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$14;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 1594
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$14;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 1589
    return-void
.end method
