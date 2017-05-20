.class public Lcm/aptoide/pt/v8engine/util/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$setupGlobalSearchView$0(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupInsideStoreSearchView$3(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupSearchView$1(Landroid/view/MenuItem;Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 80
    invoke-static {p0}, Landroid/support/v4/view/p;->c(Landroid/view/MenuItem;)Z

    .line 82
    invoke-static {}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->getInstance()Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->disconnect()V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic lambda$setupSearchView$2(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->getInstance()Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->connect()V

    return-void
.end method

.method public static setupGlobalSearchView(Landroid/view/Menu;Lcm/aptoide/pt/navigation/NavigationManagerV4;)V
    .locals 2

    .prologue
    .line 29
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->action_search:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->setupSearchView(Landroid/view/MenuItem;Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;)V

    .line 31
    return-void
.end method

.method public static setupInsideStoreSearchView(Landroid/view/Menu;Lcm/aptoide/pt/navigation/NavigationManagerV4;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->action_search:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$4;->lambdaFactory$(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->setupSearchView(Landroid/view/MenuItem;Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;)V

    .line 93
    return-void
.end method

.method private static setupSearchView(Landroid/view/MenuItem;Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;)V
    .locals 5

    .prologue
    .line 38
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 39
    invoke-static {p0}, Landroid/support/v4/view/p;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 40
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcm/aptoide/pt/v8engine/activity/SearchActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 43
    new-instance v0, Lcm/aptoide/pt/v8engine/util/SearchUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/util/SearchUtils$1;-><init>(Landroid/view/MenuItem;Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$c;)V

    .line 63
    new-instance v0, Lcm/aptoide/pt/v8engine/util/SearchUtils$2;

    invoke-direct {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/util/SearchUtils$2;-><init>(Landroid/support/v7/widget/SearchView;Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setOnSuggestionListener(Landroid/support/v7/widget/SearchView$d;)V

    .line 77
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$2;->lambdaFactory$(Landroid/view/MenuItem;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 86
    invoke-static {}, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$3;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
