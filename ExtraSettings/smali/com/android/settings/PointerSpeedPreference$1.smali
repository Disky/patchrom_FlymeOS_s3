.class Lcom/android/extrasettings/PointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/PointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/extrasettings/PointerSpeedPreference$1;->this$0:Lcom/android/extrasettings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/extrasettings/PointerSpeedPreference$1;->this$0:Lcom/android/extrasettings/PointerSpeedPreference;

    # invokes: Lcom/android/extrasettings/PointerSpeedPreference;->onSpeedChanged()V
    invoke-static {v0}, Lcom/android/extrasettings/PointerSpeedPreference;->access$000(Lcom/android/extrasettings/PointerSpeedPreference;)V

    .line 47
    return-void
.end method