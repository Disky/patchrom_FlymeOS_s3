.class Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;
.super Landroid/os/Handler;
.source "WriteIMEIDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/WriteIMEIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupToBinThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/WriteIMEIDialog;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/WriteIMEIDialog;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;->this$0:Lcom/android/extrasettings/WriteIMEIDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/WriteIMEIDialog;Lcom/android/extrasettings/WriteIMEIDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/WriteIMEIDialog;
    .param p2, "x1"    # Lcom/android/extrasettings/WriteIMEIDialog$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;-><init>(Lcom/android/extrasettings/WriteIMEIDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 186
    const-string v7, "NvRAMBackup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 187
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/extrasettings/NvRAMBackup$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/extrasettings/NvRAMBackup;

    move-result-object v0

    .line 188
    .local v0, "agent":Lcom/android/extrasettings/NvRAMBackup;
    const/4 v6, 0x0

    .line 189
    .local v6, "ret":Z
    const/4 v4, 0x0

    .line 192
    .local v4, "flag":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;->this$0:Lcom/android/extrasettings/WriteIMEIDialog;

    # getter for: Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/extrasettings/WriteIMEIDialog;->access$100(Lcom/android/extrasettings/WriteIMEIDialog;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "begin saveToBin"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface {v0}, Lcom/android/extrasettings/NvRAMBackup;->saveToBin()Z

    move-result v6

    .line 194
    const/4 v4, 0x1

    .line 195
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.mediatek.factorymode.write.success"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v5, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "result"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    iget-object v7, p0, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;->this$0:Lcom/android/extrasettings/WriteIMEIDialog;

    invoke-virtual {v7, v5}, Lcom/android/extrasettings/WriteIMEIDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    iget-object v7, p0, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;->this$0:Lcom/android/extrasettings/WriteIMEIDialog;

    # getter for: Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/extrasettings/WriteIMEIDialog;->access$100(Lcom/android/extrasettings/WriteIMEIDialog;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end saveToBin, return value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "agent":Lcom/android/extrasettings/NvRAMBackup;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "flag":Z
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "ret":Z
    :cond_0
    :goto_0
    return-void

    .line 201
    .restart local v0    # "agent":Lcom/android/extrasettings/NvRAMBackup;
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v4    # "flag":Z
    .restart local v6    # "ret":Z
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.mediatek.factorymode.write.success"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v5    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 204
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v7, "result"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    iget-object v7, p0, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;->this$0:Lcom/android/extrasettings/WriteIMEIDialog;

    invoke-virtual {v7, v5}, Lcom/android/extrasettings/WriteIMEIDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    iget-object v7, p0, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;->this$0:Lcom/android/extrasettings/WriteIMEIDialog;

    # getter for: Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/extrasettings/WriteIMEIDialog;->access$100(Lcom/android/extrasettings/WriteIMEIDialog;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end saveToBin, Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
