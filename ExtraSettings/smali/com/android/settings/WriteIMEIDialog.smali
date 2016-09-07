.class public Lcom/android/extrasettings/WriteIMEIDialog;
.super Landroid/app/Activity;
.source "WriteIMEIDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/WriteIMEIDialog$1;,
        Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private cancelBtn:Landroid/widget/Button;

.field private imei1:Landroid/widget/EditText;

.field private imei2:Landroid/widget/EditText;

.field private intent:Landroid/content/Intent;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone_1:Lcom/android/internal/telephony/Phone;

.field private mPhone_2:Lcom/android/internal/telephony/Phone;

.field private saveBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, "WriteIMEI"

    iput-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/extrasettings/WriteIMEIDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 46
    iput-object v1, p0, Lcom/android/extrasettings/WriteIMEIDialog;->mPhone_1:Lcom/android/internal/telephony/Phone;

    .line 47
    iput-object v1, p0, Lcom/android/extrasettings/WriteIMEIDialog;->mPhone_2:Lcom/android/internal/telephony/Phone;

    .line 181
    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/WriteIMEIDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/WriteIMEIDialog;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v1, 0xf

    .line 157
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->imei1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->imei2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->saveBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->saveBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 72
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/extrasettings/WriteIMEIDialog;->writeIMEI()V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/extrasettings/WriteIMEIDialog;->finish()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x7f1002b9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/WriteIMEIDialog;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/extrasettings/WriteIMEIDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->intent:Landroid/content/Intent;

    .line 54
    const v0, 0x7f1002b9

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/WriteIMEIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->saveBtn:Landroid/widget/Button;

    .line 55
    const v0, 0x7f1002ba

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/WriteIMEIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->cancelBtn:Landroid/widget/Button;

    .line 56
    const v0, 0x7f1002b7

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/WriteIMEIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->imei1:Landroid/widget/EditText;

    .line 57
    const v0, 0x7f1002b8

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/WriteIMEIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->imei2:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->imei1:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->imei2:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEIDialog;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 179
    return-void
.end method

.method writeIMEI()V
    .locals 14

    .prologue
    .line 83
    const/4 v10, 0x2

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "AT+EGMR=1,"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v1, v10

    .line 86
    .local v1, "cmd":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 88
    .local v2, "forceWriteIMEI":Z
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/extrasettings/WriteIMEIDialog;->mPhone_1:Lcom/android/internal/telephony/Phone;

    .line 89
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/extrasettings/WriteIMEIDialog;->mPhone_2:Lcom/android/internal/telephony/Phone;

    .line 90
    move v7, v2

    .line 91
    .local v7, "isSaveToBinNeeded":I
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/extrasettings/WriteIMEIDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 92
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    const/4 v10, 0x2

    new-array v5, v10, [Ljava/lang/CharSequence;

    .line 93
    .local v5, "imeiStrs":[Ljava/lang/CharSequence;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    .line 94
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    .line 95
    const/4 v10, 0x0

    aget-object v10, v5, v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "imei1Str":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x1

    aget-object v10, v5, v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "imei2Str":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMEI1 ====== "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v10, p0, Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMEI2 ====== "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 102
    :cond_0
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AT+EGMR=1,7,\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/extrasettings/WriteIMEIDialog;->imei1:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 103
    iget-object v10, p0, Lcom/android/extrasettings/WriteIMEIDialog;->mPhone_1:Lcom/android/internal/telephony/Phone;

    const/4 v11, 0x0

    invoke-interface {v10, v1, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 104
    iget-object v10, p0, Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Send write IMEI1 command:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v7, 0x1

    .line 108
    .end local v7    # "isSaveToBinNeeded":I
    :cond_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 109
    :cond_2
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AT+EGMR=1,10,\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/extrasettings/WriteIMEIDialog;->imei2:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 110
    iget-object v10, p0, Lcom/android/extrasettings/WriteIMEIDialog;->mPhone_2:Lcom/android/internal/telephony/Phone;

    const/4 v11, 0x0

    invoke-interface {v10, v1, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 111
    iget-object v10, p0, Lcom/android/extrasettings/WriteIMEIDialog;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Send write IMEI2 command:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v7, 0x1

    .line 115
    :cond_3
    if-eqz v7, :cond_6

    .line 116
    new-instance v8, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v10}, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;-><init>(Lcom/android/extrasettings/WriteIMEIDialog;Lcom/android/extrasettings/WriteIMEIDialog$1;)V

    .line 117
    .local v8, "thread":Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;
    const/4 v10, 0x1

    const-wide/16 v12, 0x2710

    invoke-virtual {v8, v10, v12, v13}, Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.mediatek.factorymode.start.bin"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v6, "in":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/android/extrasettings/WriteIMEIDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/extrasettings/WriteIMEIDialog;->finish()V

    .line 152
    .end local v8    # "thread":Lcom/android/extrasettings/WriteIMEIDialog$BackupToBinThread;
    :goto_2
    return-void

    .line 95
    .end local v3    # "imei1Str":Ljava/lang/String;
    .end local v4    # "imei2Str":Ljava/lang/String;
    .end local v6    # "in":Landroid/content/Intent;
    .restart local v7    # "isSaveToBinNeeded":I
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 96
    .restart local v3    # "imei1Str":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 122
    .end local v7    # "isSaveToBinNeeded":I
    .restart local v4    # "imei2Str":Ljava/lang/String;
    :cond_6
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.mediatek.factorymode.get.imei"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v6    # "in":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "imei1"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v10, "imei2"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v6}, Lcom/android/extrasettings/WriteIMEIDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/extrasettings/WriteIMEIDialog;->finish()V

    goto :goto_2
.end method
