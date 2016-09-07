.class public Lcom/mediatek/search/SearchExt;
.super Ljava/lang/Object;
.source "SearchExt.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/mediatek/search/SearchExt$1;

    invoke-direct {v0}, Lcom/mediatek/search/SearchExt$1;-><init>()V

    sput-object v0, Lcom/mediatek/search/SearchExt;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
