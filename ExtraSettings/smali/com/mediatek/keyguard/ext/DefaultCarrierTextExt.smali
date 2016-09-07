.class public Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;
.super Ljava/lang/Object;
.source "DefaultCarrierTextExt.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/ICarrierTextExt;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.keyguard.ext.ICarrierTextExt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeCarrierText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "carrierText"    # Ljava/lang/CharSequence;
    .param p2, "simMessage"    # Ljava/lang/CharSequence;
    .param p3, "simId"    # I

    .prologue
    .line 22
    return-object p1
.end method

.method public customizeCarrierTextCapital(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "carrierText"    # Ljava/lang/CharSequence;

    .prologue
    .line 14
    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public customizeCarrierTextWhenCardTypeLocked(Ljava/lang/CharSequence;Landroid/content/Context;IZ)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "carrierText"    # Ljava/lang/CharSequence;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I
    .param p4, "isCardLocked"    # Z

    .prologue
    .line 50
    return-object p1
.end method

.method public showCarrierTextWhenSimMissing(ZI)Z
    .locals 0
    .param p1, "isSimMissing"    # Z
    .param p2, "simId"    # I

    .prologue
    .line 27
    return p1
.end method
