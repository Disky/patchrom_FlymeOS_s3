.class Lcom/android/extrasettings/AirplaneModeEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/AirplaneModeEnabler;->initListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/AirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/extrasettings/AirplaneModeEnabler$3;->this$0:Lcom/android/extrasettings/AirplaneModeEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllPoweredOff()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler$3;->this$0:Lcom/android/extrasettings/AirplaneModeEnabler;

    # getter for: Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/extrasettings/AirplaneModeEnabler;->access$100(Lcom/android/extrasettings/AirplaneModeEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 97
    return-void
.end method

.method public onAllPoweredOn()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/extrasettings/AirplaneModeEnabler$3;->this$0:Lcom/android/extrasettings/AirplaneModeEnabler;

    # getter for: Lcom/android/extrasettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/extrasettings/AirplaneModeEnabler;->access$100(Lcom/android/extrasettings/AirplaneModeEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 101
    return-void
.end method
