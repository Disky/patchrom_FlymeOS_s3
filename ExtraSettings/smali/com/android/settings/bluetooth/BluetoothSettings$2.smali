.class Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    if-nez v13, :cond_0

    .line 461
    const-string v13, "BluetoothSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onClick() called for other View: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .line 466
    .local v3, "device":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    const-string v13, "BluetoothSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onClick "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 468
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f100036

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;

    .line 471
    .local v11, "profileFragment":Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;
    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 472
    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 473
    .local v10, "parent":Landroid/view/ViewGroup;
    if-eqz v10, :cond_1

    .line 474
    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    .end local v10    # "parent":Landroid/view/ViewGroup;
    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->isInLayout()Z

    move-result v13

    if-nez v13, :cond_5

    .line 480
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 481
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const-string v13, "BluetoothSettings"

    const-string v14, "LayoutInflater inflate the dialog fragment"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const v13, 0x7f04001b

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    # setter for: Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->access$102(Landroid/view/View;)Landroid/view/View;

    .line 483
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f100036

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    .end local v11    # "profileFragment":Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;
    check-cast v11, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;

    .line 488
    .restart local v11    # "profileFragment":Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;
    const v13, 0x7f04001c

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 490
    .local v8, "header":Landroid/view/View;
    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_3

    if-nez v8, :cond_4

    .line 491
    :cond_3
    const-string v13, "BluetoothSettings"

    const-string v14, "Layout inflate fail, just exit"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 495
    :cond_4
    invoke-virtual {v11}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getListView()Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 498
    .end local v8    # "header":Landroid/view/View;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v6

    .line 499
    .local v6, "dialogLayout":Landroid/view/View;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    .local v12, "settingsDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v11, v3}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->setDevice(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V

    .line 501
    const v13, 0x7f100038

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 502
    .local v4, "deviceName":Landroid/widget/EditText;
    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 504
    move-object v7, v11

    .line 505
    .local v7, "dpsFragment":Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 506
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 507
    const v13, 0x7f09030d

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 508
    const v13, 0x7f09024e

    new-instance v14, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6, v3}, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2$1;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;Landroid/view/View;Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 517
    const v13, 0x7f090251

    new-instance v14, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v1, v2}, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2$2;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    new-instance v13, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v7}, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2$3;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;Landroid/app/Activity;Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 541
    .local v5, "dialog":Landroid/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    # setter for: Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mProfileDialog:Landroid/app/AlertDialog;
    invoke-static {v13, v5}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->access$202(Lcom/android/extrasettings/bluetooth/BluetoothSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 543
    new-instance v13, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2$4;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 557
    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    .line 558
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 559
    const-string v13, "BluetoothSettings"

    const-string v14, "Show the Alert dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v14, 0x20008

    invoke-virtual {v13, v14}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0
.end method
