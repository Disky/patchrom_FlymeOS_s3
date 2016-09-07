.class public Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAppRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2428
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 2430
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2435
    :goto_0
    return-void

    .line 2432
    :cond_0
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {v0}, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;-><init>()V

    .line 2433
    .local v0, "dialog":Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2434
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAppRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2439
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2442
    .local v1, "context":Landroid/content/Context;
    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->access$1200()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v4

    const v5, 0x7f0908d9

    invoke-virtual {p0, v5}, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bgDataDialogTitle"

    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2444
    .local v3, "dialogTitle":Ljava/lang/String;
    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->access$1200()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v4

    const v5, 0x7f0908da

    invoke-virtual {p0, v5}, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bgDataDialogMessage"

    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2447
    .local v2, "dialogMessage":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2448
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2449
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2452
    const v4, 0x104000a

    new-instance v5, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment$1;

    invoke-direct {v5, p0}, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment$1;-><init>(Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2461
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
