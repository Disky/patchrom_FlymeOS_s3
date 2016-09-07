.class Lcom/android/internal/policy/impl/PhoneWindowManager$6;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1242
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v8, "intent":Landroid/content/Intent;
    const-string v5, "com.android.launcher"

    .line 1244
    .local v5, "defaultHomePackage":Ljava/lang/String;
    const-string v15, "android.intent.category.HOME"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v15, v15, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 1246
    .local v11, "res":Landroid/content/pm/ResolveInfo;
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_0

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v16, "android"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1247
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1249
    :cond_0
    const/4 v12, 0x0

    .line 1250
    .local v12, "targetKilled":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    .line 1251
    .local v14, "userId":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1252
    .local v1, "am":Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1253
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1254
    .local v2, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v13, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 1257
    .local v13, "uid":I
    const/16 v15, 0x2710

    if-lt v13, v15, :cond_2

    const/16 v15, 0x4e1f

    if-gt v13, v15, :cond_2

    iget v15, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1259
    iget-object v15, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v15, :cond_5

    iget-object v15, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_5

    .line 1260
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v10, v4, v7

    .line 1261
    .local v10, "pkg":Ljava/lang/String;
    const-string v15, "com.android.systemui"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1263
    invoke-interface {v1, v10, v14}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1264
    const/4 v12, 0x1

    .line 1273
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v12, :cond_1

    .line 1274
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v15, v15, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v16, 0x10406a6

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 1283
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "defaultHomePackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "res":Landroid/content/pm/ResolveInfo;
    .end local v12    # "targetKilled":Z
    .end local v13    # "uid":I
    .end local v14    # "userId":I
    :cond_3
    :goto_2
    return-void

    .line 1260
    .restart local v1    # "am":Landroid/app/IActivityManager;
    .restart local v2    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "defaultHomePackage":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "len$":I
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "res":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "targetKilled":Z
    .restart local v13    # "uid":I
    .restart local v14    # "userId":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1269
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_5
    iget v15, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    const/4 v12, 0x1

    goto :goto_1

    .line 1280
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "defaultHomePackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "res":Landroid/content/pm/ResolveInfo;
    .end local v12    # "targetKilled":Z
    .end local v13    # "uid":I
    .end local v14    # "userId":I
    :catch_0
    move-exception v15

    goto :goto_2
.end method
