.class Lcom/android/extrasettings/TrustedCredentialsSettings$5;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$5;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$5;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 693
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$5;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/extrasettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 694
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->access$3200(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 695
    const v2, 0x1040013

    new-instance v3, Lcom/android/extrasettings/TrustedCredentialsSettings$5$1;

    invoke-direct {v3, p0}, Lcom/android/extrasettings/TrustedCredentialsSettings$5$1;-><init>(Lcom/android/extrasettings/TrustedCredentialsSettings$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 703
    const v2, 0x1040009

    new-instance v3, Lcom/android/extrasettings/TrustedCredentialsSettings$5$2;

    invoke-direct {v3, p0}, Lcom/android/extrasettings/TrustedCredentialsSettings$5$2;-><init>(Lcom/android/extrasettings/TrustedCredentialsSettings$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 709
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 710
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 711
    return-void
.end method
