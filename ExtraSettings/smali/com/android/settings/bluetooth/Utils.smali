.class final Lcom/android/extrasettings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/bluetooth/Utils$ErrorDialogFragment;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .param p0, "connectionState"    # I

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :pswitch_0
    const v0, 0x7f0901ca

    goto :goto_0

    .line 60
    :pswitch_1
    const v0, 0x7f0901d1

    goto :goto_0

    .line 62
    :pswitch_2
    const v0, 0x7f0901cf

    goto :goto_0

    .line 64
    :pswitch_3
    const v0, 0x7f0901d0

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "disconnectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;

    .prologue
    const v2, 0x104000a

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 89
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-object p1

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 86
    .local v0, "okText":Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    const/4 v6, 0x0

    .line 106
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 108
    .local v3, "manager":Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;
    if-nez v3, :cond_0

    .line 124
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 112
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    const-string v5, "Bluetooth.Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show ErrorDialogFragment, message is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v2, Lcom/android/extrasettings/bluetooth/Utils$ErrorDialogFragment;

    invoke-direct {v2}, Lcom/android/extrasettings/bluetooth/Utils$ErrorDialogFragment;-><init>()V

    .line 116
    .local v2, "dialog":Lcom/android/extrasettings/bluetooth/Utils$ErrorDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "errorMessage"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, v1}, Lcom/android/extrasettings/bluetooth/Utils$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "Error"

    invoke-virtual {v2, v5, v6}, Lcom/android/extrasettings/bluetooth/Utils$ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/android/extrasettings/bluetooth/Utils$ErrorDialogFragment;
    :cond_1
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;
    .param p4, "iconResId"    # I
    .param p5, "enabled"    # Z

    .prologue
    .line 131
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    iput-object p1, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 133
    iput-object p2, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 134
    iput-object p3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 135
    iput p4, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->iconResId:I

    .line 136
    iput-boolean p5, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->enabled:Z

    .line 138
    invoke-static {p0}, Lcom/android/extrasettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/search/Index;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 139
    return-void
.end method
