.class Lcom/android/extrasettings/ApnSettings$2;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/ApnSettings;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/extrasettings/ApnSettings$2;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRcseOnlyApnStateChanged(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 155
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRcseOnlyApnStateChanged()-current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings$2;->this$0:Lcom/android/extrasettings/ApnSettings;

    # getter for: Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;
    invoke-static {v0}, Lcom/android/extrasettings/ApnSettings;->access$300(Lcom/android/extrasettings/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings$2;->this$0:Lcom/android/extrasettings/ApnSettings;

    # invokes: Lcom/android/extrasettings/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/extrasettings/ApnSettings;->access$200(Lcom/android/extrasettings/ApnSettings;)V

    .line 160
    :cond_0
    return-void
.end method
