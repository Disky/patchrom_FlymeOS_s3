.class Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 231
    add-int/lit8 p3, p3, -0x1

    .line 234
    if-gez p3, :cond_0

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;
    invoke-static {v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->access$700(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    move-result-object v1

    # getter for: Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;->access$800(Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 238
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 240
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    const/4 v2, 0x1

    # setter for: Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mShowResults:Z
    invoke-static {v1, v2}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->access$902(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Z)Z

    .line 241
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->access$1002(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->access$1100(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->access$1000(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
