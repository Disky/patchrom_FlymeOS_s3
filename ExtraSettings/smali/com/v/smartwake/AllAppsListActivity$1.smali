.class Lcom/v/smartwake/AllAppsListActivity$1;
.super Ljava/lang/Object;
.source "AllAppsListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v/smartwake/AllAppsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/v/smartwake/AllAppsListActivity;


# direct methods
.method constructor <init>(Lcom/v/smartwake/AllAppsListActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/v/smartwake/AllAppsListActivity$1;->this$0:Lcom/v/smartwake/AllAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 59
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 54
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/v/smartwake/AllAppsListActivity$1;->this$0:Lcom/v/smartwake/AllAppsListActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/v/smartwake/AllAppsListActivity;->filterData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/v/smartwake/AllAppsListActivity;->access$000(Lcom/v/smartwake/AllAppsListActivity;Ljava/lang/String;)V

    .line 49
    return-void
.end method
