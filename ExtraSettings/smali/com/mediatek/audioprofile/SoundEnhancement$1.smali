.class Lcom/mediatek/audioprofile/SoundEnhancement$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundEnhancement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/SoundEnhancement;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/SoundEnhancement;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/SoundEnhancement;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement$1;->this$0:Lcom/mediatek/audioprofile/SoundEnhancement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    const-string v0, "SoundEnhancement"

    const-string v1, "get close notification reciver."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement$1;->this$0:Lcom/mediatek/audioprofile/SoundEnhancement;

    # getter for: Lcom/mediatek/audioprofile/SoundEnhancement;->mLosslessBTPref:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/mediatek/audioprofile/SoundEnhancement;->access$000(Lcom/mediatek/audioprofile/SoundEnhancement;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 183
    return-void
.end method
