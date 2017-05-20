.class public final Lio/realm/ag;
.super Ljava/util/AbstractList;
.source "RealmResults.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/ag$b;,
        Lio/realm/ag$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/ac;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Lio/realm/OrderedRealmCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:Lio/realm/a;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field private d:Lio/realm/internal/n;

.field private e:J

.field private final f:Lio/realm/internal/TableQuery;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/w",
            "<",
            "Lio/realm/ag",
            "<TE;>;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/n;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 78
    iput-object v2, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ag;->e:J

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ag;->g:Ljava/util/List;

    .line 87
    iput-boolean v3, p0, Lio/realm/ag;->i:Z

    .line 90
    iput-boolean v3, p0, Lio/realm/ag;->j:Z

    .line 126
    iput-object p1, p0, Lio/realm/ag;->a:Lio/realm/a;

    .line 127
    iput-object p3, p0, Lio/realm/ag;->b:Ljava/lang/Class;

    .line 128
    iput-object p2, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    .line 130
    iput-object v2, p0, Lio/realm/ag;->h:Ljava/util/concurrent/Future;

    .line 131
    iput-object v2, p0, Lio/realm/ag;->f:Lio/realm/internal/TableQuery;

    .line 132
    invoke-interface {p2}, Lio/realm/internal/n;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/ag;->e:J

    .line 133
    return-void
.end method

.method private constructor <init>(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0, p1, p3}, Lio/realm/ag;-><init>(Lio/realm/a;Ljava/lang/String;)V

    .line 145
    iput-object p2, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    .line 146
    invoke-interface {p2}, Lio/realm/internal/n;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/ag;->e:J

    .line 147
    return-void
.end method

.method private constructor <init>(Lio/realm/a;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 78
    iput-object v2, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ag;->e:J

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ag;->g:Ljava/util/List;

    .line 87
    iput-boolean v3, p0, Lio/realm/ag;->i:Z

    .line 90
    iput-boolean v3, p0, Lio/realm/ag;->j:Z

    .line 136
    iput-object p1, p0, Lio/realm/ag;->a:Lio/realm/a;

    .line 137
    iput-object p2, p0, Lio/realm/ag;->c:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lio/realm/ag;->h:Ljava/util/concurrent/Future;

    .line 140
    iput-object v2, p0, Lio/realm/ag;->f:Lio/realm/internal/TableQuery;

    .line 141
    return-void
.end method

.method static synthetic a(Lio/realm/ag;)J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lio/realm/ag;->e:J

    return-wide v0
.end method

.method static a(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/Class;)Lio/realm/ag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Lio/realm/a;",
            "Lio/realm/internal/n;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/ag",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lio/realm/ag;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/ag;-><init>(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/Class;)V

    .line 99
    iget-object v1, p0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v1, v0}, Lio/realm/l;->a(Lio/realm/ag;)V

    .line 100
    return-object v0
.end method

.method static a(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/String;)Lio/realm/ag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/n;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/ag",
            "<",
            "Lio/realm/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lio/realm/ag;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/ag;-><init>(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v1, v0}, Lio/realm/l;->a(Lio/realm/ag;)V

    .line 110
    return-object v0
.end method

.method static synthetic b(Lio/realm/ag;)Lio/realm/internal/n;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    return-object v0
.end method


# virtual methods
.method public a(I)Lio/realm/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 204
    invoke-virtual {p0}, Lio/realm/ag;->a()Lio/realm/internal/n;

    move-result-object v0

    .line 205
    instance-of v1, v0, Lio/realm/internal/TableView;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lio/realm/ag;->a:Lio/realm/a;

    iget-object v2, p0, Lio/realm/ag;->b:Ljava/lang/Class;

    iget-object v3, p0, Lio/realm/ag;->c:Ljava/lang/String;

    check-cast v0, Lio/realm/internal/TableView;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/TableView;->a(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/a;->a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/ac;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    iget-object v1, p0, Lio/realm/ag;->b:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/ag;->c:Ljava/lang/String;

    int-to-long v4, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lio/realm/a;->a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/ac;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILio/realm/ac;)Lio/realm/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a()Lio/realm/internal/n;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->f:Lio/realm/ah;

    iget-object v1, p0, Lio/realm/ag;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    goto :goto_0
.end method

.method a(J)V
    .locals 5

    .prologue
    .line 840
    :try_start_0
    iget-object v0, p0, Lio/realm/ag;->f:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/ag;->a:Lio/realm/a;

    iget-object v1, v1, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v1}, Lio/realm/internal/m;->i()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lio/realm/internal/TableQuery;->a(JJ)Lio/realm/internal/TableView;

    move-result-object v0

    iput-object v0, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ag;->i:Z
    :try_end_0
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Caller and Worker Realm should have been at the same version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lio/realm/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/w",
            "<",
            "Lio/realm/ag",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 924
    if-nez p1, :cond_0

    .line 925
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_0
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 928
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v0}, Lio/realm/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t register a listener from a non-Looper thread or IntentService thread. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_1
    iget-object v0, p0, Lio/realm/ag;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 932
    iget-object v0, p0, Lio/realm/ag;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lio/realm/ag;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lio/realm/ag;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/realm/ag;->i:Z

    if-nez v0, :cond_1

    .line 1017
    :cond_0
    return-void

    .line 1011
    :cond_1
    iget-boolean v0, p0, Lio/realm/ag;->j:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 1012
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ag;->j:Z

    .line 1013
    iget-object v0, p0, Lio/realm/ag;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/w;

    .line 1014
    invoke-interface {v0, p0}, Lio/realm/w;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lio/realm/ac;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    check-cast p2, Lio/realm/ac;

    invoke-virtual {p0, p1, p2}, Lio/realm/ag;->b(ILio/realm/ac;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    check-cast p1, Lio/realm/ac;

    invoke-virtual {p0, p1}, Lio/realm/ag;->a(Lio/realm/ac;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 690
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 701
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Lio/realm/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(ILio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 679
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lio/realm/w;)V
    .locals 2

    .prologue
    .line 944
    if-nez p1, :cond_0

    .line 945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_0
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 948
    iget-object v0, p0, Lio/realm/ag;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 949
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 255
    invoke-virtual {p0}, Lio/realm/ag;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lio/realm/ag;->a()Lio/realm/internal/n;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Lio/realm/internal/n;->c()V

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->m()J

    move-result-wide v2

    .line 629
    iget-wide v0, p0, Lio/realm/ag;->e:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/realm/ag;->j:Z

    .line 630
    iput-wide v2, p0, Lio/realm/ag;->e:J

    .line 631
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 657
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 183
    .line 184
    invoke-virtual {p0}, Lio/realm/ag;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lio/realm/internal/j;

    if-eqz v1, :cond_0

    .line 185
    check-cast p1, Lio/realm/internal/j;

    .line 186
    iget-object v1, p0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v1

    sget-object v2, Lio/realm/internal/f;->a:Lio/realm/internal/f;

    if-eq v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lio/realm/ag;->d:Lio/realm/internal/n;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/internal/n;->p(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 190
    :cond_0
    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 873
    iget-object v0, p0, Lio/realm/ag;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/realm/ag;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lio/realm/ag",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 988
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    instance-of v0, v0, Lio/realm/u;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->m()Lio/realm/a/b;

    move-result-object v1

    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    check-cast v0, Lio/realm/u;

    invoke-interface {v1, v0, p0}, Lio/realm/a/b;->a(Lio/realm/u;Lio/realm/ag;)Lrx/d;

    move-result-object v0

    .line 995
    :goto_0
    return-object v0

    .line 990
    :cond_0
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    instance-of v0, v0, Lio/realm/e;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lio/realm/ag;->a:Lio/realm/a;

    check-cast v0, Lio/realm/e;

    .line 994
    iget-object v1, p0, Lio/realm/ag;->a:Lio/realm/a;

    iget-object v1, v1, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->m()Lio/realm/a/b;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lio/realm/a/b;->a(Lio/realm/e;Lio/realm/ag;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 997
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support RxJava."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lio/realm/ag;->a(I)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lio/realm/ag;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/ag$a;

    invoke-direct {v0, p0}, Lio/realm/ag$a;-><init>(Lio/realm/ag;)V

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lio/realm/ag;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/ag$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/ag$b;-><init>(Lio/realm/ag;I)V

    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lio/realm/ag;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/ag$b;

    invoke-direct {v0, p0, p1}, Lio/realm/ag$b;-><init>(Lio/realm/ag;I)V

    goto :goto_0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lio/realm/ag;->b(I)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 575
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 599
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    check-cast p2, Lio/realm/ac;

    invoke-virtual {p0, p1, p2}, Lio/realm/ag;->a(ILio/realm/ac;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 372
    invoke-virtual {p0}, Lio/realm/ag;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lio/realm/ag;->a()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->b()J

    move-result-wide v0

    .line 376
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method
