.class Lcom/android/extrasettings/DataUsageSummary$10;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1230
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$10;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1233
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/DataUsageSummary$CycleItem;

    .line 1234
    .local v0, "cycle":Lcom/android/extrasettings/DataUsageSummary$CycleItem;
    instance-of v1, v0, Lcom/android/extrasettings/DataUsageSummary$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$10;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary$CycleEditorFragment;->show(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 1240
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$10;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$1400(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1254
    :goto_0
    return-void

    .line 1250
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$10;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$1500(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/extrasettings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/extrasettings/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/extrasettings/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 1252
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$10;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->access$1600(Lcom/android/extrasettings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method