.class Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)V

    .line 705
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)V

    .line 710
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)V

    .line 715
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)V

    .line 720
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/extrasettings/wfd/WifiDisplaySettings;I)V

    .line 725
    return-void
.end method
