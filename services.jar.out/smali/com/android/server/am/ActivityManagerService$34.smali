.class Lcom/android/server/am/ActivityManagerService$34;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->ipoBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 21726
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 21728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21729
    const/4 v13, 0x0

    .line 21730
    .local v13, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const/4 v12, 0x0

    .line 21731
    .local v12, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 21732
    .local v5, "intent":Landroid/content/Intent;
    const/16 v2, 0x10

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21735
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x400

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 21741
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v13

    .line 21743
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    .line 21744
    .local v21, "sizeOfRegisteredReceivers":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 21745
    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/BroadcastFilter;

    .line 21746
    .local v15, "curr":Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v2, v2, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 21747
    .local v22, "target":Ljava/lang/String;
    iget-object v2, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21748
    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21749
    add-int/lit8 v21, v21, -0x1

    .line 21750
    add-int/lit8 v18, v18, -0x1

    .line 21744
    .end local v22    # "target":Ljava/lang/String;
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 21737
    .end local v15    # "curr":Lcom/android/server/am/BroadcastFilter;
    .end local v18    # "i":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "sizeOfRegisteredReceivers":I
    :catch_0
    move-exception v17

    .line 21738
    .local v17, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException while querying receivers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21756
    .end local v17    # "e":Landroid/os/RemoteException;
    .restart local v18    # "i":I
    .restart local v21    # "sizeOfRegisteredReceivers":I
    :cond_2
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v20

    .line 21757
    .local v20, "sizeOfReceivers":I
    :goto_2
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 21758
    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 21760
    .local v16, "curt":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v2, v2, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 21761
    .restart local v22    # "target":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21762
    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21763
    add-int/lit8 v20, v20, -0x1

    .line 21764
    add-int/lit8 v18, v18, -0x1

    .line 21757
    .end local v22    # "target":Ljava/lang/String;
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 21756
    .end local v16    # "curt":Landroid/content/pm/ResolveInfo;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "sizeOfReceivers":I
    :cond_5
    const/16 v20, 0x0

    goto :goto_2

    .line 21769
    .restart local v20    # "sizeOfReceivers":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 21771
    const/16 v18, 0x0

    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    .line 21772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 21773
    .local v14, "userId":I
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v5, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    const-string v9, "IPO Bootup End"

    invoke-direct {v7, v8, v9}, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlus;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/am/ActivityManagerService;->broadcastSpecificIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)I

    .line 21771
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 21781
    .end local v14    # "userId":I
    :cond_7
    monitor-exit v23

    .line 21782
    return-void

    .line 21781
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method