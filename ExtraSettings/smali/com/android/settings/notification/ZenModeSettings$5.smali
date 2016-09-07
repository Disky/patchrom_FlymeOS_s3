.class Lcom/android/extrasettings/notification/ZenModeSettings$5;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/extrasettings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/extrasettings/notification/ZenModeSettings$5;->this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 208
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings$5;->this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

    # getter for: Lcom/android/extrasettings/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/extrasettings/notification/ZenModeSettings;->access$000(Lcom/android/extrasettings/notification/ZenModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 209
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 210
    .local v1, "val":I
    iget-object v3, p0, Lcom/android/extrasettings/notification/ZenModeSettings$5;->this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

    # getter for: Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/extrasettings/notification/ZenModeSettings;->access$100(Lcom/android/extrasettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    if-eq v1, v3, :cond_0

    .line 211
    # getter for: Lcom/android/extrasettings/notification/ZenModeSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/extrasettings/notification/ZenModeSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange allowFrom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/android/extrasettings/notification/ZenModeSettings$5;->this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

    # getter for: Lcom/android/extrasettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/extrasettings/notification/ZenModeSettings;->access$100(Lcom/android/extrasettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 214
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput v1, v0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 215
    iget-object v2, p0, Lcom/android/extrasettings/notification/ZenModeSettings$5;->this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

    # invokes: Lcom/android/extrasettings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/android/extrasettings/notification/ZenModeSettings;->access$300(Lcom/android/extrasettings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method
