.class Lcom/android/extrasettings/livedisplay/DisplayTemperature$2;
.super Ljava/lang/Object;
.source "DisplayTemperature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/livedisplay/DisplayTemperature;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/livedisplay/DisplayTemperature;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/livedisplay/DisplayTemperature;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/extrasettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/extrasettings/livedisplay/DisplayTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/extrasettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/extrasettings/livedisplay/DisplayTemperature;

    # getter for: Lcom/android/extrasettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/extrasettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    invoke-static {v0}, Lcom/android/extrasettings/livedisplay/DisplayTemperature;->access$100(Lcom/android/extrasettings/livedisplay/DisplayTemperature;)Lcom/android/extrasettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/extrasettings/livedisplay/DisplayTemperature;

    # getter for: Lcom/android/extrasettings/livedisplay/DisplayTemperature;->mDefaultDayTemperature:I
    invoke-static {v1}, Lcom/android/extrasettings/livedisplay/DisplayTemperature;->access$000(Lcom/android/extrasettings/livedisplay/DisplayTemperature;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setProgress(I)V

    .line 112
    iget-object v0, p0, Lcom/android/extrasettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/extrasettings/livedisplay/DisplayTemperature;

    # getter for: Lcom/android/extrasettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/extrasettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    invoke-static {v0}, Lcom/android/extrasettings/livedisplay/DisplayTemperature;->access$300(Lcom/android/extrasettings/livedisplay/DisplayTemperature;)Lcom/android/extrasettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/extrasettings/livedisplay/DisplayTemperature;

    # getter for: Lcom/android/extrasettings/livedisplay/DisplayTemperature;->mDefaultNightTemperature:I
    invoke-static {v1}, Lcom/android/extrasettings/livedisplay/DisplayTemperature;->access$200(Lcom/android/extrasettings/livedisplay/DisplayTemperature;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setProgress(I)V

    .line 113
    iget-object v0, p0, Lcom/android/extrasettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/extrasettings/livedisplay/DisplayTemperature;

    const/4 v1, 0x1

    # invokes: Lcom/android/extrasettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/livedisplay/DisplayTemperature;->access$400(Lcom/android/extrasettings/livedisplay/DisplayTemperature;Z)V

    .line 114
    return-void
.end method
