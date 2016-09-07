.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$1;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 249
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$1;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$1;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$1;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->access$500(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)I

    move-result v1

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$600(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V

    .line 254
    return-void
.end method
