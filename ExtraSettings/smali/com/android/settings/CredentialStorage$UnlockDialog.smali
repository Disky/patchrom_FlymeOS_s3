.class Lcom/android/extrasettings/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/extrasettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/CredentialStorage;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 548
    iput-object p1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 552
    .local v2, "view":Landroid/view/View;
    # getter for: Lcom/android/extrasettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/extrasettings/CredentialStorage;->access$700(Lcom/android/extrasettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 553
    invoke-virtual {p1}, Lcom/android/extrasettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 562
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f100059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    const v3, 0x7f10005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 564
    iget-object v3, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v3, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 566
    const v3, 0x7f10005a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 568
    # getter for: Lcom/android/extrasettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/extrasettings/CredentialStorage;->access$800()Landroid/app/AlertDialog;

    move-result-object v3

    if-nez v3, :cond_0

    .line 569
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0907e0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 574
    .local v0, "dialog":Landroid/app/AlertDialog;
    # setter for: Lcom/android/extrasettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/extrasettings/CredentialStorage;->access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 575
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 576
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 578
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    # getter for: Lcom/android/extrasettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/extrasettings/CredentialStorage;->access$800()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 579
    iget-object v3, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 580
    return-void

    .line 554
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    # getter for: Lcom/android/extrasettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/extrasettings/CredentialStorage;->access$700(Lcom/android/extrasettings/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 555
    invoke-virtual {p1}, Lcom/android/extrasettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 556
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    # getter for: Lcom/android/extrasettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/extrasettings/CredentialStorage;->access$700(Lcom/android/extrasettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 557
    invoke-virtual {p1}, Lcom/android/extrasettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 559
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_3
    const v3, 0x7f0907e7

    new-array v4, v5, [Ljava/lang/Object;

    # getter for: Lcom/android/extrasettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/extrasettings/CredentialStorage;->access$700(Lcom/android/extrasettings/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/android/extrasettings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/CredentialStorage;Lcom/android/extrasettings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/CredentialStorage;
    .param p2, "x1"    # Lcom/android/extrasettings/CredentialStorage$1;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/extrasettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 584
    return-void

    .line 583
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 587
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 593
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 594
    return-void

    .line 593
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 597
    const/4 v1, 0x0

    # setter for: Lcom/android/extrasettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/extrasettings/CredentialStorage;->access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 598
    iget-boolean v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    .line 599
    iput-boolean v3, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 600
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    # getter for: Lcom/android/extrasettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/extrasettings/CredentialStorage;->access$500(Lcom/android/extrasettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 602
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    # getter for: Lcom/android/extrasettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/extrasettings/CredentialStorage;->access$500(Lcom/android/extrasettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 603
    .local v0, "error":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    # setter for: Lcom/android/extrasettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/extrasettings/CredentialStorage;->access$702(Lcom/android/extrasettings/CredentialStorage;I)I

    .line 605
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    const v2, 0x7f0907ea

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 610
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    # invokes: Lcom/android/extrasettings/CredentialStorage;->ensureKeyGuard()V
    invoke-static {v1}, Lcom/android/extrasettings/CredentialStorage;->access$900(Lcom/android/extrasettings/CredentialStorage;)V

    .line 626
    .end local v0    # "error":I
    :cond_0
    :goto_0
    return-void

    .line 611
    .restart local v0    # "error":I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 612
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    # setter for: Lcom/android/extrasettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/extrasettings/CredentialStorage;->access$702(Lcom/android/extrasettings/CredentialStorage;I)I

    .line 613
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    const v2, 0x7f0907e8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 617
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    # invokes: Lcom/android/extrasettings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/extrasettings/CredentialStorage;->access$1000(Lcom/android/extrasettings/CredentialStorage;)V

    goto :goto_0

    .line 618
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    # setter for: Lcom/android/extrasettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v2}, Lcom/android/extrasettings/CredentialStorage;->access$702(Lcom/android/extrasettings/CredentialStorage;I)I

    .line 621
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    # invokes: Lcom/android/extrasettings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/extrasettings/CredentialStorage;->access$1000(Lcom/android/extrasettings/CredentialStorage;)V

    goto :goto_0

    .line 625
    .end local v0    # "error":I
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/extrasettings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/extrasettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 590
    return-void
.end method
