.class final Lcom/android/extrasettings/applications/ProcStatsEntry$Service$1;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/ProcStatsEntry$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/extrasettings/applications/ProcStatsEntry$Service;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/extrasettings/applications/ProcStatsEntry$Service;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 350
    new-instance v0, Lcom/android/extrasettings/applications/ProcStatsEntry$Service;

    invoke-direct {v0, p1}, Lcom/android/extrasettings/applications/ProcStatsEntry$Service;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/applications/ProcStatsEntry$Service$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/extrasettings/applications/ProcStatsEntry$Service;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/extrasettings/applications/ProcStatsEntry$Service;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 354
    new-array v0, p1, [Lcom/android/extrasettings/applications/ProcStatsEntry$Service;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/applications/ProcStatsEntry$Service$1;->newArray(I)[Lcom/android/extrasettings/applications/ProcStatsEntry$Service;

    move-result-object v0

    return-object v0
.end method