.class Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;
.super Ljava/lang/Object;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoricalNotificationInfo"
.end annotation


# instance fields
.field public active:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public pkg:Ljava/lang/String;

.field public pkgicon:Landroid/graphics/drawable/Drawable;

.field public pkgname:Ljava/lang/CharSequence;

.field public priority:I

.field public timestamp:J

.field public title:Ljava/lang/CharSequence;

.field public user:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/notification/NotificationStation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/notification/NotificationStation$1;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;-><init>()V

    return-void
.end method
