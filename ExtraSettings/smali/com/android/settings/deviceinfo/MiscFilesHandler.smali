.class public Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;)Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    .line 68
    const v1, 0x7f090868

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->setTitle(I)V

    .line 69
    const v1, 0x7f090869

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    .line 70
    const v1, 0x7f09086a

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    .line 71
    new-instance v1, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 72
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    const v1, 0x7f0400cc

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 75
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 76
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 77
    new-instance v1, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 78
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/extrasettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    return-void
.end method
