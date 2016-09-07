.class Lcom/v/gesture/GestureSettings$2;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v/gesture/GestureSettings;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/v/gesture/GestureSettings;


# direct methods
.method constructor <init>(Lcom/v/gesture/GestureSettings;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/v/gesture/GestureSettings$2;->this$0:Lcom/v/gesture/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 302
    :cond_0
    return-void
.end method
