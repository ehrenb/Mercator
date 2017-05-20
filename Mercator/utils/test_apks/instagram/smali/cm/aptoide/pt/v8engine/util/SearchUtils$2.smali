.class final Lcm/aptoide/pt/v8engine/util/SearchUtils$2;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$d;


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

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$2;->val$searchView:Landroid/support/v7/widget/SearchView;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$2;->val$navigationManager:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$2;->val$createSearchFragmentInterface:Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$2;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getSuggestionsAdapter()Landroid/support/v4/widget/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 71
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$2;->val$navigationManager:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$2;->val$createSearchFragmentInterface:Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;->create(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-interface {v1, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 73
    return v3
.end method

.method public onSuggestionSelect(I)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
