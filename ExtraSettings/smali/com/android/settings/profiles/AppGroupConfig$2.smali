.class Lcom/android/extrasettings/profiles/AppGroupConfig$2;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/profiles/AppGroupConfig;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/profiles/AppGroupConfig;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/extrasettings/profiles/AppGroupConfig$2;->this$0:Lcom/android/extrasettings/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/extrasettings/profiles/AppGroupConfig$2;->this$0:Lcom/android/extrasettings/profiles/AppGroupConfig;

    # invokes: Lcom/android/extrasettings/profiles/AppGroupConfig;->doDelete()V
    invoke-static {v0}, Lcom/android/extrasettings/profiles/AppGroupConfig;->access$200(Lcom/android/extrasettings/profiles/AppGroupConfig;)V

    .line 277
    return-void
.end method