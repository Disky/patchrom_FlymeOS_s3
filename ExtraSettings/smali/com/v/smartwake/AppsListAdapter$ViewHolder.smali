.class Lcom/v/smartwake/AppsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v/smartwake/AppsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field appNameView:Landroid/widget/TextView;

.field iconView:Landroid/widget/ImageView;

.field stateView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/v/smartwake/AppsListAdapter;


# direct methods
.method constructor <init>(Lcom/v/smartwake/AppsListAdapter;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/v/smartwake/AppsListAdapter$ViewHolder;->this$0:Lcom/v/smartwake/AppsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
