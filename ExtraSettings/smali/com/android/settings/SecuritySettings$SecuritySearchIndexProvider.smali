.class Lcom/android/extrasettings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/extrasettings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/android/extrasettings/search/BaseSearchIndexProvider;-><init>()V

    .line 856
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/extrasettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 857
    return-void

    .line 856
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 994
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/android/extrasettings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/android/extrasettings/SecuritySettings;->access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 997
    .local v2, "resId":I
    const v4, 0x7f060037

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    const/high16 v5, 0x10000

    if-eq v4, v5, :cond_0

    .line 1000
    const-string v4, "visiblepattern"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_0
    iget-boolean v4, p0, Lcom/android/extrasettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1007
    :cond_1
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_2
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1011
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1012
    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1017
    const-string v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    const-string v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_4
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/extrasettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 912
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v15, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 915
    .local v13, "res":Landroid/content/res/Resources;
    const v20, 0x7f090292

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 917
    .local v16, "screenTitle":Ljava/lang/String;
    new-instance v4, Lcom/android/extrasettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 918
    .local v4, "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 919
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 920
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 923
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v20

    if-eqz v20, :cond_2

    const v14, 0x7f09028e

    .line 926
    .local v14, "resId":I
    :goto_0
    new-instance v4, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v4    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 927
    .restart local v4    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 928
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 929
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    .end local v14    # "resId":I
    :cond_0
    const-string v20, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 935
    .local v19, "um":Landroid/os/UserManager;
    const-string v20, "no_config_credentials"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 936
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v8

    .line 938
    .local v8, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v8}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v20

    if-eqz v20, :cond_3

    const v17, 0x7f0907db

    .line 942
    .local v17, "storageSummaryRes":I
    :goto_1
    new-instance v4, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v4    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 943
    .restart local v4    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 944
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 945
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    .end local v8    # "keyStore":Landroid/security/KeyStore;
    .end local v17    # "storageSummaryRes":I
    :cond_1
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 950
    .local v9, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    # invokes: Lcom/android/extrasettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    invoke-static {v0, v9}, Lcom/android/extrasettings/SecuritySettings;->access$200(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v3

    .line 953
    .local v3, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_4

    .line 954
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 955
    .local v2, "agent":Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v4, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v4    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 956
    .restart local v4    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    iget-object v0, v2, Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 957
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 958
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 923
    .end local v2    # "agent":Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v3    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v5    # "i":I
    .end local v9    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v19    # "um":Landroid/os/UserManager;
    :cond_2
    const v14, 0x7f09028c

    goto/16 :goto_0

    .line 938
    .restart local v8    # "keyStore":Landroid/security/KeyStore;
    .restart local v19    # "um":Landroid/os/UserManager;
    :cond_3
    const v17, 0x7f0907dc

    goto :goto_1

    .line 963
    .end local v8    # "keyStore":Landroid/security/KeyStore;
    .restart local v9    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    # getter for: Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;
    invoke-static {}, Lcom/android/extrasettings/SecuritySettings;->access$300()Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-result-object v20

    if-nez v20, :cond_5

    .line 964
    const-string v20, "SecuritySettings"

    const-string v21, "mPermCtrlExt init firstly"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-static/range {p1 .. p1}, Lcom/mediatek/settings/UtilsExt;->getPermControlExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-result-object v20

    # setter for: Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;
    invoke-static/range {v20 .. v20}, Lcom/android/extrasettings/SecuritySettings;->access$302(Lcom/mediatek/settings/ext/IPermissionControlExt;)Lcom/mediatek/settings/ext/IPermissionControlExt;

    .line 967
    :cond_5
    # getter for: Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;
    invoke-static {}, Lcom/android/extrasettings/SecuritySettings;->access$300()Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IPermissionControlExt;->getRawDataToIndex(Z)Ljava/util/List;

    move-result-object v11

    .line 968
    .local v11, "permList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    const-string v20, "SecuritySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "permList = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    if-eqz v11, :cond_6

    .line 971
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/provider/SearchIndexableData;

    .line 972
    .local v12, "permdata":Landroid/provider/SearchIndexableData;
    const-string v20, "SecuritySettings"

    const-string v21, "add perm data "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v7, Lcom/android/extrasettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 975
    .local v7, "indexablePerm":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-virtual {v12}, Landroid/provider/SearchIndexableData;->toString()Ljava/lang/String;

    move-result-object v10

    .line 976
    .local v10, "orign":Ljava/lang/String;
    const-string v20, "title:"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const-string v21, "title:"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 978
    .local v18, "title":Ljava/lang/String;
    const-string v20, "SecuritySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " title = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 980
    const-string v20, "com.mediatek.security.PERMISSION_CONTROL"

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/android/extrasettings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 981
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 985
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "indexablePerm":Lcom/android/extrasettings/search/SearchIndexableRaw;
    .end local v10    # "orign":Ljava/lang/String;
    .end local v12    # "permdata":Landroid/provider/SearchIndexableData;
    .end local v18    # "title":Ljava/lang/String;
    :cond_6
    return-object v15
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 863
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 867
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/android/extrasettings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/android/extrasettings/SecuritySettings;->access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 869
    .local v2, "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 870
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 871
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    iget-boolean v5, p0, Lcom/android/extrasettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    .line 874
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 877
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 888
    :goto_0
    :pswitch_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 889
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 890
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 899
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    const-string v5, "0"

    const-string v6, "qemu.hw.mainkeys"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 900
    const v5, 0x7f06003b

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 905
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    return-object v3

    .line 880
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v2, 0x7f060039

    .line 881
    goto :goto_0

    .line 884
    :pswitch_2
    const v2, 0x7f060041

    goto :goto_0

    .line 902
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    const v5, 0x7f06003c

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_1

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
