.class Lcom/mediatek/audioprofile/AudioProfileNotification$1;
.super Ljava/lang/Object;
.source "AudioProfileNotification.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/AudioProfileNotification;->initPulse()V
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
    .line 94
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 98
    .local v0, "val":Z
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    # invokes: Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileNotification;->access$000(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_pulse"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
