.class Lcom/android/extrasettings/notification/ZenModeSettings$11$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/notification/ZenModeSettings$11;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/extrasettings/notification/ZenModeSettings$11;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/notification/ZenModeSettings$11;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/extrasettings/notification/ZenModeSettings$11$1;->this$1:Lcom/android/extrasettings/notification/ZenModeSettings$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings$11$1;->this$1:Lcom/android/extrasettings/notification/ZenModeSettings$11;

    iget-object v0, v0, Lcom/android/extrasettings/notification/ZenModeSettings$11;->this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

    # invokes: Lcom/android/extrasettings/notification/ZenModeSettings;->refreshAutomationSection()V
    invoke-static {v0}, Lcom/android/extrasettings/notification/ZenModeSettings;->access$600(Lcom/android/extrasettings/notification/ZenModeSettings;)V

    .line 345
    return-void
.end method
