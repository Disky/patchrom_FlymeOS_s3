.class Lcom/mediatek/audioprofile/AudioProfileNotification$2;
.super Ljava/lang/Object;
.source "AudioProfileNotification.java"

# interfaces
.implements Lcom/android/extrasettings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/AudioProfileNotification;->initLockscreenNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileNotification;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 137
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 138
    .local v2, "val":I
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileNotification;->access$100(Lcom/mediatek/audioprofile/AudioProfileNotification;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 148
    :goto_0
    return v3

    .line 141
    :cond_0
    const v5, 0x7f090a0a

    if-eq v2, v5, :cond_2

    move v0, v3

    .line 142
    .local v0, "enabled":Z
    :goto_1
    const v5, 0x7f090a08

    if-ne v2, v5, :cond_3

    move v1, v3

    .line 143
    .local v1, "show":Z
    :goto_2
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    # invokes: Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileNotification;->access$200(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_4

    move v5, v3

    :goto_3
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    # invokes: Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileNotification;->access$300(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    # setter for: Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I
    invoke-static {v4, v2}, Lcom/mediatek/audioprofile/AudioProfileNotification;->access$102(Lcom/mediatek/audioprofile/AudioProfileNotification;I)I

    goto :goto_0

    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    move v0, v4

    .line 141
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_3
    move v1, v4

    .line 142
    goto :goto_2

    .restart local v1    # "show":Z
    :cond_4
    move v5, v4

    .line 143
    goto :goto_3
.end method
