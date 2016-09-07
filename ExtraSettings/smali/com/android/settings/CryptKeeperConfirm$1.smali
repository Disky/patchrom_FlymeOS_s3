.class Lcom/android/extrasettings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/CryptKeeperConfirm;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/extrasettings/CryptKeeperConfirm$1;->this$0:Lcom/android/extrasettings/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v5, p0, Lcom/android/extrasettings/CryptKeeperConfirm$1;->this$0:Lcom/android/extrasettings/CryptKeeperConfirm;

    # getter for: Lcom/android/extrasettings/CryptKeeperConfirm;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/extrasettings/CryptKeeperConfirm;->access$000(Lcom/android/extrasettings/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 109
    iget-object v5, p0, Lcom/android/extrasettings/CryptKeeperConfirm$1;->this$0:Lcom/android/extrasettings/CryptKeeperConfirm;

    # getter for: Lcom/android/extrasettings/CryptKeeperConfirm;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/extrasettings/CryptKeeperConfirm;->access$000(Lcom/android/extrasettings/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "notify.deskclock.reset.alarms"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 129
    :cond_1
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/extrasettings/CryptKeeperConfirm$1;->this$0:Lcom/android/extrasettings/CryptKeeperConfirm;

    invoke-virtual {v5}, Lcom/android/extrasettings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 130
    .local v4, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 131
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 135
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/extrasettings/CryptKeeperConfirm$1;->this$0:Lcom/android/extrasettings/CryptKeeperConfirm;

    invoke-virtual {v5}, Lcom/android/extrasettings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/extrasettings/CryptKeeperConfirm$Blank;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/extrasettings/CryptKeeperConfirm$1;->this$0:Lcom/android/extrasettings/CryptKeeperConfirm;

    invoke-virtual {v5}, Lcom/android/extrasettings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    iget-object v5, p0, Lcom/android/extrasettings/CryptKeeperConfirm$1;->this$0:Lcom/android/extrasettings/CryptKeeperConfirm;

    invoke-virtual {v5, v1}, Lcom/android/extrasettings/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    .line 141
    :try_start_0
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 142
    .local v3, "service":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 143
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v3    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CryptKeeperConfirm"

    const-string v6, "Error storing locale for decryption UI"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
