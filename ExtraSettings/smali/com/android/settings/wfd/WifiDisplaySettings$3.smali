.class Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;
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
    .line 442
    iput-object p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$300(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v1, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$302(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Z)Z

    .line 446
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$300(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->startAutoGO()V
    invoke-static {v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$400(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$300(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;->setChecked(Z)V

    .line 452
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->stopAutoGO()V
    invoke-static {v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$500(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
