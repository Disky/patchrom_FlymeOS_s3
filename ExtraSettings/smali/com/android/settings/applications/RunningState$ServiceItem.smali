.class Lcom/android/extrasettings/applications/RunningState$ServiceItem;
.super Lcom/android/extrasettings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceItem"
.end annotation


# instance fields
.field mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

.field mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

.field mServiceInfo:Landroid/content/pm/ServiceInfo;

.field mShownAsStarted:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/extrasettings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 345
    return-void
.end method