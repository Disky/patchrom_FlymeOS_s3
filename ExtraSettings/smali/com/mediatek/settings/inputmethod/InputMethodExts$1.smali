.class Lcom/mediatek/settings/inputmethod/InputMethodExts$1;
.super Ljava/lang/Object;
.source "InputMethodExts.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/inputmethod/InputMethodExts;->initExtendsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/inputmethod/InputMethodExts;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 86
    const-string v0, "InputMethodAndLanguageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;

    # getter for: Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->access$000(Lcom/mediatek/settings/inputmethod/InputMethodExts;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_pointer_primary_key"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;

    # invokes: Lcom/mediatek/settings/inputmethod/InputMethodExts;->updatePointerPrimaryValue()V
    invoke-static {v0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->access$100(Lcom/mediatek/settings/inputmethod/InputMethodExts;)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method
