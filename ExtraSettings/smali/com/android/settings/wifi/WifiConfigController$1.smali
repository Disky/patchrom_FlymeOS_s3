.class Lcom/android/extrasettings/wifi/WifiConfigController$1;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/wifi/WifiConfigController;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiConfigController$1;->this$0:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiConfigController$1;->this$0:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1044
    return-void
.end method
