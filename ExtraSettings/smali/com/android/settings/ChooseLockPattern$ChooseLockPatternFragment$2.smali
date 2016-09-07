.class Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/extrasettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 319
    return-void
.end method
