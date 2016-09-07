.class public Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# static fields
.field private static final EXTRA_APP:Ljava/lang/String; = "app"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1999
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/extrasettings/DataUsageSummary;Lcom/android/extrasettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "parent"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "app"    # Lcom/android/extrasettings/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 2003
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2017
    :goto_0
    return-void

    .line 2005
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2006
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2008
    new-instance v1, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 2009
    .local v1, "fragment":Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2010
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2011
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2012
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2013
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2014
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0908a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 2016
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 2039
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2040
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/DataUsageSummary;

    .line 2041
    .local v0, "target":Lcom/android/extrasettings/DataUsageSummary;
    invoke-virtual {v0}, Lcom/android/extrasettings/DataUsageSummary;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$200(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2042
    const-string v1, "DataUsage"

    const-string v2, "Overview tab and finish activity"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 2045
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 2021
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2022
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/DataUsageSummary;

    .line 2023
    .local v0, "target":Lcom/android/extrasettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/DataUsageSummary$AppItem;

    # setter for: Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/extrasettings/DataUsageSummary;->access$3502(Lcom/android/extrasettings/DataUsageSummary;Lcom/android/extrasettings/DataUsageSummary$AppItem;)Lcom/android/extrasettings/DataUsageSummary$AppItem;

    .line 2024
    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$100(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 2025
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2029
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2030
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/DataUsageSummary;

    .line 2031
    .local v0, "target":Lcom/android/extrasettings/DataUsageSummary;
    const/4 v1, 0x0

    # setter for: Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/extrasettings/DataUsageSummary;->access$3502(Lcom/android/extrasettings/DataUsageSummary;Lcom/android/extrasettings/DataUsageSummary$AppItem;)Lcom/android/extrasettings/DataUsageSummary$AppItem;

    .line 2032
    # invokes: Lcom/android/extrasettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->access$100(Lcom/android/extrasettings/DataUsageSummary;)V

    .line 2033
    return-void
.end method
