.class public final Lio/realm/af;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/ac;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/Long;


# instance fields
.field private a:Lio/realm/a;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lio/realm/internal/n;

.field private e:Lio/realm/ae;

.field private f:Lio/realm/internal/LinkView;

.field private g:Lio/realm/internal/TableQuery;

.field private i:Lio/realm/internal/async/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/realm/af;->h:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lio/realm/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lio/realm/af;->a:Lio/realm/a;

    .line 165
    iput-object p2, p0, Lio/realm/af;->c:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lio/realm/a;->f:Lio/realm/ah;

    invoke-virtual {v0, p2}, Lio/realm/ah;->f(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v0

    iput-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    .line 167
    iget-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    iget-object v0, v0, Lio/realm/ae;->a:Lio/realm/internal/Table;

    iput-object v0, p0, Lio/realm/af;->d:Lio/realm/internal/n;

    .line 168
    iget-object v0, p0, Lio/realm/af;->d:Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->k()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    .line 169
    return-void
.end method

.method private constructor <init>(Lio/realm/u;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lio/realm/af;->a:Lio/realm/a;

    .line 138
    iput-object p2, p0, Lio/realm/af;->b:Ljava/lang/Class;

    .line 139
    iget-object v0, p1, Lio/realm/u;->f:Lio/realm/ah;

    invoke-virtual {v0, p2}, Lio/realm/ah;->c(Ljava/lang/Class;)Lio/realm/ae;

    move-result-object v0

    iput-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    .line 140
    iget-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    iget-object v0, v0, Lio/realm/ae;->a:Lio/realm/internal/Table;

    iput-object v0, p0, Lio/realm/af;->d:Lio/realm/internal/n;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/af;->f:Lio/realm/internal/LinkView;

    .line 142
    iget-object v0, p0, Lio/realm/af;->d:Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->k()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    .line 143
    return-void
.end method

.method public static a(Lio/realm/e;Ljava/lang/String;)Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Lio/realm/e;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lio/realm/af;

    invoke-direct {v0, p0, p1}, Lio/realm/af;-><init>(Lio/realm/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lio/realm/u;Ljava/lang/Class;)Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Lio/realm/u;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lio/realm/af;

    invoke-direct {v0, p0, p1}, Lio/realm/af;-><init>(Lio/realm/u;Ljava/lang/Class;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 2242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2243
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty fieldname required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2245
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sorting using child object fields is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2249
    :cond_2
    iget-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    invoke-virtual {v0, p1}, Lio/realm/ae;->f(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2250
    if-nez v0, :cond_3

    .line 2251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name \'%s\' does not exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2254
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lio/realm/af;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 2220
    iget-object v0, p0, Lio/realm/af;->i:Lio/realm/internal/async/a;

    if-eqz v0, :cond_0

    .line 2221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This RealmQuery is already used by a find* query, please create a new query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2223
    :cond_0
    return-void
.end method

.method private k()J
    .locals 4

    .prologue
    .line 2226
    iget-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->d()J

    move-result-wide v2

    .line 2227
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    move-wide v0, v2

    .line 2235
    :goto_0
    return-wide v0

    .line 2230
    :cond_0
    iget-object v0, p0, Lio/realm/af;->f:Lio/realm/internal/LinkView;

    if-eqz v0, :cond_1

    .line 2231
    iget-object v0, p0, Lio/realm/af;->f:Lio/realm/internal/LinkView;

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/LinkView;->a(J)J

    move-result-wide v0

    goto :goto_0

    .line 2232
    :cond_1
    iget-object v0, p0, Lio/realm/af;->d:Lio/realm/internal/n;

    instance-of v0, v0, Lio/realm/internal/TableView;

    if-eqz v0, :cond_2

    .line 2233
    iget-object v0, p0, Lio/realm/af;->d:Lio/realm/internal/n;

    check-cast v0, Lio/realm/internal/TableView;

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/TableView;->a(J)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 2235
    goto :goto_0
.end method


# virtual methods
.method public a()Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1261
    iget-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->a()Lio/realm/internal/TableQuery;

    .line 1262
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/af;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/ae;->a(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 405
    if-nez p2, :cond_0

    .line 406
    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->a([J)Lio/realm/internal/TableQuery;

    .line 410
    :goto_0
    return-object p0

    .line 408
    :cond_0
    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lio/realm/internal/TableQuery;->a([JZ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/ae;->a(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 334
    if-nez p2, :cond_0

    .line 335
    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->a([J)Lio/realm/internal/TableQuery;

    .line 339
    :goto_0
    return-object p0

    .line 337
    :cond_0
    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lio/realm/internal/TableQuery;->a([JJ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/af;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/ae;->a(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 352
    if-nez p2, :cond_0

    .line 353
    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->a([J)Lio/realm/internal/TableQuery;

    .line 357
    :goto_0
    return-object p0

    .line 355
    :cond_0
    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lio/realm/internal/TableQuery;->a([JJ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lio/realm/b;->a:Lio/realm/b;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/b;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lio/realm/b;)Lio/realm/af;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/b;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/ae;->a(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 266
    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p2, p3}, Lio/realm/internal/TableQuery;->a([JLjava/lang/String;Lio/realm/b;)Lio/realm/internal/TableQuery;

    .line 267
    return-object p0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 438
    sget-object v0, Lio/realm/b;->a:Lio/realm/b;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/af;->a(Ljava/lang/String;[Ljava/lang/String;Lio/realm/b;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Lio/realm/b;)Lio/realm/af;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/realm/b;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 451
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'values\' must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_1
    invoke-virtual {p0}, Lio/realm/af;->a()Lio/realm/af;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/b;)Lio/realm/af;

    .line 455
    const/4 v0, 0x1

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 456
    invoke-virtual {p0}, Lio/realm/af;->c()Lio/realm/af;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, p1, v2, p3}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/b;)Lio/realm/af;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {p0}, Lio/realm/af;->b()Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lio/realm/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/ag",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1881
    sget-object v0, Lio/realm/ao;->a:Lio/realm/ao;

    invoke-virtual {p0, p1, v0}, Lio/realm/af;->a(Ljava/lang/String;Lio/realm/ao;)Lio/realm/ag;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lio/realm/ao;)Lio/realm/ag;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/ao;",
            ")",
            "Lio/realm/ag",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1765
    invoke-direct {p0}, Lio/realm/af;->j()V

    .line 1766
    iget-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->e()Lio/realm/internal/TableView;

    move-result-object v0

    .line 1767
    invoke-direct {p0, p1}, Lio/realm/af;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 1768
    invoke-virtual {v0, v2, v3, p2}, Lio/realm/internal/TableView;->a(JLio/realm/ao;)V

    .line 1771
    invoke-direct {p0}, Lio/realm/af;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1772
    iget-object v1, p0, Lio/realm/af;->a:Lio/realm/a;

    iget-object v2, p0, Lio/realm/af;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lio/realm/ag;->a(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/String;)Lio/realm/ag;

    move-result-object v0

    .line 1776
    :goto_0
    return-object v0

    .line 1774
    :cond_0
    iget-object v1, p0, Lio/realm/af;->a:Lio/realm/a;

    iget-object v2, p0, Lio/realm/af;->b:Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Lio/realm/ag;->a(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/Class;)Lio/realm/ag;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->b()Lio/realm/internal/TableQuery;

    .line 1273
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1180
    sget-object v0, Lio/realm/b;->a:Lio/realm/b;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/af;->b(Ljava/lang/String;Ljava/lang/String;Lio/realm/b;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lio/realm/b;)Lio/realm/af;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/b;",
            ")",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1193
    iget-object v0, p0, Lio/realm/af;->e:Lio/realm/ae;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/ae;->a(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 1194
    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p2, p3}, Lio/realm/internal/TableQuery;->b([JLjava/lang/String;Lio/realm/b;)Lio/realm/internal/TableQuery;

    .line 1195
    return-object p0
.end method

.method public c()Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1282
    iget-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->c()Lio/realm/internal/TableQuery;

    .line 1283
    return-object p0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 1642
    iget-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lio/realm/ag;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ag",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1654
    invoke-direct {p0}, Lio/realm/af;->j()V

    .line 1656
    invoke-direct {p0}, Lio/realm/af;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lio/realm/af;->a:Lio/realm/a;

    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->e()Lio/realm/internal/TableView;

    move-result-object v1

    iget-object v2, p0, Lio/realm/af;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/realm/ag;->a(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/String;)Lio/realm/ag;

    move-result-object v0

    .line 1661
    :goto_0
    return-object v0

    .line 1659
    :cond_0
    iget-object v0, p0, Lio/realm/af;->a:Lio/realm/a;

    iget-object v1, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->e()Lio/realm/internal/TableView;

    move-result-object v1

    iget-object v2, p0, Lio/realm/af;->b:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lio/realm/ag;->a(Lio/realm/a;Lio/realm/internal/n;Ljava/lang/Class;)Lio/realm/ag;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lio/realm/ac;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2083
    invoke-direct {p0}, Lio/realm/af;->j()V

    .line 2084
    invoke-direct {p0}, Lio/realm/af;->k()J

    move-result-wide v0

    .line 2085
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 2086
    iget-object v2, p0, Lio/realm/af;->a:Lio/realm/a;

    iget-object v3, p0, Lio/realm/af;->b:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/af;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lio/realm/a;->a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/ac;

    move-result-object v0

    .line 2089
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lio/realm/internal/async/a;
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lio/realm/af;->i:Lio/realm/internal/async/a;

    return-object v0
.end method

.method h()J
    .locals 4

    .prologue
    .line 2267
    iget-object v0, p0, Lio/realm/af;->g:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/af;->a:Lio/realm/a;

    iget-object v1, v1, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v1}, Lio/realm/internal/m;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/TableQuery;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
