.class public Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "BaseAdapter.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/LifecycleSchim;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;",
        ">;",
        "Lcm/aptoide/pt/v8engine/interfaces/LifecycleSchim;"
    }
.end annotation


# instance fields
.field private final displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 27
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;-><init>()V

    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->add(Ljava/util/List;)V

    .line 24
    return-void
.end method


# virtual methods
.method public addDisplayable(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public addDisplayables(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;ILjava/util/List;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void
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

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public clearDisplayables()V
    .locals 1

    .prologue
    .line 115
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->get(Ljava/lang/Integer;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->get(Ljava/lang/Integer;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getViewLayout()I

    move-result v0

    return v0
.end method

.method synthetic lambda$addDisplayable$0(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->add(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 75
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method synthetic lambda$addDisplayable$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->add(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyItemInserted(I)V

    .line 83
    return-void
.end method

.method synthetic lambda$addDisplayables$2(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->add(Ljava/util/List;)V

    .line 89
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method synthetic lambda$addDisplayables$3(ILjava/util/List;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->add(ILjava/util/List;)V

    .line 96
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyItemRangeInserted(II)V

    .line 97
    return-void
.end method

.method synthetic lambda$clearDisplayables$6()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->clear()V

    .line 117
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method synthetic lambda$removeDisplayable$5(I)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->remove(I)V

    .line 110
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyItemRemoved(I)V

    .line 111
    return-void
.end method

.method synthetic lambda$removeDisplayables$4(II)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->remove(II)I

    move-result v0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyItemRangeRemoved(II)V

    .line 104
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onBindViewHolder(Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;I)V

    return-void
.end method

.method public onBindViewHolder(Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;I)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->get(Ljava/lang/Integer;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->internalBindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 37
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
    .locals 1

    .prologue
    .line 31
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->newBaseViewHolder(Landroid/view/ViewGroup;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->onDestroyView()V

    .line 139
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->onPause()V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->onResume()V

    .line 127
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public onViewCreated()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->onViewCreated()V

    .line 135
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->onViewRecycled(Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;)V

    return-void
.end method

.method public onViewRecycled(Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->unbindView()V

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$v;)V

    .line 54
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public popDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->pop()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->displayables:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyItemRemoved(I)V

    .line 65
    return-object v0
.end method

.method public removeDisplayable(I)V
    .locals 1

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public removeDisplayables(II)V
    .locals 1

    .prologue
    .line 101
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;II)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
