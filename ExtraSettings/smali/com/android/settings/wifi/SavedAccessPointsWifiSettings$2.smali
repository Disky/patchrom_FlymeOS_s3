.class Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings$2;
.super Landroid/database/ContentObserver;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings$2;->this$0:Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings$2;->this$0:Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;

    # getter for: Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/extrasettings/DraggableSortListView;
    invoke-static {v0}, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;->access$500(Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;)Lcom/android/extrasettings/DraggableSortListView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings$2;->this$0:Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;

    # invokes: Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;->isAutoConfigPriorities()Z
    invoke-static {v0}, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;->access$300(Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/extrasettings/DraggableSortListView;->setDropListener(Lcom/android/extrasettings/DraggableSortListView$DropListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings$2;->this$0:Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 108
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings$2;->this$0:Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;

    # getter for: Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/extrasettings/DraggableSortListView$DropListener;
    invoke-static {v0}, Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;->access$400(Lcom/android/extrasettings/wifi/SavedAccessPointsWifiSettings;)Lcom/android/extrasettings/DraggableSortListView$DropListener;

    move-result-object v0

    goto :goto_0
.end method
