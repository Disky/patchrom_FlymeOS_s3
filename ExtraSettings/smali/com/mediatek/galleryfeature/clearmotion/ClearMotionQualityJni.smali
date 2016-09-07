.class public Lcom/mediatek/galleryfeature/clearmotion/ClearMotionQualityJni;
.super Ljava/lang/Object;
.source "ClearMotionQualityJni.java"


# static fields
.field public static sValidLib:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/galleryfeature/clearmotion/ClearMotionQualityJni;->sValidLib:Z

    .line 62
    :try_start_0
    const-string v1, "MJCjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/SecurityException;
    sput-boolean v2, Lcom/mediatek/galleryfeature/clearmotion/ClearMotionQualityJni;->sValidLib:Z

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v2, Lcom/mediatek/galleryfeature/clearmotion/ClearMotionQualityJni;->sValidLib:Z

    goto :goto_0
.end method

.method public static native nativeGetDemoMode()I
.end method

.method public static native nativeGetFallbackIndex()I
.end method

.method public static native nativeGetFallbackRange()I
.end method

.method public static native nativeSetDemoMode(I)Z
.end method

.method public static native nativeSetFallbackIndex(I)Z
.end method
