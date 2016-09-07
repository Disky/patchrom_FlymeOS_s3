.class Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryMearurementAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSize:J

.field final synthetic this$0:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V
    .locals 8
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    .line 195
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    .line 199
    iput-object p2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "storage_volume"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 202
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-static {p2, v3}, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/extrasettings/deviceinfo/StorageMeasurement;

    move-result-object v2

    .line 204
    .local v2, "mMeasurement":Lcom/android/extrasettings/deviceinfo/StorageMeasurement;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    if-nez v4, :cond_1

    .line 231
    :cond_0
    return-void

    .line 206
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    .line 207
    new-instance v4, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;-><init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->setCallBack(Lcom/android/extrasettings/deviceinfo/StorageMeasurement$ICallBack;)V

    .line 226
    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;

    .line 228
    .local v1, "info":Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;
    iget-wide v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    iget-wide v6, v1, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    return-wide p1
.end method

.method static synthetic access$414(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    return-wide v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSize()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    return-wide v0
.end method

.method public getItem(I)Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 249
    :cond_0
    const-wide/16 v0, 0x0

    .line 251
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;

    iget-wide v0, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;->mId:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 275
    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->access$500(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400cb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;

    move-object v3, v4

    .line 278
    .end local p2    # "convertView":Landroid/view/View;
    .local v3, "view":Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    .line 279
    .local v0, "item":Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;
    iget-object v4, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;->setFileName(Ljava/lang/String;)V

    .line 280
    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    iget-wide v6, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;->setFileSize(Ljava/lang/String;)V

    move-object v2, p3

    .line 281
    check-cast v2, Landroid/widget/ListView;

    .line 282
    .local v2, "listView":Landroid/widget/ListView;
    move v1, p1

    .line 283
    .local v1, "listPosition":I
    invoke-virtual {v3}, Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;-><init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 291
    new-instance v4, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;-><init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/extrasettings/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 301
    new-instance v4, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;-><init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/extrasettings/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-object v3

    .line 275
    .end local v0    # "item":Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;
    .end local v1    # "listPosition":I
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "view":Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    check-cast p2, Lcom/android/extrasettings/deviceinfo/FileItemInfoLayout;

    move-object v3, p2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 271
    return-void
.end method

.method public removeAll(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "objs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 262
    :cond_0
    return-void

    .line 258
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 259
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    iget-wide v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    check-cast v1, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;

    .end local v1    # "o":Ljava/lang/Object;
    iget-wide v4, v1, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    goto :goto_0
.end method
