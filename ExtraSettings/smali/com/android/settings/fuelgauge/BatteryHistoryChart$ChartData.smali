.class Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChartData"
.end annotation


# instance fields
.field mColors:[I

.field mLastBin:I

.field mNumTicks:I

.field mPaints:[Landroid/graphics/Paint;

.field mTicks:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addTick(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "bin"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    iget v1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    const v2, 0xffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 96
    iget v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 97
    iput p2, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 99
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "height"    # I

    .prologue
    .line 108
    const/4 v9, 0x0

    .local v9, "lastBin":I
    const/4 v10, 0x0

    .line 109
    .local v10, "lastX":I
    add-int v7, p2, p3

    .line 110
    .local v7, "bottom":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    if-ge v8, v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    aget v11, v0, v8

    .line 112
    .local v11, "tick":I
    const v0, 0xffff

    and-int v12, v11, v0

    .line 113
    .local v12, "x":I
    const/high16 v0, -0x10000

    and-int/2addr v0, v11

    shr-int/lit8 v6, v0, 0x10

    .line 114
    .local v6, "bin":I
    if-eqz v9, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    array-length v0, v0

    if-lt v9, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 123
    :cond_0
    int-to-float v1, v10

    int-to-float v2, p2

    int-to-float v3, v12

    int-to-float v4, v7

    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v5, v0, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 125
    :cond_1
    move v9, v6

    .line 126
    move v10, v12

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 129
    .end local v6    # "bin":I
    .end local v11    # "tick":I
    .end local v12    # "x":I
    :cond_2
    return-void
.end method

.method finish(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 105
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    if-lez p1, :cond_0

    .line 85
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    .line 89
    :goto_0
    iput v1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 90
    iput v1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 91
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    goto :goto_0
.end method

.method setColors([I)V
    .locals 3
    .param p1, "colors"    # [I

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mColors:[I

    .line 75
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 78
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method
