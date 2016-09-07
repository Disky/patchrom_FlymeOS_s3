.class Lcom/android/extrasettings/PersonalSettings$1;
.super Ljava/lang/Object;
.source "PersonalSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/PersonalSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/PersonalSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/PersonalSettings;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/extrasettings/PersonalSettings$1;->this$0:Lcom/android/extrasettings/PersonalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 400
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su\n"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 405
    .local v0, "bos":Ljava/io/OutputStream;
    const-string v2, "busybox pkill -f com.android.launcher3\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 406
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 407
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 408
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su\n"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 409
    const-string v2, "busybox pkill -f com.android.systemui\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 410
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 411
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 412
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su\n"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 413
    const-string v2, "wm density reset\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 414
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 415
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 419
    .end local v0    # "bos":Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 416
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
