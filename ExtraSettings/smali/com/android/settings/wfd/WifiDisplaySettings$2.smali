.class Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;
.super Landroid/preference/SwitchPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$100(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v1, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$102(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Z)Z

    .line 433
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$100(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Z

    move-result v1

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->setListenMode(Z)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$200(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Z)V

    .line 434
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$100(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$2;->setChecked(Z)V

    .line 435
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
