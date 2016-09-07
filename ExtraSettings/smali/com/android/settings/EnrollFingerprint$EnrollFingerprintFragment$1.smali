.class Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$1;
.super Ljava/lang/Object;
.source "EnrollFingerprint.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$1;->this$0:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 527
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$1;->this$0:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->WrongSensor:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 529
    iget-object v0, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$1;->this$0:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;

    # invokes: Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;->showWrongSensorDialog()V
    invoke-static {v0}, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;->access$000(Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;)V

    .line 531
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
