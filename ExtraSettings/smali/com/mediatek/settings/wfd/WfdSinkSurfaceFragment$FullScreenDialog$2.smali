.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 261
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiVisibilityChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-nez p1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setFullScreenFlag(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->access$800(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V

    .line 265
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasFocus:Z
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->access$900(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->access$500(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)I

    move-result v1

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$600(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setFullScreenFlag(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->access$800(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V

    goto :goto_0
.end method
