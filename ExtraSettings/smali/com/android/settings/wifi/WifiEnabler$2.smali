.class Lcom/android/extrasettings/wifi/WifiEnabler$2;
.super Landroid/os/Handler;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wifi/WifiEnabler;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiEnabler$2;->this$0:Lcom/android/extrasettings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 89
    .local v0, "isWiFiOn":Z
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler$2;->this$0:Lcom/android/extrasettings/wifi/WifiEnabler;

    # getter for: Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/extrasettings/wifi/WifiEnabler;->access$300(Lcom/android/extrasettings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/extrasettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/search/Index;

    move-result-object v1

    const-class v2, Lcom/android/extrasettings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/extrasettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
