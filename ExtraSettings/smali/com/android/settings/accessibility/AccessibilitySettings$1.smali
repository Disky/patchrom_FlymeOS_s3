.class Lcom/android/extrasettings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/extrasettings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/extrasettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/extrasettings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/extrasettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/extrasettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/android/extrasettings/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/extrasettings/accessibility/AccessibilitySettings;->access$000(Lcom/android/extrasettings/accessibility/AccessibilitySettings;)V

    .line 148
    iget-object v0, p0, Lcom/android/extrasettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/extrasettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/android/extrasettings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/extrasettings/accessibility/AccessibilitySettings;->access$100(Lcom/android/extrasettings/accessibility/AccessibilitySettings;)V

    .line 149
    return-void
.end method
