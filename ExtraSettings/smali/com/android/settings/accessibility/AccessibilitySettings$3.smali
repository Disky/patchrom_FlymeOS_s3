.class Lcom/android/extrasettings/accessibility/AccessibilitySettings$3;
.super Lcom/android/extrasettings/accessibility/SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/extrasettings/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/extrasettings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/extrasettings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/extrasettings/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/extrasettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/android/extrasettings/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/extrasettings/accessibility/AccessibilitySettings;->access$000(Lcom/android/extrasettings/accessibility/AccessibilitySettings;)V

    .line 165
    iget-object v0, p0, Lcom/android/extrasettings/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/extrasettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/android/extrasettings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/extrasettings/accessibility/AccessibilitySettings;->access$100(Lcom/android/extrasettings/accessibility/AccessibilitySettings;)V

    .line 166
    return-void
.end method
