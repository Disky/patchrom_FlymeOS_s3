.class Lcom/mediatek/settings/deviceinfo/MemoryExts$2;
.super Ljava/lang/Object;
.source "MemoryExts.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/deviceinfo/MemoryExts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 222
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$200(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$200(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 227
    const-string v0, "MemorySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set default path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    check-cast p1, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    # setter for: Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-static {v0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$202(Lcom/mediatek/settings/deviceinfo/MemoryExts;Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_1
    return v0
.end method
