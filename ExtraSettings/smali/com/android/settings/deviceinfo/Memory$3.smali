.class Lcom/android/extrasettings/deviceinfo/Memory$3;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/Memory$3;->this$0:Lcom/android/extrasettings/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory$3;->this$0:Lcom/android/extrasettings/deviceinfo/Memory;

    # invokes: Lcom/android/extrasettings/deviceinfo/Memory;->doUnmount()V
    invoke-static {v0}, Lcom/android/extrasettings/deviceinfo/Memory;->access$300(Lcom/android/extrasettings/deviceinfo/Memory;)V

    .line 319
    return-void
.end method
