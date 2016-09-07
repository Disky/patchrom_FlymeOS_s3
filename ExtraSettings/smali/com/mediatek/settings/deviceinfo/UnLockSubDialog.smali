.class public Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;
.super Landroid/app/DialogFragment;
.source "UnLockSubDialog.java"


# instance fields
.field private mCellConnMgr:Lcom/mediatek/internal/telephony/CellConnMgr;

.field private mState:I

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mSubId:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    .prologue
    .line 21
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    .prologue
    .line 21
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mState:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->finishActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)Lcom/mediatek/internal/telephony/CellConnMgr;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mCellConnMgr:Lcom/mediatek/internal/telephony/CellConnMgr;

    return-object v0
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "UnLockSubDialog"

    const-string v1, "handleDialogDismiss"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 81
    :cond_0
    return-void
.end method

.method private static getCurrentStateForSubId(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 35
    new-instance v0, Lcom/mediatek/internal/telephony/CellConnMgr;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/CellConnMgr;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "cellConnMgr":Lcom/mediatek/internal/telephony/CellConnMgr;
    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/mediatek/internal/telephony/CellConnMgr;->getCurrentState(II)I

    move-result v1

    .line 37
    .local v1, "state":I
    const-string v2, "UnLockSubDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentStateForSubId(), subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return v1
.end method

.method public static showDialog(Landroid/app/Activity;I)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "subId"    # I

    .prologue
    .line 89
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 90
    .local v2, "slotId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-static {p0, p1}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->getCurrentStateForSubId(Landroid/content/Context;I)I

    move-result v3

    .line 92
    .local v3, "state":I
    const-string v4, "UnLockSubDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDialog(), subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz v3, :cond_0

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "state"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v4, "subid"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    new-instance v1, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    invoke-direct {v1}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;-><init>()V

    .line 98
    .local v1, "dialog":Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;
    invoke-virtual {v1, v0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->setArguments(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 105
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v4, "UnLockSubDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId is invalid! slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 72
    const-string v0, "UnLockSubDialog"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->finishActivity()V

    .line 74
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 43
    new-instance v2, Lcom/mediatek/internal/telephony/CellConnMgr;

    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/internal/telephony/CellConnMgr;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mCellConnMgr:Lcom/mediatek/internal/telephony/CellConnMgr;

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mState:I

    .line 46
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "subid"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mSubId:I

    .line 47
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mCellConnMgr:Lcom/mediatek/internal/telephony/CellConnMgr;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mSubId:I

    iget v4, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mState:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/CellConnMgr;->getStringUsingState(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 48
    .local v1, "simStatusStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;-><init>(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$2;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$2;-><init>(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
