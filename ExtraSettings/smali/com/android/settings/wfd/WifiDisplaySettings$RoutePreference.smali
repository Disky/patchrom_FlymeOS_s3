.class Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    const v4, 0x7f09034c

    const/4 v3, 0x6

    .line 732
    iput-object p1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    .line 733
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 735
    iput-object p3, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 737
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 739
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set route summary as description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 741
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setEnabled(Z)V

    .line 742
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 743
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 744
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is selected and connecting"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const v0, 0x7f09034b

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    .line 777
    :cond_0
    :goto_1
    invoke-virtual {p0, p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 778
    return-void

    .line 737
    :cond_1
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 747
    :cond_2
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 748
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is selected and connected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {p0, v4}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_1

    .line 753
    :cond_3
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is selected but no connecting and no connected, just show wireless display"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const v0, 0x10405da

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_1

    .line 757
    :cond_4
    invoke-virtual {p0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 758
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is unselected and enabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 761
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 762
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is unselected but connected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p0, v4}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_1

    .line 766
    :cond_5
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is unselected and disabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 768
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 769
    const-string v0, "WifiDisplaySettings"

    const-string v1, "route status code is STATUS_IN_USE"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const v0, 0x7f09034d

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_1

    .line 772
    :cond_6
    const-string v0, "WifiDisplaySettings"

    const-string v1, "route status code is not available"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const v0, 0x7f09034e

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/extrasettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/extrasettings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    # invokes: Lcom/android/extrasettings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/extrasettings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 783
    const/4 v0, 0x1

    return v0
.end method
