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
    .line 1165
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1168
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mBinding:Z
    invoke-static {v4}, Lcom/android/extrasettings/DataUsageSummary;->access$400(Lcom/android/extrasettings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1170
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/extrasettings/DataUsageSummary;->access$500(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 1171
    .local v1, "dataEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/extrasettings/DataUsageSummary;->access$600(Lcom/android/extrasettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "currentTab":Ljava/lang/String;
    const-string v4, "mobile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1173
    :cond_1
    if-eqz v1, :cond_4

    .line 1174
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v2}, Lcom/android/extrasettings/DataUsageSummary;->access$700(Lcom/android/extrasettings/DataUsageSummary;Z)V

    .line 1182
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/extrasettings/DataUsageSummary;->access$800(Lcom/android/extrasettings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "dataEnabled":Z
    :cond_3
    move v1, v3

    .line 1170
    goto :goto_1

    .line 1178
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v1    # "dataEnabled":Z
    :cond_4
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary$6;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/extrasettings/DataUsageSummary;)V

    goto :goto_2
.end method
