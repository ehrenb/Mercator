.class public abstract Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;
.source "BaseRecyclerViewFragment.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
.implements Lcm/aptoide/pt/v8engine/interfaces/LifecycleSchim;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">",
        "Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;",
        "Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;",
        "Lcm/aptoide/pt/v8engine/interfaces/LifecycleSchim;"
    }
.end annotation


# instance fields
.field private adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private displayables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Landroid/support/v7/widget/RecyclerView$h;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addDisplayable(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->addDisplayable(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 83
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 85
    if-eqz p3, :cond_0

    .line 86
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->finishLoading()V

    .line 88
    :cond_0
    return-object p0
.end method

.method public addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 94
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->finishLoading()V

    .line 99
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addDisplayable(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayable(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 72
    return-void
.end method

.method public addDisplayables(ILjava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;Z)",
            "Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->addDisplayables(ILjava/util/List;)V

    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 119
    if-eqz p3, :cond_0

    .line 120
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->finishLoading()V

    .line 122
    :cond_0
    return-object p0
.end method

.method public addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;Z)",
            "Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->addDisplayables(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->finishLoading()V

    .line 111
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addDisplayables(ILjava/util/List;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(ILjava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public addDisplayables(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 77
    return-void
.end method

.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->bindViews(Landroid/view/View;)V

    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 49
    return-void
.end method

.method public clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->clearDisplayables()V

    .line 127
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    return-object p0
.end method

.method public bridge synthetic clearDisplayables()Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract createLayoutManager()Landroid/support/v7/widget/RecyclerView$h;
.end method

.method public getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->recycler_fragment:I

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 145
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 152
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->clearDisplayables()V

    .line 155
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->displayables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->addDisplayables(Ljava/util/List;)V

    .line 158
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->finishLoading()V

    goto :goto_0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onDestroyView()V

    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onDestroyView()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 61
    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 62
    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onPause()V

    .line 192
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onPause()V

    .line 195
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onResume()V

    .line 185
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onResume()V

    .line 188
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onViewCreated()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onViewCreated()V

    .line 176
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->createAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->onViewCreated()V

    .line 141
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->setupViews()V

    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->createLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 44
    return-void
.end method
