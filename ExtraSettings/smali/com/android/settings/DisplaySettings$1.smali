.class Lcom/android/extrasettings/DisplaySettings$1;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/extrasettings/DisplaySettings$1;->this$0:Lcom/android/extrasettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings$1;->this$0:Lcom/android/extrasettings/DisplaySettings;

    # invokes: Lcom/android/extrasettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V
    invoke-static {v0}, Lcom/android/extrasettings/DisplaySettings;->access$000(Lcom/android/extrasettings/DisplaySettings;)V

    .line 140
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings$1;->this$0:Lcom/android/extrasettings/DisplaySettings;

    # invokes: Lcom/android/extrasettings/DisplaySettings;->updateAccelerometerRotationSwitch()V
    invoke-static {v0}, Lcom/android/extrasettings/DisplaySettings;->access$100(Lcom/android/extrasettings/DisplaySettings;)V

    .line 141
    return-void
.end method
