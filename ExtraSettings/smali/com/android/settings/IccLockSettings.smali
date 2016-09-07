.class public Lcom/android/extrasettings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/extrasettings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/extrasettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    .line 135
    new-instance v0, Lcom/android/extrasettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/IccLockSettings$1;-><init>(Lcom/android/extrasettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/extrasettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/IccLockSettings$2;-><init>(Lcom/android/extrasettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v0, Lcom/android/extrasettings/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/IccLockSettings$3;-><init>(Lcom/android/extrasettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 528
    new-instance v0, Lcom/android/extrasettings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/IccLockSettings$4;-><init>(Lcom/android/extrasettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/IccLockSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/IccLockSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/extrasettings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/IccLockSettings;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/extrasettings/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/IccLockSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->handleRadioStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/extrasettings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/IccLockSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090472

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 488
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-object v0

    .line 479
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0008

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090473

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private handleRadioStatus()V
    .locals 3

    .prologue
    .line 552
    const-string v1, "IccLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimPinLock()... mPHone is null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->showDialog(Landroid/app/Activity;I)V

    .line 558
    :goto_1
    return-void

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "phone is null"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private iccLockChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x1

    .line 439
    if-eqz p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/extrasettings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    iget-boolean v1, p0, Lcom/android/extrasettings/IccLockSettings;->mToState:Z

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/ISimRoamingExt;->showPinToast(Z)V

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 447
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->resetDialogState()V

    .line 448
    return-void

    .line 443
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/extrasettings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccPinChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    invoke-direct {p0, p2}, Lcom/android/extrasettings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 465
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->resetDialogState()V

    .line 466
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09046c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "successMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 459
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 494
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 495
    :cond_0
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 503
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 505
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->setDialogValues()V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    .line 507
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f090468

    .line 341
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 342
    const-string v0, ""

    .line 343
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 368
    return-void

    .line 345
    :pswitch_0
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090462

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/extrasettings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090463

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/extrasettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090464

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 351
    :pswitch_1
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090465

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :pswitch_2
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090466

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :pswitch_3
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090467

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->setDialogValues()V

    .line 337
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/extrasettings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 435
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 436
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/extrasettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 472
    return-void
.end method

.method private updatePreferences()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v3, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/extrasettings/EditPinPreference;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 272
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 266
    goto :goto_0

    :cond_2
    move v1, v2

    .line 267
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 178
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const-string v6, "IccLockSettings"

    const-string v7, "onCreate()..."

    invoke-static {v6, v7}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/extrasettings/IccLockSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 183
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 185
    .local v2, "numSims":I
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/extrasettings/IccLockSettings;->finish()V

    .line 263
    :goto_0
    return-void

    .line 190
    :cond_0
    const v6, 0x7f060044

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 192
    const-string v6, "sim_pin"

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/extrasettings/EditPinPreference;

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    .line 193
    const-string v6, "sim_toggle"

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    .line 194
    if-eqz p1, :cond_1

    const-string v6, "dialogState"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    const-string v6, "dialogState"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    .line 196
    const-string v6, "dialogPin"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 197
    const-string v6, "dialogError"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 198
    const-string v6, "enableState"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/extrasettings/IccLockSettings;->mToState:Z

    .line 201
    iget v6, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    packed-switch v6, :pswitch_data_0

    .line 218
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    invoke-virtual {v6, p0}, Lcom/android/extrasettings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/extrasettings/EditPinPreference$OnPinEnteredListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/extrasettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 223
    if-le v2, v12, :cond_5

    .line 224
    const v6, 0x7f040062

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/IccLockSettings;->setContentView(I)V

    .line 226
    const v6, 0x1020012

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 227
    const v6, 0x1020013

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabWidget;

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 228
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mListView:Landroid/widget/ListView;

    .line 230
    iget-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 231
    iget-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/extrasettings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 232
    iget-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 235
    invoke-static {p0, v1}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 236
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v7, p0, Lcom/android/extrasettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_2

    const v6, 0x7f0909ba

    new-array v9, v12, [Ljava/lang/Object;

    add-int/lit8 v10, v1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v0, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/extrasettings/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 203
    .end local v1    # "i":I
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :pswitch_0
    const-string v6, "oldPinCode"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 207
    :pswitch_1
    const-string v6, "oldPinCode"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 208
    const-string v6, "newPinCode"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto/16 :goto_1

    .line 236
    .restart local v1    # "i":I
    .restart local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_3

    .line 241
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/extrasettings/IccLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 243
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v3, :cond_4

    const/4 v6, 0x0

    :goto_4
    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 248
    .end local v1    # "i":I
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_5
    invoke-virtual {p0}, Lcom/android/extrasettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 249
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->updatePreferences()V

    .line 251
    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    .line 252
    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 256
    invoke-static {p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->newInstance(Landroid/app/Activity;)Lcom/mediatek/settings/sim/SimHotSwapHandler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 257
    iget-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v6}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSubscriptionsChangedListener()V

    .line 261
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->handleRadioStatus()V

    goto/16 :goto_0

    .line 243
    .restart local v1    # "i":I
    .restart local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    goto :goto_4

    .line 246
    .end local v1    # "i":I
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_5

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 542
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 544
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSubscriptionsChangedListener()V

    .line 545
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 294
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    return-void
.end method

.method public onPinEntered(Lcom/android/extrasettings/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/extrasettings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 371
    if-nez p2, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->resetDialogState()V

    .line 412
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/android/extrasettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/extrasettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090469

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 380
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 383
    :cond_1
    iget v0, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 385
    :pswitch_0
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 389
    iput v3, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    .line 390
    iput-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 391
    iput-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 395
    :pswitch_2
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 396
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    .line 397
    iput-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 398
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 401
    :pswitch_3
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09046a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 403
    iput v3, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    .line 404
    iput-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 407
    :cond_2
    iput-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 415
    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 417
    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/extrasettings/IccLockSettings;->mToState:Z

    .line 419
    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/extrasettings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 420
    iput v1, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    .line 421
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 426
    :goto_0
    return v0

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 423
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/extrasettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    iget v1, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->showPinDialog()V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/extrasettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mPinDialog:Lcom/android/extrasettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/extrasettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/extrasettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    iget v0, p0, Lcom/android/extrasettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 313
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
