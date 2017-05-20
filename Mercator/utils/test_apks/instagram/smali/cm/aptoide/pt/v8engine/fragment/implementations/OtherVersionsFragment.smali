.class public Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "OtherVersionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$BundleCons;,
        Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appImgUrl:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appPackge:Ljava/lang/String;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private header:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    .line 55
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 57
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "app_img_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "app_package"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->hasToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->bindViews(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    invoke-direct {v1, v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->header:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->setHasOptionsMenu(Z)V

    .line 94
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected fetchOtherVersions(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v0

    .line 124
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 125
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->appPackge:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 127
    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getSubscribedStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v6

    .line 126
    invoke-static {v3, p1, v4, v5, v6}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->of(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    move-result-object v3

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 130
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 132
    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_other_versions:I

    return v0
.end method

.method synthetic lambda$fetchOtherVersions$0(Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;)V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 119
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->addDisplayables(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other versions should refresh? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->fetchOtherVersions(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->setHeader()V

    .line 106
    return-void
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->appName:Ljava/lang/String;

    .line 80
    const-string v0, "app_img_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->appImgUrl:Ljava/lang/String;

    .line 81
    const-string v0, "app_package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->appPackge:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 153
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_empty:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 158
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onResume()V

    .line 110
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method protected setHeader()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->header:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->header:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->appImgUrl:Ljava/lang/String;

    # invokes: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->setImage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->appName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->setTitle(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method
