.class Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$3;
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
    .line 170
    iput-object p1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$3;->this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$3$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$3$1;-><init>(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$3;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method
