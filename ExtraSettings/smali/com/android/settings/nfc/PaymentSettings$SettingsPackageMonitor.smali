.class Lcom/android/extrasettings/nfc/PaymentSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/nfc/PaymentSettings;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/nfc/PaymentSettings;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/extrasettings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/extrasettings/nfc/PaymentSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/nfc/PaymentSettings;Lcom/android/extrasettings/nfc/PaymentSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/nfc/PaymentSettings;
    .param p2, "x1"    # Lcom/android/extrasettings/nfc/PaymentSettings$1;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/extrasettings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/extrasettings/nfc/PaymentSettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/extrasettings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/extrasettings/nfc/PaymentSettings;

    # getter for: Lcom/android/extrasettings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/extrasettings/nfc/PaymentSettings;->access$100(Lcom/android/extrasettings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/extrasettings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/extrasettings/nfc/PaymentSettings;

    # getter for: Lcom/android/extrasettings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/extrasettings/nfc/PaymentSettings;->access$100(Lcom/android/extrasettings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 191
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/extrasettings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/extrasettings/nfc/PaymentSettings;

    # getter for: Lcom/android/extrasettings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/extrasettings/nfc/PaymentSettings;->access$100(Lcom/android/extrasettings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/extrasettings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/extrasettings/nfc/PaymentSettings;

    # getter for: Lcom/android/extrasettings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/extrasettings/nfc/PaymentSettings;->access$100(Lcom/android/extrasettings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method
