.class public interface abstract Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
.super Ljava/lang/Object;
.source "IDataUsageSummaryExt.java"


# virtual methods
.method public abstract customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract customizeDataConnectionObserver(Landroid/app/Activity;Landroid/database/ContentObserver;)V
.end method

.method public abstract customizeMobileDataSummary(Landroid/view/View;Landroid/view/View;I)V
.end method

.method public abstract customizeTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
.end method

.method public abstract customizeTextViewBackgroundResource(ILandroid/widget/TextView;)V
.end method

.method public abstract customizeUnregisterDataConnectionObserver(Landroid/app/Activity;Landroid/database/ContentObserver;)V
.end method

.method public abstract needToShowDialog()Z
.end method

.method public abstract setDataEnableClickListener(Landroid/app/Activity;Landroid/view/View;Landroid/widget/Switch;Landroid/content/DialogInterface$OnClickListener;)Z
.end method

.method public abstract setDataEnableClickListener(Landroid/app/Activity;Landroid/view/View;Landroid/widget/Switch;Landroid/view/View$OnClickListener;)Z
.end method
