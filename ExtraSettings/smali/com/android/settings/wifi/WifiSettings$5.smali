.class Lcom/android/extrasettings/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/extrasettings/widget/SwitchBar$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/extrasettings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiSettings$5;->this$0:Lcom/android/extrasettings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/Switch;I)V
    .locals 2
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "position"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings$5;->this$0:Lcom/android/extrasettings/wifi/WifiSettings;

    # setter for: Lcom/android/extrasettings/wifi/WifiSettings;->mWifiFilterState:I
    invoke-static {v0, p2}, Lcom/android/extrasettings/wifi/WifiSettings;->access$102(Lcom/android/extrasettings/wifi/WifiSettings;I)I

    .line 369
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiSettings$5;->this$0:Lcom/android/extrasettings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiSettings$5;->this$0:Lcom/android/extrasettings/wifi/WifiSettings;

    # getter for: Lcom/android/extrasettings/wifi/WifiSettings;->mAccessPoints:Ljava/util/Collection;
    invoke-static {v1}, Lcom/android/extrasettings/wifi/WifiSettings;->access$200(Lcom/android/extrasettings/wifi/WifiSettings;)Ljava/util/Collection;

    move-result-object v1

    # invokes: Lcom/android/extrasettings/wifi/WifiSettings;->updateAccessPoints(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/wifi/WifiSettings;->access$300(Lcom/android/extrasettings/wifi/WifiSettings;Ljava/util/Collection;)V

    .line 370
    return-void
.end method
