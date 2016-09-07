.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

.field final synthetic val$newUiOptions:I


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iput p2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->val$newUiOptions:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 327
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request full screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->val$newUiOptions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->val$newUiOptions:I

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setSystemUiVisibility(I)V

    .line 329
    return-void
.end method
