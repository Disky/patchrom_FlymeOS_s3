.class Lcom/android/extrasettings/DeviceAdminAdd$1;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/extrasettings/DeviceAdminAdd$1;->this$0:Lcom/android/extrasettings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/extrasettings/DeviceAdminAdd$1;->this$0:Lcom/android/extrasettings/DeviceAdminAdd;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 253
    return-void
.end method
