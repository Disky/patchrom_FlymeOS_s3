.class Lcom/mediatek/audioprofile/AudioProfileSettings$1;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onProfileChanged(Ljava/lang/String;)V

    .line 140
    const-string v1, "Settings/AudioP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfileSettings:onPerfileChanged:key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->access$000(Lcom/mediatek/audioprofile/AudioProfileSettings;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "profileKey":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 144
    .local v0, "activePreference":Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 147
    :cond_1
    return-void
.end method