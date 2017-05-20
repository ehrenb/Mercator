.class public final Lio/realm/aa;
.super Ljava/util/AbstractList;
.source "RealmList.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/aa$b;,
        Lio/realm/aa$a;
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
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Lio/realm/internal/LinkView;

.field protected d:Lio/realm/a;

.field private final e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/aa;->e:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    .line 75
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lio/realm/internal/LinkView;",
            "Lio/realm/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/aa;->e:Z

    .line 104
    iput-object p1, p0, Lio/realm/aa;->a:Ljava/lang/Class;

    .line 105
    iput-object p2, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    .line 106
    iput-object p3, p0, Lio/realm/aa;->d:Lio/realm/a;

    .line 107
    return-void
.end method

.method public varargs constructor <init>([Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The objects argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/aa;->e:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method static synthetic a(Lio/realm/aa;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/aa;->modCount:I

    return v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lio/realm/aa;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/aa;->modCount:I

    return v0
.end method

.method private b(Lio/realm/ac;)Lio/realm/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 234
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 235
    check-cast v0, Lio/realm/internal/j;

    .line 237
    instance-of v1, v0, Lio/realm/f;

    if-eqz v1, :cond_4

    .line 238
    iget-object v1, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v1}, Lio/realm/internal/LinkView;->d()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v1}, Lio/realm/ah;->a(Lio/realm/internal/Table;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    .line 239
    check-cast v1, Lio/realm/f;

    invoke-virtual {v1}, Lio/realm/f;->c()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    iget-object v4, p0, Lio/realm/aa;->d:Lio/realm/a;

    if-ne v3, v4, :cond_2

    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object p1

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "The object has a different type from list\'s. Type of the list is \'%s\', type of object is \'%s\'."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_2
    iget-object v1, p0, Lio/realm/aa;->d:Lio/realm/a;

    iget-wide v2, v1, Lio/realm/a;->c:J

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    iget-wide v0, v0, Lio/realm/a;->c:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot copy DynamicRealmObject between Realm instances."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot copy an object to a Realm instance created in another thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_4
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 260
    iget-object v1, p0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot copy an object from another Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_5
    iget-object v0, p0, Lio/realm/aa;->d:Lio/realm/a;

    check-cast v0, Lio/realm/u;

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 271
    invoke-virtual {v0, p1}, Lio/realm/u;->b(Lio/realm/ac;)Lio/realm/ac;

    move-result-object p1

    goto/16 :goto_0

    .line 273
    :cond_6
    invoke-virtual {v0, p1}, Lio/realm/u;->a(Lio/realm/ac;)Lio/realm/ac;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 746
    iget-object v0, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm instance has been closed or this object or its parent has been deleted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_1
    return-void
.end method

.method static synthetic c(Lio/realm/aa;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/aa;->modCount:I

    return v0
.end method

.method private c(Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 732
    if-nez p1, :cond_0

    .line 733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmList does not accept null values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    return-void
.end method

.method static synthetic d(Lio/realm/aa;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/aa;->modCount:I

    return v0
.end method

.method static synthetic e(Lio/realm/aa;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/aa;->modCount:I

    return v0
.end method


# virtual methods
.method public a(I)Lio/realm/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 333
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lio/realm/aa;->b()V

    .line 335
    invoke-virtual {p0, p1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/LinkView;->c(J)V

    .line 340
    :goto_0
    iget v1, p0, Lio/realm/aa;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/realm/aa;->modCount:I

    .line 341
    return-object v0

    .line 338
    :cond_0
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0
.end method

.method public a(ILio/realm/ac;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0, p2}, Lio/realm/aa;->c(Lio/realm/ac;)V

    .line 156
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0}, Lio/realm/aa;->b()V

    .line 158
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lio/realm/aa;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/aa;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    invoke-direct {p0, p2}, Lio/realm/aa;->b(Lio/realm/ac;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 162
    iget-object v1, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/LinkView;->a(JJ)V

    .line 166
    :goto_0
    iget v0, p0, Lio/realm/aa;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/aa;->modCount:I

    .line 167
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lio/realm/ac;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lio/realm/aa;->c(Lio/realm/ac;)V

    .line 188
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lio/realm/aa;->b()V

    .line 190
    invoke-direct {p0, p1}, Lio/realm/aa;->b(Lio/realm/ac;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 191
    iget-object v1, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/LinkView;->b(J)V

    .line 195
    :goto_0
    iget v0, p0, Lio/realm/aa;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/aa;->modCount:I

    .line 196
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_0
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p2, Lio/realm/ac;

    invoke-virtual {p0, p1, p2}, Lio/realm/aa;->a(ILio/realm/ac;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lio/realm/ac;

    invoke-virtual {p0, p1}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    move-result v0

    return v0
.end method

.method public b(I)Lio/realm/ac;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 439
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lio/realm/aa;->b()V

    .line 441
    iget-object v0, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/LinkView;->a(J)J

    move-result-wide v0

    .line 442
    iget-object v2, p0, Lio/realm/aa;->d:Lio/realm/a;

    iget-object v3, p0, Lio/realm/aa;->a:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lio/realm/a;->a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/ac;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0
.end method

.method public b(ILio/realm/ac;)Lio/realm/ac;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0, p2}, Lio/realm/aa;->c(Lio/realm/ac;)V

    .line 220
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lio/realm/aa;->b()V

    .line 222
    invoke-direct {p0, p2}, Lio/realm/aa;->b(Lio/realm/ac;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 223
    invoke-virtual {p0, p1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    int-to-long v4, p1

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lio/realm/internal/LinkView;->b(JJ)V

    move-object v0, v1

    .line 229
    :goto_0
    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lio/realm/aa;->b()V

    .line 315
    iget-object v0, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->a()V

    .line 319
    :goto_0
    iget v0, p0, Lio/realm/aa;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/aa;->modCount:I

    .line 320
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    iget-boolean v1, p0, Lio/realm/aa;->e:Z

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->f()V

    .line 687
    instance-of v1, p1, Lio/realm/internal/j;

    if-eqz v1, :cond_0

    .line 688
    check-cast p1, Lio/realm/internal/j;

    .line 689
    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/realm/aa;->d:Lio/realm/a;

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

    .line 690
    iget-object v0, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/LinkView;->d(J)Z

    move-result v0

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 704
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    .line 705
    new-instance v0, Lio/realm/aa$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/aa$a;-><init>(Lio/realm/aa;Lio/realm/aa$1;)V

    .line 707
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/aa;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
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
    .line 724
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Lio/realm/aa$b;

    invoke-direct {v0, p0, p1}, Lio/realm/aa$b;-><init>(Lio/realm/aa;I)V

    .line 727
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lio/realm/aa;->a(I)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 363
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects can only be removed from inside a write transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .prologue
    .line 387
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects can only be removed from inside a write transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p2, Lio/realm/ac;

    invoke-virtual {p0, p1, p2}, Lio/realm/aa;->b(ILio/realm/ac;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 540
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_1

    .line 541
    invoke-direct {p0}, Lio/realm/aa;->b()V

    .line 542
    iget-object v0, p0, Lio/realm/aa;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->b()J

    move-result-wide v0

    .line 543
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 545
    :goto_0
    return v0

    .line 543
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 545
    :cond_1
    iget-object v0, p0, Lio/realm/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/aa;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    const-string v0, "@["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lio/realm/aa;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    const-string v0, "invalid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_0
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 754
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 759
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lio/realm/aa;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 760
    iget-boolean v0, p0, Lio/realm/aa;->e:Z

    if-eqz v0, :cond_4

    .line 761
    invoke-virtual {p0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 765
    :goto_2
    invoke-virtual {p0}, Lio/realm/aa;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 766
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 763
    :cond_4
    invoke-virtual {p0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
