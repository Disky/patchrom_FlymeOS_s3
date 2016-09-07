.class Lcom/android/extrasettings/SettingsPreferenceFragment$1;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 80
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/extrasettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 85
    return-void
.end method
