.class Lcom/android/extrasettings/CryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/extrasettings/CryptKeeperSettings$2;->this$0:Lcom/android/extrasettings/CryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeperSettings$2;->this$0:Lcom/android/extrasettings/CryptKeeperSettings;

    const/16 v1, 0x37

    # invokes: Lcom/android/extrasettings/CryptKeeperSettings;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/extrasettings/CryptKeeperSettings;->access$300(Lcom/android/extrasettings/CryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeperSettings$2;->this$0:Lcom/android/extrasettings/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/extrasettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09029d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09029e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 93
    :cond_0
    return-void
.end method
