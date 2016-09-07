.class Lcom/v/otouchpad/AllAppsListActivity$1;
.super Ljava/lang/Object;
.source "AllAppsListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v/otouchpad/AllAppsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/v/otouchpad/AllAppsListActivity;


# direct methods
.method constructor <init>(Lcom/v/otouchpad/AllAppsListActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/v/otouchpad/AllAppsListActivity$1;->this$0:Lcom/v/otouchpad/AllAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 60
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 55
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/v/otouchpad/AllAppsListActivity$1;->this$0:Lcom/v/otouchpad/AllAppsListActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/v/otouchpad/AllAppsListActivity;->filterData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/v/otouchpad/AllAppsListActivity;->access$000(Lcom/v/otouchpad/AllAppsListActivity;Ljava/lang/String;)V

    .line 50
    return-void
.end method
