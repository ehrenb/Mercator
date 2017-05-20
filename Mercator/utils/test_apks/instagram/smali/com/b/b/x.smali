.class public Lcom/b/b/x;
.super Lcom/b/b/cf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/b/cf",
        "<",
        "Lcom/b/b/y;",
        ">;"
    }
.end annotation


# static fields
.field public static a:J

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/b/b/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/x;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/b/b/cf;-><init>()V

    .line 1070
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/b/b/cf;->b:J

    .line 1071
    sget-wide v0, Lcom/b/b/cf;->b:J

    iput-wide v0, p0, Lcom/b/b/cf;->d:J

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;)V
    .locals 1

    .prologue
    .line 19229
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/b/ab;->b(Lcom/b/b/z;)V

    .line 19231
    invoke-virtual {p0, p2}, Lcom/b/b/x;->c(Lcom/b/b/ce;)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;Lcom/b/b/ca;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 23187
    const/4 v0, 0x0

    .line 23189
    const-string v1, "Location"

    invoke-virtual {p3, v1}, Lcom/b/b/ca;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 23190
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 23191
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24030
    iget-object v1, p2, Lcom/b/b/ce;->q:Ljava/lang/String;

    .line 23191
    invoke-static {v0, v1}, Lcom/b/b/dj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23194
    :cond_0
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/b/b/ab;->a(Lcom/b/b/z;Ljava/lang/String;)Z

    move-result v1

    .line 23196
    if-eqz v1, :cond_2

    .line 23197
    sget-object v2, Lcom/b/b/x;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received redirect url. Retrying: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 23203
    :goto_0
    if-eqz v1, :cond_3

    .line 24067
    iput-object v0, p2, Lcom/b/b/ce;->r:Ljava/lang/String;

    .line 24136
    iput-object v0, p3, Lcom/b/b/cc;->f:Ljava/lang/String;

    .line 23206
    const-string v0, "Location"

    .line 24269
    iget-object v1, p3, Lcom/b/b/cc;->q:Lcom/b/b/bl;

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/b/b/cc;->q:Lcom/b/b/bl;

    .line 25108
    iget-object v1, v1, Lcom/b/b/bl;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 24269
    if-eqz v1, :cond_1

    .line 24270
    iget-object v1, p3, Lcom/b/b/cc;->q:Lcom/b/b/bl;

    invoke-virtual {v1, v0}, Lcom/b/b/bl;->b(Ljava/lang/Object;)Z

    .line 23207
    :cond_1
    invoke-static {}, Lcom/b/b/be;->a()Lcom/b/b/be;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/b/b/be;->a(Ljava/lang/Object;Lcom/b/b/di;)V

    :goto_1
    return-void

    .line 23199
    :cond_2
    sget-object v2, Lcom/b/b/x;->e:Ljava/lang/String;

    const-string v3, "Received redirect url. Retrying: false"

    invoke-static {v5, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23209
    :cond_3
    invoke-virtual {p0, p2}, Lcom/b/b/x;->c(Lcom/b/b/ce;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 20216
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/b/b/ab;->b(Lcom/b/b/z;Ljava/lang/String;)Z

    move-result v0

    .line 20218
    const/4 v1, 0x3

    sget-object v2, Lcom/b/b/x;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed report retrying: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 20220
    if-eqz v0, :cond_0

    .line 20221
    invoke-virtual {p0, p2}, Lcom/b/b/x;->d(Lcom/b/b/ce;)V

    :goto_0
    return-void

    .line 20223
    :cond_0
    invoke-virtual {p0, p2}, Lcom/b/b/x;->c(Lcom/b/b/ce;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/b/b/x;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;)V
    .locals 4

    .prologue
    .line 21177
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/x;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22124
    iget-object v3, p2, Lcom/b/b/y;->m:Lcom/b/b/ac;

    .line 23083
    iget-object v3, v3, Lcom/b/b/ac;->c:Ljava/lang/String;

    .line 21177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report sent successfully to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23116
    iget-object v3, p2, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 21177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 21179
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/b/ab;->a(Lcom/b/b/z;)V

    .line 21180
    invoke-virtual {p0, p2}, Lcom/b/b/x;->c(Lcom/b/b/ce;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected final a()Lcom/b/b/bn;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/b/bn",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/b/b/y;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 43
    new-instance v1, Lcom/b/b/bn;

    const-string v2, ".yflurryanpulsecallbackreporter"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, ".yflurryanpulsecallbackreporter"

    const/4 v3, 0x2

    new-instance v4, Lcom/b/b/x$1;

    invoke-direct {v4, p0}, Lcom/b/b/x$1;-><init>(Lcom/b/b/x;)V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/b/b/bn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/b/b/cq;)V

    return-object v1
.end method

.method protected final synthetic a(Lcom/b/b/ce;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 26
    move-object v1, p1

    check-cast v1, Lcom/b/b/y;

    .line 4055
    const/4 v0, 0x3

    sget-object v2, Lcom/b/b/x;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending next pulse report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5116
    iget-object v4, v1, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 4055
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6038
    iget-object v4, v1, Lcom/b/b/ce;->r:Ljava/lang/String;

    .line 4056
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4055
    invoke-static {v0, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4058
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v2

    .line 4061
    cmp-long v0, v2, v8

    if-nez v0, :cond_0

    .line 4062
    sget-wide v2, Lcom/b/b/x;->a:J

    .line 4065
    :cond_0
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->e()J

    move-result-wide v4

    .line 4068
    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    .line 4069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 7026
    :cond_1
    iget v6, v1, Lcom/b/b/ce;->p:I

    .line 4075
    new-instance v0, Lcom/b/b/z;

    invoke-direct/range {v0 .. v6}, Lcom/b/b/z;-><init>(Lcom/b/b/y;JJI)V

    .line 4079
    new-instance v4, Lcom/b/b/ca;

    invoke-direct {v4}, Lcom/b/b/ca;-><init>()V

    .line 7038
    iget-object v2, v1, Lcom/b/b/ce;->r:Ljava/lang/String;

    .line 7136
    iput-object v2, v4, Lcom/b/b/cc;->f:Ljava/lang/String;

    .line 8027
    const v2, 0x186a0

    iput v2, v4, Lcom/b/b/di;->w:I

    .line 8108
    iget-object v2, v1, Lcom/b/b/y;->e:Lcom/b/b/af;

    .line 4084
    sget-object v3, Lcom/b/b/af;->c:Lcom/b/b/af;

    invoke-virtual {v2, v3}, Lcom/b/b/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4085
    new-instance v2, Lcom/b/b/ck;

    invoke-direct {v2}, Lcom/b/b/ck;-><init>()V

    .line 9041
    iput-object v2, v4, Lcom/b/b/ca;->c:Lcom/b/b/co;

    .line 9122
    iget-object v2, v1, Lcom/b/b/y;->j:Ljava/lang/String;

    .line 4087
    if-eqz v2, :cond_2

    .line 10122
    iget-object v2, v1, Lcom/b/b/y;->j:Ljava/lang/String;

    .line 4088
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 11037
    iput-object v2, v4, Lcom/b/b/ca;->b:Ljava/lang/Object;

    .line 4092
    :cond_2
    sget-object v2, Lcom/b/b/cc$a;->c:Lcom/b/b/cc$a;

    .line 11144
    iput-object v2, v4, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    .line 13118
    :goto_0
    iget v2, v1, Lcom/b/b/y;->h:I

    .line 4098
    mul-int/lit16 v2, v2, 0x3e8

    .line 13154
    iput v2, v4, Lcom/b/b/cc;->h:I

    .line 14120
    iget v2, v1, Lcom/b/b/y;->i:I

    .line 4100
    mul-int/lit16 v2, v2, 0x3e8

    .line 14160
    iput v2, v4, Lcom/b/b/cc;->i:I

    .line 14195
    iput-boolean v7, v4, Lcom/b/b/cc;->l:Z

    .line 15164
    iput-boolean v7, v4, Lcom/b/b/cc;->r:Z

    .line 16118
    iget v2, v1, Lcom/b/b/y;->h:I

    .line 16120
    iget v3, v1, Lcom/b/b/y;->i:I

    .line 4107
    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    .line 16172
    iput v2, v4, Lcom/b/b/cc;->s:I

    .line 17114
    iget-object v5, v1, Lcom/b/b/y;->f:Ljava/util/Map;

    .line 4111
    if-eqz v5, :cond_4

    .line 18114
    iget-object v2, v1, Lcom/b/b/y;->f:Ljava/util/Map;

    .line 4112
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4114
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4115
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/b/b/ca;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4094
    :cond_3
    sget-object v2, Lcom/b/b/cc$a;->b:Lcom/b/b/cc$a;

    .line 12144
    iput-object v2, v4, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    goto :goto_0

    .line 18193
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/b/b/cc;->j:Z

    .line 4121
    new-instance v2, Lcom/b/b/x$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/b/b/x$2;-><init>(Lcom/b/b/x;Lcom/b/b/y;Lcom/b/b/z;)V

    .line 19049
    iput-object v2, v4, Lcom/b/b/ca;->a:Lcom/b/b/ca$a;

    .line 4171
    invoke-static {}, Lcom/b/b/be;->a()Lcom/b/b/be;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/b/b/be;->a(Ljava/lang/Object;Lcom/b/b/di;)V

    .line 26
    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/b/y;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/ab;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/b/y;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    invoke-static {}, Lcom/b/b/ab;->d()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 245
    if-nez v0, :cond_1

    .line 273
    :cond_0
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x3

    sget-object v2, Lcom/b/b/x;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Restoring "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from report queue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/ac;

    .line 256
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/b/b/ab;->b(Lcom/b/b/ac;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    invoke-static {}, Lcom/b/b/ab;->b()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/ac;

    .line 264
    invoke-virtual {v0}, Lcom/b/b/ac;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/y;

    .line 1127
    iget-boolean v3, v0, Lcom/b/b/y;->l:Z

    .line 265
    if-nez v3, :cond_4

    .line 266
    const/4 v3, 0x3

    sget-object v4, Lcom/b/b/x;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Callback for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2124
    iget-object v6, v0, Lcom/b/b/y;->m:Lcom/b/b/ac;

    .line 3083
    iget-object v6, v6, Lcom/b/b/ac;->c:Ljava/lang/String;

    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3116
    iget-object v6, v0, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not completed.  Adding to reporter queue."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-static {v3, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
