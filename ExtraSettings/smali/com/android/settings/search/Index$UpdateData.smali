.class Lcom/android/extrasettings/search/Index$UpdateData;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateData"
.end annotation


# instance fields
.field public dataToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public dataToUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public forceUpdate:Z

.field public nonIndexableKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->forceUpdate:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/android/extrasettings/search/Index$UpdateData;)V
    .locals 2
    .param p1, "other"    # Lcom/android/extrasettings/search/Index$UpdateData;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->forceUpdate:Z

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/extrasettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/extrasettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/extrasettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 193
    iget-boolean v0, p1, Lcom/android/extrasettings/search/Index$UpdateData;->forceUpdate:Z

    iput-boolean v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->forceUpdate:Z

    .line 194
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    iget-object v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/search/Index$UpdateData;->forceUpdate:Z

    .line 205
    return-void
.end method

.method public copy()Lcom/android/extrasettings/search/Index$UpdateData;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/android/extrasettings/search/Index$UpdateData;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/search/Index$UpdateData;-><init>(Lcom/android/extrasettings/search/Index$UpdateData;)V

    return-object v0
.end method
