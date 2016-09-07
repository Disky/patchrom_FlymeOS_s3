.class Lcom/android/extrasettings/sim/SimSettings$SimPreference;
.super Lcom/mediatek/settings/sim/RadioPowerPreference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private mColorStrings:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mTintArr:[I

.field private mTintSelectorPos:I

.field final synthetic this$0:Lcom/android/extrasettings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subInfoRecord"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    .line 366
    invoke-direct {p0, p2}, Lcom/mediatek/settings/sim/RadioPowerPreference;-><init>(Landroid/content/Context;)V

    .line 367
    iput-object p2, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    .line 368
    iput-object p3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 369
    iput p4, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSlotId:I

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->update()V

    .line 372
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintArr:[I

    .line 373
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mColorStrings:[Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    .line 375
    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    .prologue
    .line 357
    iget v0, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/extrasettings/sim/SimSettings$SimPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings$SimPreference;
    .param p1, "x1"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintArr:[I

    return-object v0
.end method


# virtual methods
.method public createEditDialog(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)V
    .locals 17
    .param p1, "simPref"    # Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/extrasettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 410
    .local v9, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 412
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f04007b

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 414
    .local v4, "dialogLayout":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 416
    const v13, 0x7f10010a

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 417
    .local v6, "nameText":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const v13, 0x7f10010c

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 420
    .local v11, "tintSpinner":Landroid/widget/Spinner;
    new-instance v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0400c8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mColorStrings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v14, v15}, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;-><init>(Lcom/android/extrasettings/sim/SimSettings$SimPreference;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 422
    .local v1, "adapter":Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;
    const v13, 0x1090009

    invoke-virtual {v1, v13}, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->setDropDownViewResource(I)V

    .line 423
    invoke-virtual {v11, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 425
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintArr:[I

    array-length v13, v13

    if-ge v5, v13, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintArr:[I

    aget v13, v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v14

    if-ne v13, v14, :cond_1

    .line 427
    invoke-virtual {v11, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 428
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    .line 433
    :cond_0
    new-instance v13, Lcom/android/extrasettings/sim/SimSettings$SimPreference$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/android/extrasettings/sim/SimSettings$SimPreference$1;-><init>(Lcom/android/extrasettings/sim/SimSettings$SimPreference;Landroid/widget/Spinner;)V

    invoke-virtual {v11, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 446
    const v13, 0x7f10010e

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 447
    .local v7, "numberView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/android/extrasettings/sim/SimSettings;->access$000(Lcom/android/extrasettings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "rawNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 449
    const v13, 0x104000e

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 457
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v10

    .line 459
    .local v10, "simCarrierName":Ljava/lang/String;
    const v13, 0x7f10010d

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 460
    .local v3, "carrierView":Landroid/widget/TextView;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .end local v10    # "simCarrierName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const v13, 0x7f0909ba

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 467
    const v13, 0x7f09024e

    new-instance v14, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4, v11}, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;-><init>(Lcom/android/extrasettings/sim/SimSettings$SimPreference;Landroid/view/View;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 491
    const v13, 0x7f09024b

    new-instance v14, Lcom/android/extrasettings/sim/SimSettings$SimPreference$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/extrasettings/sim/SimSettings$SimPreference$3;-><init>(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # getter for: Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;
    invoke-static {v13}, Lcom/android/extrasettings/sim/SimSettings;->access$800(Lcom/android/extrasettings/sim/SimSettings;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-interface {v13, v4, v14}, Lcom/mediatek/settings/ext/ISimManagementExt;->hideSimEditorView(Landroid/view/View;Landroid/content/Context;)V

    .line 500
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 501
    return-void

    .line 425
    .end local v3    # "carrierView":Landroid/widget/TextView;
    .end local v7    # "numberView":Landroid/widget/TextView;
    .end local v8    # "rawNumber":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 451
    .restart local v7    # "numberView":Landroid/widget/TextView;
    .restart local v8    # "rawNumber":Ljava/lang/String;
    :cond_2
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 460
    .restart local v3    # "carrierView":Landroid/widget/TextView;
    .restart local v10    # "simCarrierName":Ljava/lang/String;
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x104000e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    invoke-virtual {v3}, Lcom/android/extrasettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 380
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    invoke-virtual {v3}, Lcom/android/extrasettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0909ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v3, :cond_2

    .line 383
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/extrasettings/sim/SimSettings;->access$000(Lcom/android/extrasettings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    :goto_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v5, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # getter for: Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z
    invoke-static {v3}, Lcom/android/extrasettings/sim/SimSettings;->access$100(Lcom/android/extrasettings/sim/SimSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->isRadioSwitchComplete(I)Z
    invoke-static {v3, v4}, Lcom/android/extrasettings/sim/SimSettings;->access$200(Lcom/android/extrasettings/sim/SimSettings;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setRadioEnabled(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setRadioOn(Z)V

    .line 401
    :goto_2
    return-void

    .line 386
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    iget-object v5, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/extrasettings/sim/SimSettings;->access$000(Lcom/android/extrasettings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 392
    goto :goto_1

    .line 397
    :cond_2
    const v1, 0x7f0909b8

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setSummary(I)V

    .line 398
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0, v2}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_2
.end method
