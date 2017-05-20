.class public abstract Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;
.source "StoreTabGridRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment$BundleCons;
    }
.end annotation


# instance fields
.field protected action:Ljava/lang/String;

.field protected layout:Lcm/aptoide/pt/model/v7/Layout;

.field protected name:Lcm/aptoide/pt/model/v7/Event$Name;

.field protected storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

.field protected storeTheme:Ljava/lang/String;

.field protected tag:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected type:Lcm/aptoide/pt/model/v7/Event$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;-><init>()V

    return-void
.end method

.method protected static buildBundle(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getType()Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "type"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getType()Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Event$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "name"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Event$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    const-string v1, "layout"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Layout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "action"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "storeTheme"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "tag"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method static synthetic lambda$load$0(Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 120
    invoke-interface {p0}, Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;->clearDisplayables()Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;

    .line 121
    return-void
.end method

.method public static newInstance(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->newInstance(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->buildBundle(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->choose(Lcm/aptoide/pt/model/v7/Event$Name;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method


# virtual methods
.method protected abstract buildDisplayables(ZLjava/lang/String;)Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;>;"
        }
    .end annotation
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 135
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->recycler_swipe_fragment_with_toolbar:I

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->getContentViewId()I

    move-result v0

    goto :goto_0
.end method

.method synthetic lambda$load$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 123
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->finishLoading(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->load(ZZLandroid/os/Bundle;)V

    .line 106
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 107
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->action:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->action:Ljava/lang/String;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->name:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->validateAcceptedName(Lcm/aptoide/pt/model/v7/Event$Name;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->name:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for event on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0, p2, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->buildDisplayables(ZLjava/lang/String;)Lrx/d;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_3

    .line 118
    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;)Lrx/b/b;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 127
    :cond_3
    return-void
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 87
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/model/v7/Event$Type;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->type:Lcm/aptoide/pt/model/v7/Event$Type;

    .line 90
    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/model/v7/Event$Name;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->name:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 93
    :cond_1
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/model/v7/Layout;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->layout:Lcm/aptoide/pt/model/v7/Layout;

    .line 96
    :cond_2
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->tag:Ljava/lang/String;

    .line 99
    :cond_3
    const-string v0, "title"

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/Translator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->title:Ljava/lang/String;

    .line 100
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->action:Ljava/lang/String;

    .line 101
    const-string v0, "storeTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->storeTheme:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getStoreRepository()Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    .line 83
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 152
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_empty:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->title:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/Translator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->logo_toolbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(I)V

    .line 148
    return-void
.end method

.method public setupViews()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->setupViews()V

    .line 165
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->setupToolbar()V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->setHasOptionsMenu(Z)V

    .line 167
    return-void
.end method
