.class Lcom/android/extrasettings/ApnSettings$2;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/ApnSettings;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/extrasettings/ApnSettings$2;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/extrasettings/ApnSettings$2;->this$0:Lcom/android/extrasettings/ApnSettings;

    # invokes: Lcom/android/extrasettings/ApnSettings;->handleResetOrFill()V
    invoke-static {v0}, Lcom/android/extrasettings/ApnSettings;->access$100(Lcom/android/extrasettings/ApnSettings;)V

    .line 135
    return-void
.end method
