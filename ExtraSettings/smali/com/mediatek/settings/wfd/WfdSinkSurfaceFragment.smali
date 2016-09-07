.class public final Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
.super Landroid/app/DialogFragment;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;,
        Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;,
        Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCountdownShowing:Z

.field private mDialog:Landroid/app/Dialog;

.field private mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

.field private mGuideShowing:Z

.field private mLatinCharTest:Z

.field private mOrientationBak:I

.field private mSinkView:Landroid/view/SurfaceView;

.field private mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

.field private mSurfaceShowing:Z

.field private mTestLatinChar:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    .line 77
    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    .line 78
    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    .line 79
    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mLatinCharTest:Z

    .line 80
    const/16 v0, 0xa0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I

    .line 83
    const/16 v0, -0x64

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mOrientationBak:I

    .line 86
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeWfdSinkGuide()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->disconnect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mLatinCharTest:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I

    return p1
.end method

.method static synthetic access$1308(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkExt;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeCountDown()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->addCountdownView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
    .param p1, "x1"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
    .param p1, "x1"    # Landroid/view/SurfaceView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V

    return-void
.end method

.method private addCountdownView(Ljava/lang/String;)V
    .locals 6
    .param p1, "countdownNum"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f100219

    .line 179
    iget-boolean v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    if-eqz v2, :cond_0

    .line 190
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    .local v0, "countdownView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v2, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v2, v5, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setTag(ILjava/lang/Object;)V

    .line 189
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    goto :goto_0
.end method

.method private disconnect()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->disconnectWfdSinkConnection()V

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    .line 124
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeWfdSinkGuide()V

    .line 127
    :cond_1
    return-void
.end method

.method private removeCountDown()V
    .locals 4

    .prologue
    const v3, 0x7f100219

    .line 193
    iget-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 196
    .local v0, "countdownView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removeView(Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setTag(ILjava/lang/Object;)V

    .line 201
    .end local v0    # "countdownView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    .line 202
    return-void
.end method

.method private removeWfdSinkGuide()V
    .locals 4

    .prologue
    const v3, 0x7f0900b8

    .line 166
    iget-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    .local v0, "guide":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removeView(Landroid/view/View;)V

    .line 171
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setTag(ILjava/lang/Object;)V

    .line 174
    .end local v0    # "guide":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    const/4 v2, 0x1

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setCatchEvents(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->access$200(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    .line 176
    return-void
.end method

.method private requestFullScreen(I)V
    .locals 6
    .param p1, "systemUi"    # I

    .prologue
    .line 312
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 313
    or-int/lit8 p1, p1, 0x2

    .line 315
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 316
    or-int/lit8 p1, p1, 0x4

    .line 318
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 319
    or-int/lit16 p1, p1, 0x3000

    .line 322
    :cond_2
    move v0, p1

    .line 323
    .local v0, "newUiOptions":I
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    new-instance v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    return-void
.end method


# virtual methods
.method public addWfdSinkGuide()V
    .locals 9

    .prologue
    const v8, 0x7f0900b8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 142
    iget-boolean v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    if-eqz v3, :cond_0

    .line 163
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400f4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 147
    .local v1, "guide":Landroid/view/ViewGroup;
    const v3, 0x7f10021e

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 148
    .local v0, "btn":Landroid/widget/Button;
    new-instance v3, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v3, 0x7f10021d

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v3, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v3, v8, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setTag(ILjava/lang/Object;)V

    .line 161
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setCatchEvents(Z)V
    invoke-static {v3, v6}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->access$200(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V

    .line 162
    iput-boolean v7, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    if-nez p1, :cond_0

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    if-nez v0, :cond_1

    .line 91
    :cond_0
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    const-string v1, "bundle is not null, recreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->dismissAllowingStateLoss()V

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    .line 97
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSinkExt;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    .line 98
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->registerSinkFragment(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->setShowsDialog(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialog is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "wfd.uibc.latintest"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mLatinCharTest:Z

    .line 135
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mDialog:Landroid/app/Dialog;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mDialog:Landroid/app/Dialog;

    return-object v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 635
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    const-string v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->dismissAllowingStateLoss()V

    .line 637
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 107
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->onStart()V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->onStop()V

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->dismissAllowingStateLoss()V

    .line 115
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 116
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 117
    return-void
.end method

.method public requestOrientation(Z)V
    .locals 2
    .param p1, "isPortrait"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mOrientationBak:I

    .line 206
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 209
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreOrientation()V
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mOrientationBak:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mOrientationBak:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 610
    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getSystemUiVisibility()I

    move-result v0

    .line 612
    .local v0, "systemUiVis":I
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasFocus:Z
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->access$900(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 614
    invoke-direct {p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V

    .line 616
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 620
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    const-string v1, "surface created"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkExt;->setupWfdSinkConnection(Landroid/view/Surface;)V

    .line 624
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    .line 625
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 629
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    const-string v1, "surface destroyed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->disconnect()V

    .line 631
    return-void
.end method
