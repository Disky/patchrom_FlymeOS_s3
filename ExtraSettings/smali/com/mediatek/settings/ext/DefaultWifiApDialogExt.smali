.class public Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;
.super Ljava/lang/Object;
.source "DefaultWifiApDialogExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiApDialogExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiApDialogExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecurityType(I)I
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 17
    return p1
.end method

.method public getSelection(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 14
    return p1
.end method

.method public setAdapter(Landroid/content/Context;Landroid/widget/Spinner;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "arrayId"    # I

    .prologue
    .line 12
    return-void
.end method
