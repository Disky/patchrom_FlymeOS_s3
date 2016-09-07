.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;
.super Landroid/app/Dialog;
.source "WfdSinkSurfaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenDialog"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSystemUiBak:I

.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .line 223
    const v0, 0x1030011

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 225
    iput-object p2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    .line 226
    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    .prologue
    .line 217
    iget v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 292
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog dismiss"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->disconnect()V
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1000(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 295
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 296
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 300
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1100(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeWfdSinkGuide()V
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$100(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->disconnect()V
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1000(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 306
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 230
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 231
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dialog onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 235
    .local v0, "viewParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    new-instance v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget-object v4, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v4}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/content/Context;)V

    # setter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$302(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    .line 236
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setFocusableInTouchMode(Z)V

    .line 237
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    new-instance v2, Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;
    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$402(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 239
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$400(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$400(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;
    invoke-static {v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$400(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 246
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 248
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I

    .line 249
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$1;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$1;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)V

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setOnFocusGetCallback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->access$700(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 273
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$600(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 276
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$400(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 277
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 281
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog onStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setSystemUiVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 285
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$400(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 286
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->restoreOrientation()V

    .line 287
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 288
    return-void
.end method
