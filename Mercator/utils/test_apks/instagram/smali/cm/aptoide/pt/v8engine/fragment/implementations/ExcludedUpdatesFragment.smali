.class public Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "ExcludedUpdatesFragment.java"


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
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private emptyData:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    .line 33
    return-void
.end method

.method private fetchExcludedUpdates()V
    .locals 3

    .prologue
    .line 56
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->getAll(Z)Lrx/d;

    move-result-object v0

    .line 58
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 59
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;)Lrx/b/b;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 81
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$2(Lcm/aptoide/pt/database/realm/Update;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/realm/Update;->setExcluded(Z)V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$3(Lcm/aptoide/pt/database/accessors/UpdateAccessor;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->insertAll(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$4(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method public static newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->bindViews(Landroid/view/View;)V

    .line 45
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->empty_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->emptyData:Landroid/widget/TextView;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->setHasOptionsMenu(Z)V

    .line 47
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_with_toolbar:I

    return v0
.end method

.method synthetic lambda$fetchExcludedUpdates$0(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 61
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->emptyData:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->no_excluded_updates_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->emptyData:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 65
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->finishLoading()V

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->emptyData:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    .line 70
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;-><init>(Lcm/aptoide/pt/database/realm/Update;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    goto :goto_0
.end method

.method synthetic lambda$fetchExcludedUpdates$1(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->emptyData:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->no_excluded_updates_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->emptyData:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 79
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->finishLoading()V

    .line 80
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->load(ZZLandroid/os/Bundle;)V

    .line 51
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh excluded updates? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->fetchExcludedUpdates()V

    .line 53
    return-void

    .line 51
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 93
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_excluded_updates_fragment:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 94
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 99
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    move v0, v3

    .line 159
    :goto_0
    return v0

    .line 104
    :cond_0
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_restore_updates:I

    if-ne v0, v2, :cond_4

    .line 106
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v4

    .line 108
    :goto_1
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 110
    invoke-virtual {v4, v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;

    .line 111
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->emptyData:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->no_excluded_updates_selected:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    move v0, v3

    .line 118
    goto :goto_0

    .line 130
    :cond_3
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    .line 131
    invoke-static {v2}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lrx/d;->p()Lrx/d;

    move-result-object v1

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/UpdateAccessor;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 134
    invoke-virtual {v1, v0, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move v0, v3

    .line 138
    goto :goto_0

    .line 141
    :cond_4
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_select_all:I

    if-ne v0, v2, :cond_6

    .line 142
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v2

    .line 143
    :goto_2
    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 144
    invoke-virtual {v2, v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->setSelected(Z)V

    .line 145
    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v0, v3

    .line 147
    goto :goto_0

    .line 150
    :cond_6
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_select_none:I

    if-ne v0, v2, :cond_8

    .line 151
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v4

    move v2, v1

    .line 152
    :goto_3
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 153
    invoke-virtual {v4, v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->setSelected(Z)V

    .line 154
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 152
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_7
    move v0, v3

    .line 156
    goto/16 :goto_0

    .line 159
    :cond_8
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 88
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->excluded_updates:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 89
    return-void
.end method
