.class Lcom/android/extrasettings/wifi/WifiApDialog$2;
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
    .line 258
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiApDialog$2;->this$0:Lcom/android/extrasettings/wifi/WifiApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 260
    if-nez p3, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog$2;->this$0:Lcom/android/extrasettings/wifi/WifiApDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelWidth:I
    invoke-static {v0, v1}, Lcom/android/extrasettings/wifi/WifiApDialog;->access$202(Lcom/android/extrasettings/wifi/WifiApDialog;I)I

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiApDialog$2;->this$0:Lcom/android/extrasettings/wifi/WifiApDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/extrasettings/wifi/WifiApDialog;->mChannelWidth:I
    invoke-static {v0, v1}, Lcom/android/extrasettings/wifi/WifiApDialog;->access$202(Lcom/android/extrasettings/wifi/WifiApDialog;I)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 267
    return-void
.end method
