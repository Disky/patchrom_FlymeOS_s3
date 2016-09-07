.class Lcom/android/extrasettings/notification/NotificationStation$3;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/extrasettings/notification/NotificationStation$3;->this$0:Lcom/android/extrasettings/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;
    .param p2, "rhs"    # Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;

    .prologue
    .line 112
    iget-wide v0, p2, Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget-wide v2, p1, Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 108
    check-cast p1, Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;

    check-cast p2, Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/extrasettings/notification/NotificationStation$3;->compare(Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;Lcom/android/extrasettings/notification/NotificationStation$HistoricalNotificationInfo;)I

    move-result v0

    return v0
.end method
