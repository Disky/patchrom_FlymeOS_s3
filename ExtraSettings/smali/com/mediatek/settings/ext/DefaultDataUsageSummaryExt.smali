.class public Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;
.super Ljava/lang/Object;
.source "DefaultDataUsageSummaryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IDataUsageSummaryExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "defStr"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 20
    return-object p1
.end method

.method public customizeDataConnectionObserver(Landroid/app/Activity;Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mDataConnectionObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 42
    return-void
.end method

.method public customizeMobileDataSummary(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "titleView"    # Landroid/view/View;
    .param p3, "slotId"    # I

    .prologue
    .line 37
    return-void
.end method

.method public customizeTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "tab"    # Landroid/widget/TabHost$TabSpec;
    .param p4, "tabWidget"    # Landroid/widget/TabWidget;
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 30
    return-object p3
.end method

.method public customizeTextViewBackgroundResource(ILandroid/widget/TextView;)V
    .locals 0
    .param p1, "simColor"    # I
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 25
    return-void
.end method

.method public customizeUnregisterDataConnectionObserver(Landroid/app/Activity;Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mDataConnectionObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 47
    return-void
.end method

.method public needToShowDialog()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public setDataEnableClickListener(Landroid/app/Activity;Landroid/view/View;Landroid/widget/Switch;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dataEnabledView"    # Landroid/view/View;
    .param p3, "dataEnabled"    # Landroid/widget/Switch;
    .param p4, "dataEnabledDialogListerner"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public setDataEnableClickListener(Landroid/app/Activity;Landroid/view/View;Landroid/widget/Switch;Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dataEnabledView"    # Landroid/view/View;
    .param p3, "dataEnabled"    # Landroid/widget/Switch;
    .param p4, "dataEnabledDialogListerner"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
