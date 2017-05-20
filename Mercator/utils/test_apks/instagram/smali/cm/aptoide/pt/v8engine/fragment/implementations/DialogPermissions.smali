.class public Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;
.super Landroid/support/v4/app/t;
.source "DialogPermissions.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private getApp:Lcm/aptoide/pt/model/v7/GetApp;

.field private icon:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    return-void
.end method

.method public static newInstance(Lcm/aptoide/pt/model/v7/GetApp;)Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    .line 48
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;-><init>()V

    .line 49
    iput-object p0, v1, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getApp:Lcm/aptoide/pt/model/v7/GetApp;

    .line 50
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->appName:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVername()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->versionName:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->icon:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getFilesize()J

    move-result-wide v2

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcm/aptoide/pt/v8engine/util/AppUtils;->sumFileSizes(JLcm/aptoide/pt/model/v7/Obb;)J

    move-result-wide v2

    const/4 v0, 0x0

    .line 53
    invoke-static {v2, v3, v0}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->size:Ljava/lang/String;

    .line 55
    return-object v1
.end method


# virtual methods
.method synthetic lambda$onCreateDialog$0(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 67
    const v0, 0x103023a

    invoke-virtual {p0, v2, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->setStyle(II)V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 69
    const v0, 0x103006e

    invoke-virtual {p0, v2, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->setStyle(II)V

    goto :goto_0

    .line 71
    :cond_1
    const v0, 0x103000b

    invoke-virtual {p0, v2, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->setStyle(II)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->layout_dialog_permissions:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getActivity()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v2

    .line 81
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_ok_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_app_info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    sget v3, Lcm/aptoide/pt/v8engine/R$string;->dialog_version_size:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->size:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_app_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->appName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {p0}, Lcom/bumptech/glide/g;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->icon:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v3

    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_appview_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 91
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_table_permissions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 93
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getApp:Lcm/aptoide/pt/model/v7/GetApp;

    .line 94
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedPermissions()Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->parsePermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/AppUtils;->fillPermissionsGroups(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 102
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->no_permissions_required:I

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/a/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 111
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-object v2

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcm/aptoide/pt/v8engine/util/AppUtils;->fillPermissionsForTableLayout(Landroid/content/Context;Landroid/widget/TableLayout;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->dismiss()V

    .line 60
    invoke-super {p0}, Landroid/support/v4/app/t;->onPause()V

    .line 61
    return-void
.end method
