.class Lcom/android/extrasettings/wifi/WifiApDialog$1;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/wifi/WifiApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wifi/WifiApDialog;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiApDialog$1;->this$0:Lcom/android/extrasettings/wifi/WifiApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 239
    if-nez p3, :cond_0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApDialog$1;->this$0:Lcom/android/extrasettings/wifi/WifiApDialog;

    const/4 v2, 0x0

    # setter for: Lcom/android/extrasettings/wifi/WifiApDialog;->mChannel:I
    invoke-static {v1, v2}, Lcom/android/extrasettings/wifi/WifiApDialog;->access$002(Lcom/android/extrasettings/wifi/WifiApDialog;I)I

    .line 248
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiApDialog$1;->this$0:Lcom/android/extrasettings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiApDialog$1;->this$0:Lcom/android/extrasettings/wifi/WifiApDialog;

    # getter for: Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/extrasettings/wifi/WifiApDialog;->access$100(Lcom/android/extrasettings/wifi/WifiApDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/extrasettings/wifi/WifiApDialog;->mChannel:I
    invoke-static {v1, v2}, Lcom/android/extrasettings/wifi/WifiApDialog;->access$002(Lcom/android/extrasettings/wifi/WifiApDialog;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 250
    return-void
.end method
