.class public Landroid/support/v7/preference/e;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/preference/h;",
        ">;",
        "Landroid/support/v7/preference/Preference$a;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/preference/PreferenceGroup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v7/preference/e$a;

.field private volatile f:Z

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 64
    new-instance v0, Landroid/support/v7/preference/e$a;

    invoke-direct {v0}, Landroid/support/v7/preference/e$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/e;->e:Landroid/support/v7/preference/e$a;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/e;->f:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/e;->g:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/support/v7/preference/e$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/e$1;-><init>(Landroid/support/v7/preference/e;)V

    iput-object v0, p0, Landroid/support/v7/preference/e;->h:Ljava/lang/Runnable;

    .line 111
    iput-object p1, p0, Landroid/support/v7/preference/e;->a:Landroid/support/v7/preference/PreferenceGroup;

    .line 113
    iget-object v0, p0, Landroid/support/v7/preference/e;->a:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceGroup;->a(Landroid/support/v7/preference/Preference$a;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/e;->b:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/e;->c:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/e;->d:Ljava/util/List;

    .line 119
    iget-object v0, p0, Landroid/support/v7/preference/e;->a:Landroid/support/v7/preference/PreferenceGroup;

    instance-of v0, v0, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v7/preference/e;->a:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/e;->setHasStableIds(Z)V

    .line 125
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/preference/e;->a()V

    .line 126
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/e;->setHasStableIds(Z)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/e$a;)Landroid/support/v7/preference/e$a;
    .locals 1

    .prologue
    .line 185
    if-eqz p2, :cond_0

    .line 186
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v7/preference/e$a;->a(Landroid/support/v7/preference/e$a;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->r()I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/preference/e$a;->a(Landroid/support/v7/preference/e$a;I)I

    .line 188
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->s()I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/preference/e$a;->b(Landroid/support/v7/preference/e$a;I)I

    .line 189
    return-object p2

    .line 185
    :cond_0
    new-instance p2, Landroid/support/v7/preference/e$a;

    invoke-direct {p2}, Landroid/support/v7/preference/e$a;-><init>()V

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/preference/e;->f:Z

    if-eqz v0, :cond_0

    .line 131
    monitor-exit p0

    .line 155
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/e;->f:Z

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/preference/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    iget-object v1, p0, Landroid/support/v7/preference/e;->a:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/e;->a(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 139
    iput-object v0, p0, Landroid/support/v7/preference/e;->c:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/preference/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/preference/e;->b:Ljava/util/List;

    .line 143
    iget-object v0, p0, Landroid/support/v7/preference/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 144
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Landroid/support/v7/preference/e;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 149
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/e;->notifyDataSetChanged()V

    .line 151
    monitor-enter p0

    .line 152
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/support/v7/preference/e;->f:Z

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic a(Landroid/support/v7/preference/e;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/preference/e;->a()V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->c()V

    .line 160
    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v3

    .line 161
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 162
    invoke-virtual {p2, v2}, Landroid/support/v7/preference/PreferenceGroup;->d(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 164
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0, v1}, Landroid/support/v7/preference/e;->c(Landroid/support/v7/preference/Preference;)V

    .line 168
    instance-of v0, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 169
    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 170
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/e;->a(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 175
    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$a;)V

    .line 161
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method

.method private c(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/e;->a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/e$a;)Landroid/support/v7/preference/e$a;

    move-result-object v0

    .line 194
    iget-object v1, p0, Landroid/support/v7/preference/e;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Landroid/support/v7/preference/e;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/preference/Preference;
    .locals 1

    .prologue
    .line 205
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/e;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/h;
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Landroid/support/v7/preference/e;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/e$a;

    .line 278
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 280
    invoke-static {v0}, Landroid/support/v7/preference/e$a;->a(Landroid/support/v7/preference/e$a;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 282
    const v1, 0x1020018

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 283
    if-eqz v1, :cond_0

    .line 284
    invoke-static {v0}, Landroid/support/v7/preference/e$a;->b(Landroid/support/v7/preference/e$a;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    invoke-static {v0}, Landroid/support/v7/preference/e$a;->b(Landroid/support/v7/preference/e$a;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 291
    :cond_0
    :goto_0
    new-instance v0, Landroid/support/v7/preference/h;

    invoke-direct {v0, v3}, Landroid/support/v7/preference/h;-><init>(Landroid/view/View;)V

    return-object v0

    .line 287
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/support/v7/preference/e;->notifyDataSetChanged()V

    .line 218
    return-void
.end method

.method public a(Landroid/support/v7/preference/h;I)V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/e;->a(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 297
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/h;)V

    .line 298
    return-void
.end method

.method public b(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/preference/e;->g:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/e;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Landroid/support/v7/preference/e;->g:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/e;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v7/preference/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/support/v7/preference/e;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const-wide/16 v0, -0x1

    .line 213
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/e;->a(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->y()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/e;->a(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 263
    iget-object v1, p0, Landroid/support/v7/preference/e;->e:Landroid/support/v7/preference/e$a;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/e;->a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/e$a;)Landroid/support/v7/preference/e$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/e;->e:Landroid/support/v7/preference/e$a;

    .line 265
    iget-object v0, p0, Landroid/support/v7/preference/e;->d:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/preference/e;->e:Landroid/support/v7/preference/e$a;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 266
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 271
    :goto_0
    return v0

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 270
    iget-object v1, p0, Landroid/support/v7/preference/e;->d:Ljava/util/List;

    new-instance v2, Landroid/support/v7/preference/e$a;

    iget-object v3, p0, Landroid/support/v7/preference/e;->e:Landroid/support/v7/preference/e$a;

    invoke-direct {v2, v3}, Landroid/support/v7/preference/e$a;-><init>(Landroid/support/v7/preference/e$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/support/v7/preference/h;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/e;->a(Landroid/support/v7/preference/h;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/e;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/h;

    move-result-object v0

    return-object v0
.end method
