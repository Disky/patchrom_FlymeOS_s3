.class public Lcom/android/extrasettings/DateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DateChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 10
    invoke-static {}, Lcom/android/extrasettings/DateTimeSettings;->updateLocaleStrings()V

    .line 11
    return-void
.end method
