.class Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellInfoListRateHandler"
.end annotation


# instance fields
.field index:I

.field rates:[I

.field final synthetic this$0:Lcom/android/extrasettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/RadioInfo;)V
    .locals 1

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/extrasettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->rates:[I

    .line 971
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->index:I

    return-void

    .line 970
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x3e8
    .end array-data
.end method


# virtual methods
.method public getRate()I
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->rates:[I

    iget v1, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->index:I

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 979
    iget v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->index:I

    .line 980
    iget v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->index:I

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->rates:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 981
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->index:I

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->rates:[I

    iget v2, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->index:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 984
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateCellInfoListRate()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$3600(Lcom/android/extrasettings/RadioInfo;)V

    .line 985
    return-void
.end method
