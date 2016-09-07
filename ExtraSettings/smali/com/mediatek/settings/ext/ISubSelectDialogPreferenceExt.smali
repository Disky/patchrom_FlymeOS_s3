.class public interface abstract Lcom/mediatek/settings/ext/ISubSelectDialogPreferenceExt;
.super Ljava/lang/Object;
.source "ISubSelectDialogPreferenceExt.java"


# virtual methods
.method public abstract onCreateView(Landroid/preference/Preference;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract updateDefaultSimPreferenceLayout(Landroid/preference/Preference;)V
.end method

.method public abstract updateDefaultSimPreferenceSimIndicator(Landroid/view/View;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)V"
        }
    .end annotation
.end method
