.class Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateExpandableAdapter"
.end annotation


# instance fields
.field private mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 284
    new-instance v0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/extrasettings/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    .line 285
    invoke-virtual {p0}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->load()V

    .line 286
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Lcom/android/extrasettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/android/extrasettings/TrustedCredentialsSettings$1;

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 363
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 366
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 368
    .local v1, "resId":I
    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getChild(II)Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 317
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->access$1400(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/android/extrasettings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p4, p5}, Lcom/android/extrasettings/TrustedCredentialsSettings;->access$1500(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 298
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 301
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 305
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 326
    if-nez p3, :cond_0

    .line 327
    iget-object v4, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/extrasettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 329
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0, p4}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 332
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x1020016

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 334
    .local v1, "profile":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/extrasettings/TrustedCredentialsSettings;->access$1300(Lcom/android/extrasettings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 335
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    const v4, 0x7f09043a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 340
    :goto_0
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 342
    return-object p3

    .line 338
    :cond_1
    const v4, 0x7f090439

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getListViewId(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 360
    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mExpandableList:I
    invoke-static {p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    return-void
.end method

.method public remove(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V

    .line 290
    return-void
.end method
