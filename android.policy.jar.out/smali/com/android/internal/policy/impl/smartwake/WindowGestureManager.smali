.class public Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;
.super Ljava/lang/Object;
.source "WindowGestureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowGestureManager"

.field private static mGestureFileString:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWindowGestureView:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mContext:Landroid/content/Context;

    .line 21
    const-string v0, "WindowGestureManager"

    const-string v1, "init   -----WindowGestureManager----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->searchGestureFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mGestureFileString:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static getGestureFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mGestureFileString:Ljava/lang/String;

    return-object v0
.end method

.method private searchGestureFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 29
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gesture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    aget-object v3, v1, v2

    .line 33
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return-object v3

    .line 28
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private writeOffScreenGestureState(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 67
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mGestureFileString:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mGestureFileString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gesture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 73
    .local v2, "mWriter":Ljava/io/FileWriter;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 75
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mWriter":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t open gesture device"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mWindowGestureView:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->hideView()V

    .line 46
    return-void
.end method

.method public initGestureView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mWindowGestureView:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    .line 50
    return-void
.end method

.method public onSystemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const-string v0, "WindowGestureManager"

    const-string v1, "-----WindowGestureManager  onSystemReady----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->initGestureView(Landroid/content/Context;)V

    .line 57
    const-string v0, "persist.sys.smartwake_switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 58
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->writeOffScreenGestureState(I)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->writeOffScreenGestureState(I)V

    goto :goto_0
.end method

.method public show(I)V
    .locals 1
    .param p1, "gesture"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureManager;->mWindowGestureView:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->showView(I)V

    .line 42
    return-void
.end method
