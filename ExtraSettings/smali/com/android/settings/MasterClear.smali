.class public Lcom/android/extrasettings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mVolumeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 122
    new-instance v0, Lcom/android/extrasettings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/MasterClear$1;-><init>(Lcom/android/extrasettings/MasterClear;)V

    iput-object v0, p0, Lcom/android/extrasettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/extrasettings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/MasterClear;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/extrasettings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/MasterClear;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/extrasettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 144
    iget-object v5, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f100102

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 145
    iget-object v5, p0, Lcom/android/extrasettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/extrasettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v5, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f1000fe

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/extrasettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 147
    iget-object v5, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f1000ff

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/extrasettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 156
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 158
    .local v2, "isExtStorageEmulated":Z
    invoke-static {}, Lcom/mediatek/settings/UtilsExt;->isSomeStorageEmulated()Z

    move-result v3

    .line 159
    .local v3, "isSomeStorageEmulated":Z
    const-string v5, "MasterClear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isExtStorageEmulated="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isSomeStorageEmulated="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/extrasettings/MasterClear;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    :cond_0
    iget-object v5, p0, Lcom/android/extrasettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v5, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f1000fd

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 167
    .local v1, "externalOption":Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v5, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f1000f9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "externalAlsoErased":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v7, p0, Lcom/android/extrasettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v2, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    .end local v0    # "externalAlsoErased":Landroid/view/View;
    .end local v1    # "externalOption":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 186
    .local v4, "um":Landroid/os/UserManager;
    invoke-direct {p0, v4}, Lcom/android/extrasettings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 187
    return-void

    .end local v4    # "um":Landroid/os/UserManager;
    .restart local v0    # "externalAlsoErased":Landroid/view/View;
    .restart local v1    # "externalOption":Landroid/view/View;
    :cond_1
    move v5, v6

    .line 174
    goto :goto_0

    .line 176
    .end local v0    # "externalAlsoErased":Landroid/view/View;
    .end local v1    # "externalOption":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/extrasettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v6, Lcom/android/extrasettings/MasterClear$2;

    invoke-direct {v6, p0}, Lcom/android/extrasettings/MasterClear$2;-><init>(Lcom/android/extrasettings/MasterClear;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 190
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 35
    .param p1, "um"    # Landroid/os/UserManager;

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1000fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 196
    .local v9, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1000fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 197
    .local v12, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 200
    .local v13, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v26

    .line 201
    .local v26, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    .line 203
    .local v27, "profilesSize":I
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    .line 205
    .local v22, "mgr":Landroid/accounts/AccountManager;
    const-string v32, "layout_inflater"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 208
    .local v20, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .line 209
    .local v8, "accountsCount":I
    const/16 v25, 0x0

    .local v25, "profileIndex":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 210
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    .line 211
    .local v31, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    .line 212
    .local v24, "profileId":I
    new-instance v30, Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 213
    .local v30, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v7

    .line 214
    .local v7, "accounts":[Landroid/accounts/Account;
    array-length v5, v7

    .line 215
    .local v5, "N":I
    if-nez v5, :cond_1

    .line 209
    :cond_0
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 218
    :cond_1
    add-int/2addr v8, v5

    .line 220
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    .line 222
    .local v15, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v15

    .line 224
    .local v4, "M":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/extrasettings/MasterClear;->newTitleView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v29

    .line 225
    .local v29, "titleView":Landroid/view/View;
    const v32, 0x1020016

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 226
    .local v28, "titleText":Landroid/widget/TextView;
    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v32

    if-eqz v32, :cond_3

    const v32, 0x7f09043a

    :goto_1
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v5, :cond_0

    .line 231
    aget-object v6, v7, v18

    .line 232
    .local v6, "account":Landroid/accounts/Account;
    const/4 v14, 0x0

    .line 233
    .local v14, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v4, :cond_2

    .line 234
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    aget-object v33, v15, v21

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 235
    aget-object v14, v15, v21

    .line 239
    :cond_2
    if-nez v14, :cond_5

    .line 240
    const-string v32, "MasterClear"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "No descriptor for account name="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " type="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 226
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v18    # "i":I
    .end local v21    # "j":I
    :cond_3
    const v32, 0x7f090439

    goto :goto_1

    .line 233
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .restart local v18    # "i":I
    .restart local v21    # "j":I
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 244
    :cond_5
    const/16 v19, 0x0

    .line 246
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 247
    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 249
    .local v10, "authContext":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 256
    .end local v10    # "authContext":Landroid/content/Context;
    :cond_6
    :goto_5
    const v32, 0x7f040076

    const/16 v33, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 258
    .local v11, "child":Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    if-eqz v19, :cond_7

    .line 260
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_7
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 252
    .end local v11    # "child":Landroid/widget/TextView;
    :catch_0
    move-exception v16

    .line 253
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v32, "MasterClear"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "No icon for account type "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 266
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "accounts":[Landroid/accounts/Account;
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v15    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "i":I
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "j":I
    .end local v24    # "profileId":I
    .end local v28    # "titleText":Landroid/widget/TextView;
    .end local v29    # "titleView":Landroid/view/View;
    .end local v30    # "userHandle":Landroid/os/UserHandle;
    .end local v31    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    if-lez v8, :cond_9

    .line 267
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1000fc

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 272
    .local v23, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v32

    sub-int v32, v32, v27

    if-lez v32, :cond_a

    const/16 v17, 0x1

    .line 273
    .local v17, "hasOtherUsers":Z
    :goto_6
    if-eqz v17, :cond_b

    const/16 v32, 0x0

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    return-void

    .line 272
    .end local v17    # "hasOtherUsers":Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_6

    .line 273
    .restart local v17    # "hasOtherUsers":Z
    :cond_b
    const/16 v32, 0x8

    goto :goto_7
.end method

.method private newTitleView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    .line 297
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 300
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 302
    .local v1, "resId":I
    invoke-virtual {p2, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/extrasettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/4 v2, 0x0

    const v3, 0x7f0904fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/extrasettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/android/extrasettings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 112
    const v1, 0x7f0904fd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 113
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/extrasettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/extrasettings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 115
    return-void
.end method

.method private updateTextLable()V
    .locals 6

    .prologue
    .line 306
    iget-object v3, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f1000fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 308
    .local v0, "externalOption1":Landroid/widget/TextView;
    const v3, 0x7f0904f4

    iget-object v4, p0, Lcom/android/extrasettings/MasterClear;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/settings/UtilsExt;->getVolumeString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v3, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f100100

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 312
    .local v1, "externalOption2":Landroid/widget/TextView;
    const v3, 0x7f0904f5

    iget-object v4, p0, Lcom/android/extrasettings/MasterClear;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/settings/UtilsExt;->getVolumeString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f100101

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 316
    .local v2, "externalOption3":Landroid/widget/TextView;
    const v3, 0x7f0904f6

    iget-object v4, p0, Lcom/android/extrasettings/MasterClear;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/settings/UtilsExt;->getVolumeString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/extrasettings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/android/extrasettings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    const v0, 0x7f040078

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 285
    :cond_1
    const v0, 0x7f040075

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    .line 288
    invoke-virtual {p0}, Lcom/android/extrasettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getVolumeDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/MasterClear;->mVolumeDescription:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/android/extrasettings/MasterClear;->updateTextLable()V

    .line 292
    invoke-direct {p0}, Lcom/android/extrasettings/MasterClear;->establishInitialState()V

    .line 293
    iget-object v0, p0, Lcom/android/extrasettings/MasterClear;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
