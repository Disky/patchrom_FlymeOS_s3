.class Lcom/android/extrasettings/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/extrasettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/CryptKeeper;)V
    .locals 1

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/CryptKeeper$4;->passwordType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 510
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/CryptKeeper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # invokes: Lcom/android/extrasettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/extrasettings/CryptKeeper;->access$300(Lcom/android/extrasettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 519
    .local v1, "service":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/extrasettings/CryptKeeper$4;->passwordType:I

    .line 520
    const-string v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    .line 521
    const-string v2, "0"

    const-string v3, "PatternVisible"

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/extrasettings/CryptKeeper$4;->pattern_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 521
    .restart local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 522
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/CryptKeeper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 531
    iget v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->passwordType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 532
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const v5, 0x7f040032

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/CryptKeeper;->setContentView(I)V

    .line 533
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const v5, 0x7f090864

    # setter for: Lcom/android/extrasettings/CryptKeeper;->mStatusString:I
    invoke-static {v4, v5}, Lcom/android/extrasettings/CryptKeeper;->access$1202(Lcom/android/extrasettings/CryptKeeper;I)I

    .line 542
    :goto_0
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const v5, 0x7f100028

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 543
    .local v1, "status":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mStatusString:I
    invoke-static {v4}, Lcom/android/extrasettings/CryptKeeper;->access$1200(Lcom/android/extrasettings/CryptKeeper;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 545
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const v5, 0x7f10006a

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 546
    .local v0, "ownerInfo":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 549
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # invokes: Lcom/android/extrasettings/CryptKeeper;->passwordEntryInit()V
    invoke-static {v4}, Lcom/android/extrasettings/CryptKeeper;->access$1400(Lcom/android/extrasettings/CryptKeeper;)V

    .line 551
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/extrasettings/CryptKeeper;->access$100(Lcom/android/extrasettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 552
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/extrasettings/CryptKeeper;->access$100(Lcom/android/extrasettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/extrasettings/CryptKeeper$4;->pattern_visible:Z

    if-nez v5, :cond_4

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mCooldown:Z
    invoke-static {v2}, Lcom/android/extrasettings/CryptKeeper;->access$1500(Lcom/android/extrasettings/CryptKeeper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    iget-object v2, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # invokes: Lcom/android/extrasettings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v2, v3}, Lcom/android/extrasettings/CryptKeeper;->access$1300(Lcom/android/extrasettings/CryptKeeper;Z)V

    .line 557
    iget-object v2, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # invokes: Lcom/android/extrasettings/CryptKeeper;->cooldown()V
    invoke-static {v2}, Lcom/android/extrasettings/CryptKeeper;->access$1600(Lcom/android/extrasettings/CryptKeeper;)V

    .line 560
    :cond_1
    return-void

    .line 534
    .end local v0    # "ownerInfo":Landroid/widget/TextView;
    .end local v1    # "status":Landroid/widget/TextView;
    :cond_2
    iget v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->passwordType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 535
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const v5, 0x7f040030

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/CryptKeeper;->setContentView(I)V

    .line 536
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # invokes: Lcom/android/extrasettings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v4, v3}, Lcom/android/extrasettings/CryptKeeper;->access$1300(Lcom/android/extrasettings/CryptKeeper;Z)V

    .line 537
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const v5, 0x7f090865

    # setter for: Lcom/android/extrasettings/CryptKeeper;->mStatusString:I
    invoke-static {v4, v5}, Lcom/android/extrasettings/CryptKeeper;->access$1202(Lcom/android/extrasettings/CryptKeeper;I)I

    goto :goto_0

    .line 539
    :cond_3
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const v5, 0x7f04002e

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/CryptKeeper;->setContentView(I)V

    .line 540
    iget-object v4, p0, Lcom/android/extrasettings/CryptKeeper$4;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const v5, 0x7f090863

    # setter for: Lcom/android/extrasettings/CryptKeeper;->mStatusString:I
    invoke-static {v4, v5}, Lcom/android/extrasettings/CryptKeeper;->access$1202(Lcom/android/extrasettings/CryptKeeper;I)I

    goto :goto_0

    .restart local v0    # "ownerInfo":Landroid/widget/TextView;
    .restart local v1    # "status":Landroid/widget/TextView;
    :cond_4
    move v2, v3

    .line 552
    goto :goto_1
.end method
