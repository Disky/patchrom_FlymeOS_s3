.class Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$2;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$2;->this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$2;->this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    # invokes: Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->updateSwitch()V
    invoke-static {v0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->access$100(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)V

    .line 167
    return-void
.end method