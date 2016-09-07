.class public Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 442
    return-void
.end method

.method public constructor <init>(Lcom/android/extrasettings/DialogCreatable;I)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/extrasettings/DialogCreatable;
    .param p2, "dialogId"    # I

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 445
    iput p2, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 446
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    .end local p1    # "fragment":Lcom/android/extrasettings/DialogCreatable;
    iput-object p1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 451
    return-void
.end method

.method static synthetic access$002(Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 500
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 503
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 473
    if-eqz p1, :cond_3

    .line 474
    const-string v1, "key_dialog_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 475
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 476
    const-string v1, "key_parent_fragment_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 477
    .local v0, "mParentFragmentId":I
    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/extrasettings/DialogCreatable;

    if-nez v1, :cond_2

    .line 481
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " must implement "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lcom/android/extrasettings/DialogCreatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/extrasettings/SettingsPreferenceFragment;

    if-eqz v1, :cond_3

    .line 491
    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/extrasettings/SettingsPreferenceFragment;

    # setter for: Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v1, p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->access$202(Lcom/android/extrasettings/SettingsPreferenceFragment;Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 494
    .end local v0    # "mParentFragmentId":I
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/extrasettings/DialogCreatable;

    iget v2, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v1, v2}, Lcom/android/extrasettings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 522
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/extrasettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/extrasettings/SettingsPreferenceFragment;

    # getter for: Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->access$200(Lcom/android/extrasettings/SettingsPreferenceFragment;)Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/extrasettings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0, v1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->access$202(Lcom/android/extrasettings/SettingsPreferenceFragment;Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 528
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 508
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 511
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 456
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 464
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 466
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/extrasettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 469
    :cond_0
    return-void
.end method
