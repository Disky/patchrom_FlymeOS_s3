.class Lcom/android/extrasettings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/android/extrasettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/extrasettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/CryptKeeper;Lcom/android/extrasettings/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/CryptKeeper;
    .param p2, "x1"    # Lcom/android/extrasettings/CryptKeeper$1;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/android/extrasettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/extrasettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    .line 321
    iget-object v2, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # invokes: Lcom/android/extrasettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/extrasettings/CryptKeeper;->access$300(Lcom/android/extrasettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 323
    .local v1, "service":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v2, "CryptKeeper"

    const-string v4, "Validating encryption state."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    iput v2, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->state:I

    .line 325
    iget v2, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->state:I

    if-ne v2, v3, :cond_0

    .line 326
    const-string v2, "CryptKeeper"

    const-string v4, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 332
    :goto_0
    return-object v2

    .line 329
    :cond_0
    iget v2, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->state:I

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    const-string v4, "Unable to get encryption state properly"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    .line 338
    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # setter for: Lcom/android/extrasettings/CryptKeeper;->mValidationComplete:Z
    invoke-static {v1, v0}, Lcom/android/extrasettings/CryptKeeper;->access$602(Lcom/android/extrasettings/CryptKeeper;Z)Z

    .line 339
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    const-string v1, "CryptKeeper"

    const-string v2, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # setter for: Lcom/android/extrasettings/CryptKeeper;->mEncryptionGoneBad:Z
    invoke-static {v1, v0}, Lcom/android/extrasettings/CryptKeeper;->access$702(Lcom/android/extrasettings/CryptKeeper;Z)Z

    .line 342
    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/extrasettings/CryptKeeper;

    iget v2, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->state:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    :goto_0
    # setter for: Lcom/android/extrasettings/CryptKeeper;->mCorrupt:Z
    invoke-static {v1, v0}, Lcom/android/extrasettings/CryptKeeper;->access$802(Lcom/android/extrasettings/CryptKeeper;Z)Z

    .line 346
    :goto_1
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # invokes: Lcom/android/extrasettings/CryptKeeper;->setupUi()V
    invoke-static {v0}, Lcom/android/extrasettings/CryptKeeper;->access$900(Lcom/android/extrasettings/CryptKeeper;)V

    .line 347
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_1
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
