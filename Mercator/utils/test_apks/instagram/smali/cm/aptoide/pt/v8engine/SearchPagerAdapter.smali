.class public Lcm/aptoide/pt/v8engine/SearchPagerAdapter;
.super Landroid/support/v4/app/ac;
.source "SearchPagerAdapter.java"


# instance fields
.field private final hasEverywhereResults:Z

.field private final hasSubscribedResults:Z

.field private final query:Ljava/lang/String;

.field private storeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, v0}, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;-><init>(Landroid/support/v4/app/y;Ljava/lang/String;ZZ)V

    .line 24
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->storeName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/y;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/app/ac;-><init>(Landroid/support/v4/app/y;)V

    .line 30
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->query:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->hasSubscribedResults:Z

    .line 32
    iput-boolean p4, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->hasEverywhereResults:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 62
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->storeName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 67
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->hasSubscribedResults:Z

    if-eqz v2, :cond_2

    .line 71
    :goto_1
    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->hasEverywhereResults:Z

    if-eqz v1, :cond_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 36
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->storeName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 37
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->query:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->storeName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchPagerTabFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->getCount()I

    move-result v2

    if-le v2, v1, :cond_5

    .line 40
    if-nez p1, :cond_2

    .line 41
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->query:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {v2, v3, v1, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchPagerTabFragment(Ljava/lang/String;ZZ)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    if-ne p1, v1, :cond_4

    .line 44
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->query:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_3

    :goto_1
    invoke-interface {v2, v3, v0, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchPagerTabFragment(Ljava/lang/String;ZZ)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SearchPagerAdapter should have 2 and only 2 pages!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_5
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->hasSubscribedResults:Z

    if-eqz v2, :cond_7

    .line 51
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->query:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_6

    move v0, v1

    :cond_6
    invoke-interface {v2, v3, v1, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchPagerTabFragment(Ljava/lang/String;ZZ)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_7
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->query:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_8

    :goto_2
    invoke-interface {v2, v3, v0, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchPagerTabFragment(Ljava/lang/String;ZZ)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_2
.end method
