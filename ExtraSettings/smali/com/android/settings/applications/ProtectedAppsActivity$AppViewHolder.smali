.class Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppViewHolder;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppViewHolder"
.end annotation


# instance fields
.field public final checkBox:Landroid/widget/CheckBox;

.field public final container:Landroid/view/View;

.field public final icon:Landroid/widget/ImageView;

.field public final launch:Landroid/view/View;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppViewHolder;->container:Landroid/view/View;

    .line 326
    const v0, 0x7f100003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppViewHolder;->icon:Landroid/widget/ImageView;

    .line 327
    const v0, 0x7f100005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppViewHolder;->title:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f100116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    .line 329
    const v0, 0x7f1000ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 330
    return-void
.end method
