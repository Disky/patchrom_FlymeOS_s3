.class Lcom/android/extrasettings/ApnEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/ApnEditor;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 202
    .local v1, "airplaneModeEnabled":Z
    if-eqz v1, :cond_0

    .line 203
    # getter for: Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/extrasettings/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "receiver: ACTION_AIRPLANE_MODE_CHANGED in ApnEditor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # invokes: Lcom/android/extrasettings/ApnEditor;->radioOffExit()V
    invoke-static {v3}, Lcom/android/extrasettings/ApnEditor;->access$100(Lcom/android/extrasettings/ApnEditor;)V

    .line 222
    .end local v1    # "airplaneModeEnabled":Z
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const-string v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "apnType":Ljava/lang/String;
    # getter for: Lcom/android/extrasettings/ApnEditor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/extrasettings/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver,send MMS status, get type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v4, "mms"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    invoke-virtual {v4}, Lcom/android/extrasettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mReadOnlyMode:Z
    invoke-static {v5}, Lcom/android/extrasettings/ApnEditor;->access$200(Lcom/android/extrasettings/ApnEditor;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-static {v5}, Lcom/android/extrasettings/ApnEditor;->access$400(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mSubId:I
    invoke-static {v6}, Lcom/android/extrasettings/ApnEditor;->access$300(Lcom/android/extrasettings/ApnEditor;)I

    move-result v6

    iget-object v7, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 212
    iget-object v3, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mSourceType:I
    invoke-static {v3}, Lcom/android/extrasettings/ApnEditor;->access$500(Lcom/android/extrasettings/ApnEditor;)I

    move-result v3

    if-nez v3, :cond_3

    .line 213
    iget-object v3, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-static {v3}, Lcom/android/extrasettings/ApnEditor;->access$400(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mSubId:I
    invoke-static {v4}, Lcom/android/extrasettings/ApnEditor;->access$300(Lcom/android/extrasettings/ApnEditor;)I

    move-result v4

    iget-object v5, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    invoke-virtual {v5}, Lcom/android/extrasettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateFieldsStatus(ILandroid/preference/PreferenceScreen;)V

    .line 215
    :cond_3
    const-string v3, "tethering"

    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;
    invoke-static {v4}, Lcom/android/extrasettings/ApnEditor;->access$600(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/apn/ApnTypePreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    iget-object v3, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-static {v3}, Lcom/android/extrasettings/ApnEditor;->access$400(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;
    invoke-static {v4}, Lcom/android/extrasettings/ApnEditor;->access$600(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/apn/ApnTypePreference;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setApnTypePreferenceState(Landroid/preference/Preference;)V

    .line 218
    :cond_4
    iget-object v3, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-static {v3}, Lcom/android/extrasettings/ApnEditor;->access$400(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/extrasettings/ApnEditor;->access$700(Lcom/android/extrasettings/ApnEditor;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setMVNOPreferenceState(Landroid/preference/Preference;)V

    .line 219
    iget-object v3, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-static {v3}, Lcom/android/extrasettings/ApnEditor;->access$400(Lcom/android/extrasettings/ApnEditor;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/ApnEditor$1;->this$0:Lcom/android/extrasettings/ApnEditor;

    # getter for: Lcom/android/extrasettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;
    invoke-static {v4}, Lcom/android/extrasettings/ApnEditor;->access$800(Lcom/android/extrasettings/ApnEditor;)Landroid/preference/EditTextPreference;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setMVNOPreferenceState(Landroid/preference/Preference;)V

    goto/16 :goto_0
.end method
