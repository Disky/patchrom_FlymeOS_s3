.class Lcom/android/extrasettings/wifi/WifiSettings$2;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiSettings$2;->this$0:Lcom/android/extrasettings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings$2;->this$0:Lcom/android/extrasettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 277
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 278
    const v1, 0x7f0903d2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 282
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings$2;->this$0:Lcom/android/extrasettings/wifi/WifiSettings;

    # getter for: Lcom/android/extrasettings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/wifi/WifiSettingsExt;
    invoke-static {v0}, Lcom/android/extrasettings/wifi/WifiSettings;->access$100(Lcom/android/extrasettings/wifi/WifiSettings;)Lcom/mediatek/wifi/WifiSettingsExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wifi/WifiSettingsExt;->updatePriority()V

    .line 273
    return-void
.end method
