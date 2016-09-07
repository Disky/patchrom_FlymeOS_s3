.class Lcom/v/otouchpad/OTouchpadSettings$1;
.super Ljava/lang/Object;
.source "OTouchpadSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v/otouchpad/OTouchpadSettings;->showOTouchpadCameraHelpDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/v/otouchpad/OTouchpadSettings;


# direct methods
.method constructor <init>(Lcom/v/otouchpad/OTouchpadSettings;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/v/otouchpad/OTouchpadSettings$1;->this$0:Lcom/v/otouchpad/OTouchpadSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    :cond_0
    return-void
.end method
