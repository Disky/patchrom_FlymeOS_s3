.class Lcom/android/extrasettings/CryptKeeper$1;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/extrasettings/CryptKeeper$1;->this$0:Lcom/android/extrasettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/extrasettings/CryptKeeper$1;->this$0:Lcom/android/extrasettings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/extrasettings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/CryptKeeper;->access$000(Lcom/android/extrasettings/CryptKeeper;Ljava/lang/Integer;)V

    .line 157
    return-void
.end method
