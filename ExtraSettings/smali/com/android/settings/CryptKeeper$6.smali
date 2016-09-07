.class Lcom/android/extrasettings/CryptKeeper$6;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const/4 v1, 0x1

    # invokes: Lcom/android/extrasettings/CryptKeeper;->setPatternButtonsEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/CryptKeeper;->access$2000(Lcom/android/extrasettings/CryptKeeper;Z)V

    .line 746
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    .line 750
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/extrasettings/CryptKeeper;->access$100(Lcom/android/extrasettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 751
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 752
    new-instance v0, Lcom/android/extrasettings/CryptKeeper$DecryptTask;

    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/extrasettings/CryptKeeper;Lcom/android/extrasettings/CryptKeeper$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/extrasettings/CryptKeeper;->access$100(Lcom/android/extrasettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->getLockPatternSize()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/extrasettings/CryptKeeper;->access$100(Lcom/android/extrasettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    # invokes: Lcom/android/extrasettings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/CryptKeeper;->access$2200(Lcom/android/extrasettings/CryptKeeper;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const/4 v1, 0x0

    # invokes: Lcom/android/extrasettings/CryptKeeper;->setPatternButtonsEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/CryptKeeper;->access$2000(Lcom/android/extrasettings/CryptKeeper;Z)V

    .line 740
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/extrasettings/CryptKeeper;->access$100(Lcom/android/extrasettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeper$6;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # getter for: Lcom/android/extrasettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/extrasettings/CryptKeeper;->access$500(Lcom/android/extrasettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 741
    return-void
.end method
