.class public Lcom/mediatek/keyguard/ext/DefaultCustomizeClock;
.super Ljava/lang/Object;
.source "DefaultCustomizeClock.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/ICustomizeClock;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.keyguard.ext.ICustomizeClock"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultCustomizeClock"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public addCustomizeClock(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clockContainer"    # Landroid/view/ViewGroup;
    .param p3, "statusArea"    # Landroid/view/ViewGroup;

    .prologue
    .line 22
    const-string v0, "DefaultCustomizeClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCustomizeClock context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clockContainer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public updateClockLayout()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
