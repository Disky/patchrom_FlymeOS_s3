.class Lcom/mediatek/datausage/OverViewTabAdapter$1;
.super Landroid/os/Handler;
.source "OverViewTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/datausage/OverViewTabAdapter;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datausage/OverViewTabAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/datausage/OverViewTabAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$1;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "inputMessage"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "state":I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter$1;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    # getter for: Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/datausage/OverViewTabAdapter;->access$000(Lcom/mediatek/datausage/OverViewTabAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_saving_key"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter$1;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    # getter for: Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/mediatek/datausage/OverViewTabAdapter;->access$100(Lcom/mediatek/datausage/OverViewTabAdapter;)Landroid/widget/Switch;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter$1;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    # getter for: Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/mediatek/datausage/OverViewTabAdapter;->access$100(Lcom/mediatek/datausage/OverViewTabAdapter;)Landroid/widget/Switch;

    move-result-object v3

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 152
    :cond_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
