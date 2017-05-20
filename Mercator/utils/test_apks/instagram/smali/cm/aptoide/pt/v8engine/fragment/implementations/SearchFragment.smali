.class public Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$BundleCons;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private buttonsLayout:Landroid/widget/LinearLayout;

.field private everywhereButton:Landroid/widget/Button;

.field private transient hasEverywhereResults:Z

.field private transient hasSubscribedResults:Z

.field private noSearchLayout:Landroid/view/View;

.field private noSearchLayoutSearchButton:Landroid/widget/ImageView;

.field private noSearchLayoutSearchQuery:Landroid/widget/EditText;

.field private onlyTrustedApps:Z

.field private query:Ljava/lang/String;

.field private selectedButton:I

.field private transient shouldFinishLoading:Z

.field private storeName:Ljava/lang/String;

.field private subscribedButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->shouldFinishLoading:Z

    .line 63
    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->selectedButton:I

    .line 66
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 68
    return-void
.end method

.method private handleFinishLoading(Z)V
    .locals 3

    .prologue
    .line 182
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->shouldFinishLoading:Z

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->shouldFinishLoading:Z

    .line 199
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setupButtonVisibility()V

    .line 186
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setupButtonsListeners()V

    .line 187
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setupViewPager()V

    .line 188
    if-eqz p1, :cond_1

    .line 190
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setupAbTest()Lrx/d;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;)Lrx/b/b;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->finishLoading()V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->newInstance(Ljava/lang/String;Z)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v1, "query"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "storeName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;-><init>()V

    .line 92
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v1, "query"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "onlyTrustedApps"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;-><init>()V

    .line 81
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v1
.end method

.method private setButtonBackgrounds(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 140
    if-nez p1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButtonListener()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    if-ne p1, v0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButtonListener(Z)Ljava/lang/Void;

    goto :goto_0
.end method

.method private setTabAccordingAbTest(Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest",
            "<",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;->alternative()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->chooseTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButtonListener(Z)Ljava/lang/Void;

    .line 217
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setupAbTest()Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasEverywhereResults:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->getInstance()Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;

    move-result-object v0

    const-string v1, "search-result"

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;->participate()Lrx/d;

    move-result-object v1

    .line 206
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;)Lrx/b/e;

    move-result-object v0

    .line 207
    invoke-virtual {v1, v0}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method private setupButtonVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    :cond_2
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasEverywhereResults:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupButtonsListeners()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasEverywhereResults:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButton:Landroid/widget/Button;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :cond_1
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->bindViews(Landroid/view/View;)V

    .line 99
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->subscribed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    .line 100
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->everywhere:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButton:Landroid/widget/Button;

    .line 101
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->buttons_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->buttonsLayout:Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->no_search_results_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->noSearchLayout:Landroid/view/View;

    .line 103
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->search_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->noSearchLayoutSearchQuery:Landroid/widget/EditText;

    .line 104
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ic_search_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->noSearchLayoutSearchButton:Landroid/widget/ImageView;

    .line 105
    iget v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->selectedButton:I

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setButtonBackgrounds(I)V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setHasOptionsMenu(Z)V

    .line 107
    return-void
.end method

.method protected createPagerAdapter()Landroid/support/v4/view/z;
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getChildFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;-><init>(Landroid/support/v4/app/y;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getChildFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    iget-boolean v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    iget-boolean v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasEverywhereResults:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/SearchPagerAdapter;-><init>(Landroid/support/v4/app/y;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method protected everywhereButtonListener(Z)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 157
    iput v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->selectedButton:I

    .line 158
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->setCurrentItem(IZ)V

    .line 159
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButton:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->search_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->app_view_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected executeSearchRequests(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Search;->searchTerm(Ljava/lang/String;)V

    .line 223
    if-eqz p1, :cond_0

    .line 224
    iput-boolean v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->shouldFinishLoading:Z

    .line 225
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    .line 226
    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getSubscribedStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v1

    .line 227
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v3}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v0, p1, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->of(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    move-result-object v0

    .line 228
    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Z)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 283
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->onlyTrustedApps:Z

    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getSubscribedStoresIds()Ljava/util/List;

    move-result-object v3

    .line 241
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->of(Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Z)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 242
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 255
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->onlyTrustedApps:Z

    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getSubscribedStoresIds()Ljava/util/List;

    move-result-object v3

    .line 256
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->of(Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Z)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 257
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    goto :goto_0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 304
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->global_search_fragment:I

    return v0
.end method

.method protected getViewToShowAfterLoadingId()I
    .locals 1

    .prologue
    .line 354
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->search_results_layout:I

    return v0
.end method

.method synthetic lambda$executeSearchRequests$4(ZLcm/aptoide/pt/model/v7/ListSearchApps;)V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    .line 233
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->handleFinishLoading(Z)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    .line 236
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->handleFinishLoading(Z)V

    goto :goto_0
.end method

.method synthetic lambda$executeSearchRequests$5(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->finishLoading()V

    return-void
.end method

.method synthetic lambda$executeSearchRequests$6(ZLcm/aptoide/pt/model/v7/ListSearchApps;)V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    .line 247
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->handleFinishLoading(Z)V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    .line 250
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->handleFinishLoading(Z)V

    goto :goto_0
.end method

.method synthetic lambda$executeSearchRequests$7(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->finishLoading()V

    return-void
.end method

.method synthetic lambda$executeSearchRequests$8(ZLcm/aptoide/pt/model/v7/ListSearchApps;)V
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasEverywhereResults:Z

    .line 262
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->handleFinishLoading(Z)V

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasEverywhereResults:Z

    .line 265
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->handleFinishLoading(Z)V

    goto :goto_0
.end method

.method synthetic lambda$executeSearchRequests$9(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->finishLoading()V

    return-void
.end method

.method synthetic lambda$handleFinishLoading$1(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->finishLoading()V

    return-void
.end method

.method synthetic lambda$handleFinishLoading$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 193
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->finishLoading()V

    .line 194
    return-void
.end method

.method synthetic lambda$setupAbTest$3(Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;Lcom/seatgeek/sixpack/e;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setTabAccordingAbTest(Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setupButtonsListeners$10(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButtonListener()V

    return-void
.end method

.method synthetic lambda$setupButtonsListeners$11(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButtonListener(Z)Ljava/lang/Void;

    return-void
.end method

.method synthetic lambda$setupViewPager$0(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->noSearchLayoutSearchQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v1

    .line 124
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 123
    invoke-interface {v1, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 126
    :cond_0
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->executeSearchRequests(Ljava/lang/String;Z)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->handleFinishLoading(Z)V

    goto :goto_0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 310
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    .line 311
    const-string v0, "storeName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    .line 312
    const-string v0, "onlyTrustedApps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->onlyTrustedApps:Z

    .line 313
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 325
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 327
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->setupInsideStoreSearchView(Landroid/view/Menu;Lcm/aptoide/pt/navigation/NavigationManagerV4;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->setupGlobalSearchView(Landroid/view/Menu;Lcm/aptoide/pt/navigation/NavigationManagerV4;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 337
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 339
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 318
    const-string v0, "query"

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "storeName"

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "selectedbutton"

    iget v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->selectedButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 346
    if-eqz p2, :cond_0

    .line 347
    const-string v0, "query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    .line 348
    const-string v0, "storeName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->storeName:Ljava/lang/String;

    .line 349
    const-string v0, "selectedbutton"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->setButtonBackgrounds(I)V

    .line 351
    :cond_0
    return-void
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method protected setupViewPager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->setPagingEnabled(Z)V

    .line 112
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasSubscribedResults:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->hasEverywhereResults:Z

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->setupViewPager()V

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->query:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Search;->noSearchResults(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->noSearchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->noSearchLayoutSearchButton:Landroid/widget/ImageView;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected subscribedButtonListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iput v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->selectedButton:I

    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->setCurrentItem(I)V

    .line 150
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->search_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 151
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->subscribedButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->app_view_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->everywhereButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 154
    return-void
.end method
