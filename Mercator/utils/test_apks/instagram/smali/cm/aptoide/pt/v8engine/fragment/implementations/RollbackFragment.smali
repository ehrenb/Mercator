.class public Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "RollbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final dateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private emptyData:Landroid/widget/TextView;

.field private installManager:Lcm/aptoide/pt/v8engine/install/Installer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    sget-object v2, Lcm/aptoide/pt/utils/AptoideUtils$LocaleU;->DEFAULT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$lambda$0(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)V
    .locals 0

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->fetchRollbacks()V

    return-void
.end method

.method private createDisplayables(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 117
    const-wide/16 v2, 0x0

    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 119
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    .line 120
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    .line 121
    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    .line 123
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterRowDisplayable;

    sget-object v3, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterRowDisplayable;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v4

    .line 125
    :cond_0
    new-instance v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->installManager:Lcm/aptoide/pt/v8engine/install/Installer;

    invoke-direct {v4, v5, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;-><init>(Lcm/aptoide/pt/v8engine/install/Installer;Lcm/aptoide/pt/database/realm/Rollback;)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$LocaleU;->DEFAULT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 129
    return-object v6
.end method

.method private fetchRollbacks()V
    .locals 2

    .prologue
    .line 96
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;

    .line 97
    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->getConfirmedRollbacks()Lrx/d;

    move-result-object v0

    .line 98
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)Lrx/b/e;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 100
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 101
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)Lrx/b/b;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 113
    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->bindViews(Landroid/view/View;)V

    .line 84
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->empty_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->emptyData:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->setHasOptionsMenu(Z)V

    .line 87
    new-instance v0, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->installManager:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 88
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_with_toolbar:I

    return v0
.end method

.method synthetic lambda$fetchRollbacks$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->createDisplayables(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$fetchRollbacks$1(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 103
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->emptyData:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->no_rollbacks_msg:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 104
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->emptyData:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->finishLoading()V

    .line 112
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->emptyData:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    goto :goto_0
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->load(ZZLandroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_clear:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 64
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 75
    :goto_0
    return v0

    .line 67
    :cond_0
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_clear:I

    if-ne v1, v2, :cond_1

    .line 69
    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-static {v1}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/database/accessors/Accessor;->removeAll()V

    .line 70
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 71
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->finishLoading()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->rollback:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 54
    return-void
.end method
