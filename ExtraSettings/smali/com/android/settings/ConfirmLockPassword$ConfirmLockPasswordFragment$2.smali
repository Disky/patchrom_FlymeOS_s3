.class Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I
    invoke-static {v1}, Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$200(Lcom/android/extrasettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    return-void
.end method
