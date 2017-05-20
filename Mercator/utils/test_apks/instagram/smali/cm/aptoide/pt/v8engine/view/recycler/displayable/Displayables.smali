.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;
.super Ljava/lang/Object;
.source "Displayables.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/LifecycleSchim;


# instance fields
.field private final displayables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private final temporaryDisplayables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    .line 28
    return-void
.end method

.method private addDisplayableGroup(ILcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 57
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 58
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 59
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 61
    instance-of v2, v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 69
    return-void
.end method

.method private addDisplayableGroup(Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 93
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 95
    instance-of v1, v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->temporaryDisplayables:Ljava/util/Queue;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method private shouldIgnore(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)Z
    .locals 1

    .prologue
    .line 49
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;

    return v0
.end method


# virtual methods
.method public add(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->shouldIgnore(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    instance-of v0, p2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    if-eqz v0, :cond_1

    .line 42
    check-cast p2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->addDisplayableGroup(ILcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public add(ILjava/util/List;)V
    .locals 2
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
    .line 31
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 34
    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->add(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public add(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->shouldIgnore(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->addDisplayableGroup(Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Ljava/util/List;)V
    .locals 2
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
    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 73
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->add(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    return-void
.end method

.method public get(Ljava/lang/Integer;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 179
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->onDestroyView()V

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 167
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->onPause()V

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 161
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->onResume()V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 185
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public onViewCreated()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 173
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->onViewCreated()V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 191
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->onViewStateRestored(Landroid/os/Bundle;)V

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public pop()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(II)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-lt p2, p1, :cond_2

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->size()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 128
    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p1

    .line 129
    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->remove(I)V

    .line 131
    const/4 v0, 0x1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    :goto_1
    if-ge v1, v0, :cond_0

    .line 134
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public remove(I)V
    .locals 1

    .prologue
    .line 146
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayables;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
