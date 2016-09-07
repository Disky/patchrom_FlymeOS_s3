.class public Lcom/android/extrasettings/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/CryptKeeperConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 100
    new-instance v0, Lcom/android/extrasettings/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/CryptKeeperConfirm$1;-><init>(Lcom/android/extrasettings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/CryptKeeperConfirm;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/CryptKeeperConfirm;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f10005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/extrasettings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mContext:Landroid/content/Context;

    .line 159
    const v0, 0x7f04002c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 160
    invoke-direct {p0}, Lcom/android/extrasettings/CryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 161
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
