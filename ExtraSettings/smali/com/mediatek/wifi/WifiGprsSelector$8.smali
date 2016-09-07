.class Lcom/mediatek/wifi/WifiGprsSelector$8;
.super Ljava/lang/Object;
.source "WifiGprsSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wifi/WifiGprsSelector;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/WifiGprsSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$8;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$8;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mCellConnMgr:Lcom/mediatek/internal/telephony/CellConnMgr;
    invoke-static {v0}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1300(Lcom/mediatek/wifi/WifiGprsSelector;)Lcom/mediatek/internal/telephony/CellConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$8;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mSelectedDataSubId:I
    invoke-static {v1}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1600(Lcom/mediatek/wifi/WifiGprsSelector;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/CellConnMgr;->handleRequest(II)V

    .line 680
    return-void
.end method
