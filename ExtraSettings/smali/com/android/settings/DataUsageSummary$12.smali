.class Lcom/android/extrasettings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/extrasettings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/extrasettings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1504
    new-instance v0, Lcom/android/extrasettings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/extrasettings/DataUsageSummary;->access$2400(Lcom/android/extrasettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/extrasettings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/extrasettings/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/android/extrasettings/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/extrasettings/net/ChartData;",
            ">;",
            "Lcom/android/extrasettings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1509
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/extrasettings/net/ChartData;>;"
    const-string v0, "DataUsage"

    const-string v1, "onLoadFinished..."

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # setter for: Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/extrasettings/DataUsageSummary;->access$2502(Lcom/android/extrasettings/DataUsageSummary;Lcom/android/extrasettings/net/ChartData;)Lcom/android/extrasettings/net/ChartData;

    .line 1511
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$2200(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$2500(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1512
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$2200(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$2500(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/extrasettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1515
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    const/4 v1, 0x1

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/DataUsageSummary;->access$1300(Lcom/android/extrasettings/DataUsageSummary;Z)V

    .line 1516
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$2600(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 1519
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$2500(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/extrasettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$2700(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1522
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1501
    check-cast p2, Lcom/android/extrasettings/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/extrasettings/DataUsageSummary$12;->onLoadFinished(Landroid/content/Loader;Lcom/android/extrasettings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/extrasettings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/extrasettings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1526
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # setter for: Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/extrasettings/DataUsageSummary;->access$2502(Lcom/android/extrasettings/DataUsageSummary;Lcom/android/extrasettings/net/ChartData;)Lcom/android/extrasettings/net/ChartData;

    .line 1527
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$2200(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1528
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$12;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$2200(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1529
    return-void
.end method
