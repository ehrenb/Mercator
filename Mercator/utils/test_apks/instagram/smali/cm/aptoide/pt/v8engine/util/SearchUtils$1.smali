.class final Lcm/aptoide/pt/v8engine/util/SearchUtils$1;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/util/SearchUtils;->setupSearchView(Landroid/view/MenuItem;Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$createSearchFragmentInterface:Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;

.field final synthetic val$navigationManager:Lcm/aptoide/pt/navigation/NavigationManagerV4;

.field final synthetic val$searchItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Landroid/view/MenuItem;Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$1;->val$searchItem:Landroid/view/MenuItem;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$1;->val$navigationManager:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$1;->val$createSearchFragmentInterface:Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$1;->val$searchItem:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/p;->c(Landroid/view/MenuItem;)Z

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 49
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$1;->val$navigationManager:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$1;->val$createSearchFragmentInterface:Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;

    invoke-interface {v2, p1}, Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;->create(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-interface {v0, v2}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 55
    :goto_1
    return v1

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->search_minimum_chars:I

    invoke-static {v0, v2}, Lcm/aptoide/pt/utils/design/ShowMessage;->asToast(Landroid/content/Context;I)V

    goto :goto_1
.end method
