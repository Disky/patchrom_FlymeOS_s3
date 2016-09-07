.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->addWfdSinkGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok button onClick"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeWfdSinkGuide()V
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$100(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 153
    return-void
.end method
