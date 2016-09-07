.class public Lcom/mediatek/widget/ChartBandwidthGridView;
.super Landroid/view/View;
.source "ChartBandwidthGridView.java"


# instance fields
.field private mHoriz:Lcom/android/extrasettings/widget/ChartAxis;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/extrasettings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/mediatek/widget/ChartBandwidthGridView;->setWillNotDraw(Z)V

    .line 53
    sget-object v1, Lcom/android/extrasettings/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 57
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method


# virtual methods
.method init(Lcom/android/extrasettings/widget/ChartAxis;Lcom/android/extrasettings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/extrasettings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/extrasettings/widget/ChartAxis;

    .prologue
    .line 62
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/extrasettings/widget/ChartAxis;

    .line 63
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mVert:Lcom/android/extrasettings/widget/ChartAxis;

    .line 64
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartBandwidthGridView;->getWidth()I

    move-result v15

    .line 73
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartBandwidthGridView;->getHeight()I

    move-result v5

    .line 75
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 76
    .local v12, "secondary":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_1

    .line 77
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 79
    .local v13, "secondaryHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mVert:Lcom/android/extrasettings/widget/ChartAxis;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/extrasettings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v14

    .line 80
    .local v14, "vertTicks":[F
    move-object v3, v14

    .local v3, "arr$":[F
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget v17, v3, v7

    .line 81
    .local v17, "y":F
    int-to-float v0, v13

    move/from16 v18, v0

    add-float v18, v18, v17

    int-to-float v0, v5

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v4, v0

    .line 82
    .local v4, "bottom":I
    const/16 v18, 0x0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 85
    .end local v4    # "bottom":I
    .end local v17    # "y":F
    :cond_0
    const/16 v18, 0x0

    const/16 v19, 0x0

    mul-int/lit8 v20, v13, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    .end local v3    # "arr$":[F
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v13    # "secondaryHeight":I
    .end local v14    # "vertTicks":[F
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 91
    .local v9, "primary":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 92
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 93
    .local v10, "primaryWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/extrasettings/widget/ChartAxis;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/extrasettings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v6

    .line 94
    .local v6, "horizTicks":[F
    move-object v3, v6

    .restart local v3    # "arr$":[F
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_1
    if-ge v7, v8, :cond_2

    aget v16, v3, v7

    .line 95
    .local v16, "x":F
    int-to-float v0, v10

    move/from16 v18, v0

    add-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v11, v0

    .line 96
    .local v11, "right":I
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 101
    .end local v3    # "arr$":[F
    .end local v6    # "horizTicks":[F
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "primaryWidth":I
    .end local v11    # "right":I
    .end local v16    # "x":F
    :cond_2
    return-void
.end method
