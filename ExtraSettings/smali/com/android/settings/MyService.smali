.class public Lcom/android/extrasettings/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# instance fields
.field receiver:Lcom/android/extrasettings/IncomingCall;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/MyService;->receiver:Lcom/android/extrasettings/IncomingCall;

    .line 12
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    new-instance v1, Lcom/android/extrasettings/IncomingCall;

    invoke-direct {v1}, Lcom/android/extrasettings/IncomingCall;-><init>()V

    iput-object v1, p0, Lcom/android/extrasettings/MyService;->receiver:Lcom/android/extrasettings/IncomingCall;

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 25
    .local v0, "theFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/android/extrasettings/MyService;->receiver:Lcom/android/extrasettings/IncomingCall;

    invoke-virtual {p0, v1, v0}, Lcom/android/extrasettings/MyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 32
    iget-object v0, p0, Lcom/android/extrasettings/MyService;->receiver:Lcom/android/extrasettings/IncomingCall;

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/MyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    return-void
.end method
