.class public Lcom/android/extrasettings/users/RestrictedProfileSettings;
.super Lcom/android/extrasettings/users/AppRestrictionsFragment;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Lcom/android/extrasettings/users/EditUserInfoController$OnContentChangedCallback;


# instance fields
.field private mDeleteButton:Landroid/widget/ImageView;

.field private mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

.field private mHeaderView:Landroid/view/View;

.field private mUserIconView:Landroid/widget/ImageView;

.field private mUserNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/extrasettings/users/AppRestrictionsFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/extrasettings/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/users/RestrictedProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/RestrictedProfileSettings;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->removeUser()V

    return-void
.end method

.method private removeUser()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/extrasettings/users/RestrictedProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings$2;-><init>(Lcom/android/extrasettings/users/RestrictedProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->setPinnedHeaderView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1001f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/android/extrasettings/users/AppRestrictionsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/android/extrasettings/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/extrasettings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->showDialog(I)V

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 128
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-super {p0, p1}, Lcom/android/extrasettings/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/extrasettings/users/AppRestrictionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->init(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    .line 136
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    iget-object v1, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f09028e

    iget-object v6, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/extrasettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v7

    .line 152
    :goto_0
    return-object v7

    .line 140
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    new-instance v2, Lcom/android/extrasettings/users/RestrictedProfileSettings$1;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings$1;-><init>(Lcom/android/extrasettings/users/RestrictedProfileSettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/extrasettings/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v7

    .line 149
    .local v7, "dlg":Landroid/app/Dialog;
    goto :goto_0

    .line 152
    .end local v7    # "dlg":Landroid/app/Dialog;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/extrasettings/users/AppRestrictionsFragment;->onResume()V

    .line 100
    iget-object v1, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lcom/android/extrasettings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 101
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->finishFragment()V

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/RestrictedProfileSettings;->getCircularUserIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/extrasettings/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/extrasettings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/extrasettings/users/EditUserInfoController;->startingActivityForResult()V

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void
.end method
