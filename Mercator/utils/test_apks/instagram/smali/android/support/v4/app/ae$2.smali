.class final Landroid/support/v4/app/ae$2;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/ae$b;Landroid/view/View;Landroid/support/v4/app/ae$a;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/transition/Transition;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v4/app/ae$b;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/ae$b;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Landroid/support/v4/app/ae$2;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v4/app/ae$2;->b:Landroid/transition/Transition;

    iput-object p3, p0, Landroid/support/v4/app/ae$2;->c:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/ae$2;->d:Landroid/support/v4/app/ae$b;

    iput-object p5, p0, Landroid/support/v4/app/ae$2;->e:Ljava/util/Map;

    iput-object p6, p0, Landroid/support/v4/app/ae$2;->f:Ljava/util/Map;

    iput-object p7, p0, Landroid/support/v4/app/ae$2;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Landroid/support/v4/app/ae$2;->h:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 163
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->b:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->b:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/ae$2;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->d:Landroid/support/v4/app/ae$b;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->d:Landroid/support/v4/app/ae$b;

    invoke-interface {v0}, Landroid/support/v4/app/ae$b;->a()Landroid/view/View;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_3

    .line 169
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->f:Ljava/util/Map;

    invoke-static {v0, v2}, Landroid/support/v4/app/ae;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/ae$2;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->e:Ljava/util/Map;

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    iget-object v4, p0, Landroid/support/v4/app/ae$2;->f:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 176
    if-eqz v1, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->b:Landroid/transition/Transition;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->g:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/support/v4/app/ae;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/ae$2;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/ae$2;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->b:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/ae$2;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/ae;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 190
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/ae$2;->h:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/ae$2;->b:Landroid/transition/Transition;

    iget-object v2, p0, Landroid/support/v4/app/ae$2;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/app/ae;->a(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 192
    return v5
.end method
