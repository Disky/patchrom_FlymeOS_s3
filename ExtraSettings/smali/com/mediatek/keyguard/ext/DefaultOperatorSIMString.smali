.class public Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;
.super Ljava/lang/Object;
.source "DefaultOperatorSIMString.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/IOperatorSIMString;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.keyguard.ext.IOperatorSIMString"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/keyguard/ext/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p1, "sourceStr"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "simChangedTag"    # Lcom/mediatek/keyguard/ext/IOperatorSIMString$SIMChangedTag;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    return-object p1
.end method

.method public getOperatorSIMStringForSIMDetection(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p1, "sourceStr"    # Ljava/lang/String;
    .param p2, "newSimSlot"    # I
    .param p3, "newSimNumber"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    return-object p1
.end method
