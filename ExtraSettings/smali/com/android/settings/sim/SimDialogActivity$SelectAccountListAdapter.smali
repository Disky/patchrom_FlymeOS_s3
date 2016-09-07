.class Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/sim/SimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final OPACITY:F

.field private mContext:Landroid/content/Context;

.field private mDialogId:I

.field private mResId:I

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/extrasettings/sim/SimDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V
    .locals 1
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resource"    # I
    .param p5, "arr"    # [Ljava/lang/String;
    .param p6, "dialogId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput-object p1, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    .line 342
    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 337
    const v0, 0x3f0a3d71    # 0.54f

    iput v0, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->OPACITY:F

    .line 343
    iput-object p3, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    .line 344
    iput p4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    .line 345
    iput p6, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    .line 346
    iput-object p2, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    .line 347
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 351
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 356
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 358
    iget v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 359
    .local v3, "rowView":Landroid/view/View;
    new-instance v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v1, p0, v7}, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;Lcom/android/extrasettings/sim/SimDialogActivity$1;)V

    .line 360
    .local v1, "holder":Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    const v5, 0x7f100043

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 361
    const v5, 0x7f100056

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 362
    const v5, 0x7f100042

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 363
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 369
    :goto_0
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 370
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v4, :cond_2

    .line 371
    iget-object v6, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 382
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    # getter for: Lcom/android/extrasettings/sim/SimDialogActivity;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;
    invoke-static {v5}, Lcom/android/extrasettings/sim/SimDialogActivity;->access$400(Lcom/android/extrasettings/sim/SimDialogActivity;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/mediatek/settings/ext/ISimManagementExt;->getSmsAutoItemIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 383
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    # getter for: Lcom/android/extrasettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/extrasettings/sim/SimDialogActivity;->access$700()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDialogId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x3f0a3d71    # 0.54f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 395
    :goto_2
    return-object v3

    .line 365
    .end local v1    # "holder":Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    .end local v3    # "rowView":Landroid/view/View;
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    move-object v3, p2

    .line 366
    .restart local v3    # "rowView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    goto :goto_0

    .line 386
    .restart local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    invoke-virtual {v6}, Lcom/android/extrasettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 391
    :cond_2
    iget-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v5, v1, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/extrasettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
