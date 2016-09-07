.class public final enum Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f09056e

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f09082c

    const v4, 0x7f09082e

    invoke-direct/range {v0 .. v5}, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 150
    new-instance v6, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f09082f

    const v10, 0x7f090831

    const v11, 0x7f090579

    invoke-direct/range {v6 .. v11}, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 154
    new-instance v9, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f090832

    const v13, 0x7f090833

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "hintInNumeric"    # I
    .param p5, "nextButtonText"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    iput p3, p0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 160
    iput p4, p0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 161
    iput p5, p0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 162
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    const-class v0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/extrasettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
