.class public Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$BundleCons;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final PRIVATE_STORE_REQUEST_CODE:I

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private getStore:Lcm/aptoide/pt/model/v7/store/GetStore;

.field protected pagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

.field private storeContext:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field private storeName:Ljava/lang/String;

.field private storeTheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;-><init>()V

    .line 62
    const/16 v0, 0x14

    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->PRIVATE_STORE_REQUEST_CODE:I

    .line 71
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$400(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$500(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$600(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$700(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$800(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic lambda$setupViewPager$3(Landroid/support/v4/app/y;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;-><init>()V

    const-string v1, "addStoreDialog"

    invoke-virtual {v0, p0, v1}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->store:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->newInstance(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v1, "storeName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "storeContext"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 100
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;-><init>()V

    .line 101
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string v1, "storeName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "storeContext"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 84
    const-string v1, "storeTheme"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;-><init>()V

    .line 86
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->store:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    invoke-static {p0, v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->newInstance(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createPagerAdapter()Landroid/support/v4/view/z;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getChildFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getStore:Lcm/aptoide/pt/model/v7/store/GetStore;

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;-><init>(Landroid/support/v4/app/y;Lcm/aptoide/pt/model/v7/store/GetStore;)V

    return-object v0
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 254
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->store_activity:I

    return v0
.end method

.method protected getViewToShowAfterLoadingId()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_bar_layout:I

    return v0
.end method

.method synthetic lambda$load$0(Lcm/aptoide/pt/model/v7/store/GetStore;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getStore:Lcm/aptoide/pt/model/v7/store/GetStore;

    .line 129
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setupViewPager()V

    .line 130
    return-void
.end method

.method synthetic lambda$load$1(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 131
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    if-eqz v0, :cond_2

    .line 132
    check-cast p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    .line 134
    const-string v1, "STORE-3"

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "STORE-4"

    .line 136
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    const-string v1, "PrivateStoreDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    .line 139
    if-nez v0, :cond_1

    .line 140
    const/16 v0, 0x14

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 141
    invoke-static {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->newInstance(Landroid/support/v4/app/Fragment;ILjava/lang/String;Z)Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    const-string v2, "PrivateStoreDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/t;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->finishLoading(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method synthetic lambda$setupViewPager$2(Lcm/aptoide/pt/v8engine/StorePagerAdapter;I)V
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getUserTimeline:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {p1, p2}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->getEventName(I)Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Event$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getChildFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 177
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

    if-eqz v2, :cond_0

    .line 178
    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->goToTop()V

    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 121
    if-nez p1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getStore:Lcm/aptoide/pt/model/v7/store/GetStore;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeName:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentials(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeContext:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    .line 123
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v3}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 125
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 126
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Lrx/b/b;

    move-result-object v2

    .line 127
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setupViewPager()V

    goto :goto_0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "storeName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeName:Ljava/lang/String;

    .line 249
    const-string v0, "storeContext"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeContext:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    .line 250
    const-string v0, "storeTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeTheme:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 261
    packed-switch p2, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->load(ZZLandroid/os/Bundle;)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 271
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 273
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setupSearch(Landroid/view/Menu;)V

    .line 274
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeTheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStoreTheme(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeTheme:Ljava/lang/String;

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStatusBarThemeColor(Landroid/app/Activity;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    .line 113
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onDestroy()V

    .line 240
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeTheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    .line 242
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultTheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStatusBarThemeColor(Landroid/app/Activity;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeTheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeContext:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->store:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setAptoideTheme(Landroid/app/Activity;)V

    .line 159
    :cond_0
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onDestroyView()V

    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 277
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 279
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupSearch(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->setupInsideStoreSearchView(Landroid/view/Menu;Lcm/aptoide/pt/navigation/NavigationManagerV4;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public setupToolbar()V
    .locals 3

    .prologue
    .line 305
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->setupToolbar()V

    .line 307
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCALYTICS TESTING - STORES ACTION ENTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeName:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Stores;->enter(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method protected setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->storeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->ic_store:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(I)V

    .line 302
    return-void
.end method

.method protected setupViewPager()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->setupViewPager()V

    .line 164
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->tabs:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->pagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    .line 166
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->pagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->pagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    .line 174
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->pagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;Lcm/aptoide/pt/v8engine/StorePagerAdapter;)Lcom/astuetz/PagerSlidingTabStrip$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setOnTabReselectedListener(Lcom/astuetz/PagerSlidingTabStrip$b;)V

    .line 187
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->getCurrentItem()I

    move-result v1

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myStores:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->getEventNamePosition(Lcm/aptoide/pt/model/v7/Event$Name;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$4;->lambdaFactory$(Landroid/support/v4/app/y;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->a()V

    .line 200
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)V

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 231
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->finishLoading()V

    .line 232
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->b()V

    goto :goto_0
.end method

.method public setupViews()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->setupViews()V

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setHasOptionsMenu(Z)V

    .line 293
    return-void
.end method
