.class public Lcom/mediatek/settings/ext/DefaultPermissionControlExt;
.super Landroid/content/ContextWrapper;
.source "DefaultPermissionControlExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IPermissionControlExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultPermissionControlExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public addAutoBootPrf(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 31
    const-string v0, "DefaultPermissionControlExt"

    const-string v1, "will not add auto boot entry preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 19
    const-string v0, "DefaultPermissionControlExt"

    const-string v1, "will not add permission preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public enablerPause()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "DefaultPermissionControlExt"

    const-string v1, "enablerPause() default"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public enablerResume()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "DefaultPermissionControlExt"

    const-string v1, "enablerResume() default"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public getRawDataToIndex(Z)Ljava/util/List;
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "DefaultPermissionControlExt"

    const-string v1, "default , null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method