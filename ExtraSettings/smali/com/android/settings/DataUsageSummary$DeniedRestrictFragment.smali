.class public Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeniedRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2395
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 2397
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2402
    :goto_0
    return-void

    .line 2399
    :cond_0
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;

    invoke-direct {v0}, Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;-><init>()V

    .line 2400
    .local v0, "dialog":Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2401
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deniedRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2406
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2408
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2410
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->access$1200()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v4

    const v5, 0x7f0908d6

    invoke-virtual {p0, v5}, Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bgDataSwitch"

    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2412
    .local v3, "deniedRestrictBgDataTitle":Ljava/lang/String;
    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->access$1200()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v4

    const v5, 0x7f0908db

    invoke-virtual {p0, v5}, Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bgDataRestrictDenyMessage"

    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2416
    .local v2, "deniedRestrictBgDataMessage":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2417
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2418
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
