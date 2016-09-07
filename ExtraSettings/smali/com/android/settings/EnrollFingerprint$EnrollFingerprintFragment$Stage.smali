.class public final enum Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;
.super Ljava/lang/Enum;
.source "EnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

.field public static final enum EnrollmentError:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

.field public static final enum EnrollmentFinished:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

.field public static final enum EnrollmentStep:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

.field public static final enum Introduction:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

.field public static final enum WrongSensor:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;


# instance fields
.field final backMode:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

.field final footerMessage:I

.field final infoGraphic:I

.field final instructionMessage:I

.field final nextMode:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

.field final titleMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 222
    new-instance v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0903a0

    const v4, 0x7f0903a1

    sget-object v5, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    sget-object v6, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->FindSensor:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const/4 v7, -0x1

    const v8, 0x7f020037

    invoke-direct/range {v0 .. v8}, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;II)V

    sput-object v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 227
    new-instance v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f0903a6

    const v4, 0x7f0903a7

    sget-object v5, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    sget-object v6, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const/4 v7, -0x1

    const v8, 0x7f020037

    invoke-direct/range {v0 .. v8}, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;II)V

    sput-object v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->HelpScreen:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 232
    new-instance v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    const-string v1, "WrongSensor"

    const/4 v2, 0x2

    const v3, 0x7f0903a4

    const v4, 0x7f0903a5

    sget-object v5, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    sget-object v6, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;II)V

    sput-object v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->WrongSensor:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 237
    new-instance v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    const-string v1, "EnrollmentStep"

    const/4 v2, 0x3

    const v3, 0x7f0903a2

    const v4, 0x7f0903a3

    sget-object v5, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    sget-object v6, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;II)V

    sput-object v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentStep:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 242
    new-instance v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    const-string v1, "EnrollmentError"

    const/4 v2, 0x4

    const v3, 0x7f0903ba

    const v4, 0x7f0903a5

    sget-object v5, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    sget-object v6, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Gone:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;II)V

    sput-object v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 247
    new-instance v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    const-string v1, "EnrollmentFinished"

    const/4 v2, 0x5

    const v3, 0x7f0903a8

    const v4, 0x7f0903a9

    sget-object v5, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->AddAnother:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    sget-object v6, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Done:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;II)V

    sput-object v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentFinished:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 221
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->HelpScreen:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->WrongSensor:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentStep:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentFinished:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->$VALUES:[Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;II)V
    .locals 0
    .param p3, "titleMessage"    # I
    .param p4, "instructionMessage"    # I
    .param p5, "backMode"    # Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;
    .param p6, "nextMode"    # Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;
    .param p7, "footerMessage"    # I
    .param p8, "infoGraphic"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;",
            "Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 265
    iput p3, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->titleMessage:I

    .line 266
    iput p4, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->instructionMessage:I

    .line 267
    iput-object p5, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->backMode:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    .line 268
    iput-object p6, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->nextMode:Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    .line 269
    iput p7, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->footerMessage:I

    .line 270
    iput p8, p0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->infoGraphic:I

    .line 271
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 221
    const-class v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->$VALUES:[Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/extrasettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    return-object v0
.end method
