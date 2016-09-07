.class Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/sim/SimSettings$SimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResId:I

.field final synthetic this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/sim/SimSettings$SimPreference;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "arr"    # [Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    .line 509
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 510
    iput-object p2, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->mContext:Landroid/content/Context;

    .line 511
    iput p3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->mResId:I

    .line 512
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 552
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 553
    .local v1, "rowView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;

    .line 555
    .local v0, "holder":Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;
    iget-object v2, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintSelectorPos:I
    invoke-static {v2}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->access$300(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 556
    iget-object v2, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 560
    :goto_0
    iget-object v2, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    return-object v1

    .line 558
    :cond_0
    iget-object v2, v0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 516
    iget-object v7, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 521
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    iget-object v7, v7, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    invoke-virtual {v7}, Lcom/android/extrasettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 522
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f0e0077

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 523
    .local v2, "iconSize":I
    const v7, 0x7f0e0078

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 525
    .local v6, "strokeWidth":I
    if-nez p2, :cond_0

    .line 527
    iget v7, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->mResId:I

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 528
    .local v5, "rowView":Landroid/view/View;
    new-instance v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;

    invoke-direct {v1, p0, v9}, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;-><init>(Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;Lcom/android/extrasettings/sim/SimSettings$1;)V

    .line 529
    .local v1, "holder":Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 530
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 531
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 532
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    int-to-float v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 533
    const v7, 0x7f1001b8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 534
    const v7, 0x7f1001b7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 535
    iput-object v0, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    .line 536
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 542
    .end local v0    # "drawable":Landroid/graphics/drawable/ShapeDrawable;
    :goto_0
    iget-object v8, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v7, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintArr:[I
    invoke-static {v8}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->access$600(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)[I

    move-result-object v8

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 544
    iget-object v7, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 545
    iget-object v7, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iget-object v7, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    return-object v5

    .line 538
    .end local v1    # "holder":Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;
    .end local v5    # "rowView":Landroid/view/View;
    :cond_0
    move-object v5, p2

    .line 539
    .restart local v5    # "rowView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/extrasettings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;
    goto :goto_0
.end method
