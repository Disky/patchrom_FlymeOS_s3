.class public Lcom/v/common/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private mAppIcon:Ljava/lang/Object;

.field private mAppName:Ljava/lang/String;

.field private mMainActivityName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppIcon()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/v/common/AppInfo;->mAppIcon:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/v/common/AppInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getMainActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/v/common/AppInfo;->mMainActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/v/common/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppIcon(Ljava/lang/Object;)V
    .locals 0
    .param p1, "appIcon"    # Ljava/lang/Object;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/v/common/AppInfo;->mAppIcon:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/v/common/AppInfo;->mAppName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setMainActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mainActivityName"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/v/common/AppInfo;->mMainActivityName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/v/common/AppInfo;->mPackageName:Ljava/lang/String;

    .line 40
    return-void
.end method
