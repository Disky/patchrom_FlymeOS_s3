.class public Lcom/android/extrasettings/dashboard/SearchResultsSummary;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C


# instance fields
.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->ELLIPSIS:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 508
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 370
    iput-object v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 374
    iput-object v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 376
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 337
    iput-object v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 339
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 340
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 319
    iput-object v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 321
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 322
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    const/4 v3, 0x0

    .line 364
    :goto_0
    return-object v3

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 358
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 359
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 357
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 364
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private saveQueryToDatabase()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/extrasettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/search/Index;->addSavedQuery(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 347
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 276
    :cond_0
    return-void

    .line 274
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 329
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    :cond_0
    return-void

    .line 268
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 389
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 390
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, v3}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 392
    invoke-direct {p0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Lcom/android/extrasettings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 395
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 380
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 381
    invoke-direct {p0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_0
    new-instance v0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/extrasettings/dashboard/SearchResultsSummary;Lcom/android/extrasettings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 384
    iget-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance v0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 123
    new-instance v0, Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 128
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 165
    const v1, 0x7f0400c0

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1001ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 168
    const v1, 0x7f1001ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 170
    const v1, 0x7f1001ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 171
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/extrasettings/dashboard/SearchResultsSummary$1;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400c1

    iget-object v4, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 225
    const v1, 0x7f1001ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 226
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/extrasettings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400c2

    iget-object v4, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 250
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->clearSuggestions()V

    .line 146
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->clearResults()V

    .line 148
    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 149
    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 150
    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 152
    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 153
    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/extrasettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 154
    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/extrasettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 156
    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 159
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "newQuery":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iput-boolean v2, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 299
    invoke-direct {p0, v2}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 300
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 307
    :goto_0
    return v3

    .line 302
    :cond_0
    iput-boolean v3, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 303
    invoke-direct {p0, v2}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 304
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 285
    invoke-direct {p0, v1}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 286
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->updateSearchResults()V

    .line 287
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    .line 289
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 257
    iget-boolean v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    .line 260
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 140
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 264
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 312
    const-string v0, ""

    iput-object v0, p0, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Lcom/android/extrasettings/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 314
    return-void
.end method
