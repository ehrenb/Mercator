.class public Lcom/b/b/cc;
.super Lcom/b/b/di;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/cc$a;,
        Lcom/b/b/cc$b;
    }
.end annotation


# static fields
.field static final e:Ljava/lang/String;


# instance fields
.field private A:Lcom/b/b/cb;

.field private a:I

.field private b:I

.field private final c:Lcom/b/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bl",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/net/HttpURLConnection;

.field public f:Ljava/lang/String;

.field public g:Lcom/b/b/cc$a;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Lcom/b/b/cc$b;

.field public l:Z

.field m:J

.field public n:J

.field public o:Ljava/lang/Exception;

.field public p:I

.field public final q:Lcom/b/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bl",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:I

.field public t:Z

.field private x:Z

.field private y:Z

.field private final z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/b/b/cc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/cc;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 131
    invoke-direct {p0}, Lcom/b/b/di;-><init>()V

    .line 103
    const/16 v0, 0x2710

    iput v0, p0, Lcom/b/b/cc;->h:I

    .line 104
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/b/b/cc;->i:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/cc;->j:Z

    .line 108
    new-instance v0, Lcom/b/b/bl;

    invoke-direct {v0}, Lcom/b/b/bl;-><init>()V

    iput-object v0, p0, Lcom/b/b/cc;->c:Lcom/b/b/bl;

    .line 115
    iput-wide v2, p0, Lcom/b/b/cc;->m:J

    .line 116
    iput-wide v2, p0, Lcom/b/b/cc;->n:J

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/b/b/cc;->p:I

    .line 121
    new-instance v0, Lcom/b/b/bl;

    invoke-direct {v0}, Lcom/b/b/bl;-><init>()V

    iput-object v0, p0, Lcom/b/b/cc;->q:Lcom/b/b/bl;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/b/b/cc;->z:Ljava/lang/Object;

    .line 126
    const/16 v0, 0x61a8

    iput v0, p0, Lcom/b/b/cc;->s:I

    .line 132
    new-instance v0, Lcom/b/b/cb;

    invoke-direct {v0, p0}, Lcom/b/b/cb;-><init>(Lcom/b/b/cc;)V

    iput-object v0, p0, Lcom/b/b/cc;->A:Lcom/b/b/cb;

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/b/b/cc;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private i()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-boolean v0, p0, Lcom/b/b/cc;->y:Z

    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/b/b/cc;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/b/df;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/b/cc;->f:Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/b/b/cc;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 327
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    .line 328
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/b/b/cc;->h:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 329
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/b/b/cc;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 330
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    invoke-virtual {v1}, Lcom/b/b/cc$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/b/b/cc;->j:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 332
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    sget-object v1, Lcom/b/b/cc$a;->c:Lcom/b/b/cc$a;

    iget-object v3, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    invoke-virtual {v1, v3}, Lcom/b/b/cc$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 333
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 336
    iget-object v0, p0, Lcom/b/b/cc;->c:Lcom/b/b/bl;

    invoke-virtual {v0}, Lcom/b/b/bl;->b()Ljava/util/Collection;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 338
    iget-object v4, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 424
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/b/b/cc;->j()V

    throw v0

    .line 342
    :cond_1
    :try_start_1
    sget-object v0, Lcom/b/b/cc$a;->b:Lcom/b/b/cc$a;

    iget-object v1, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    invoke-virtual {v0, v1}, Lcom/b/b/cc$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/b/b/cc$a;->c:Lcom/b/b/cc$a;

    iget-object v1, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    invoke-virtual {v0, v1}, Lcom/b/b/cc$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_2
    iget-boolean v0, p0, Lcom/b/b/cc;->y:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 424
    invoke-direct {p0}, Lcom/b/b/cc;->j()V

    goto/16 :goto_0

    .line 352
    :cond_3
    :try_start_2
    sget-object v0, Lcom/b/b/cc$a;->c:Lcom/b/b/cc$a;

    iget-object v1, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    invoke-virtual {v0, v1}, Lcom/b/b/cc$a;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    :try_start_3
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 359
    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 2429
    :try_start_5
    iget-object v0, p0, Lcom/b/b/cc;->k:Lcom/b/b/cc$b;

    if-eqz v0, :cond_4

    .line 2433
    invoke-virtual {p0}, Lcom/b/b/cc;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2441
    iget-object v0, p0, Lcom/b/b/cc;->k:Lcom/b/b/cc$b;

    invoke-interface {v0, v1}, Lcom/b/b/cc$b;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 365
    :cond_4
    :try_start_6
    invoke-static {v1}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    .line 366
    invoke-static {v3}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    .line 371
    :cond_5
    iget-boolean v0, p0, Lcom/b/b/cc;->l:Z

    if-eqz v0, :cond_6

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/b/cc;->m:J

    .line 376
    :cond_6
    iget-boolean v0, p0, Lcom/b/b/cc;->r:Z

    if-eqz v0, :cond_7

    .line 377
    iget-object v0, p0, Lcom/b/b/cc;->A:Lcom/b/b/cb;

    iget v1, p0, Lcom/b/b/cc;->s:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/b/b/cb;->a(J)V

    .line 381
    :cond_7
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/b/b/cc;->p:I

    .line 384
    iget-boolean v0, p0, Lcom/b/b/cc;->l:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/b/b/cc;->m:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/b/b/cc;->m:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/b/b/cc;->n:J

    .line 388
    :cond_8
    iget-object v0, p0, Lcom/b/b/cc;->A:Lcom/b/b/cb;

    invoke-virtual {v0}, Lcom/b/b/cb;->a()V

    .line 391
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 393
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    iget-object v5, p0, Lcom/b/b/cc;->q:Lcom/b/b/bl;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/b/b/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 365
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    .line 366
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    throw v0

    .line 400
    :cond_a
    sget-object v0, Lcom/b/b/cc$a;->b:Lcom/b/b/cc$a;

    iget-object v1, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    invoke-virtual {v0, v1}, Lcom/b/b/cc$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/b/b/cc$a;->c:Lcom/b/b/cc$a;

    iget-object v1, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    invoke-virtual {v0, v1}, Lcom/b/b/cc$a;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_b

    .line 424
    invoke-direct {p0}, Lcom/b/b/cc;->j()V

    goto/16 :goto_0

    .line 405
    :cond_b
    :try_start_7
    iget-boolean v0, p0, Lcom/b/b/cc;->y:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_c

    .line 424
    invoke-direct {p0}, Lcom/b/b/cc;->j()V

    goto/16 :goto_0

    .line 414
    :cond_c
    :try_start_8
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v1

    .line 415
    :try_start_9
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2445
    :try_start_a
    iget-object v0, p0, Lcom/b/b/cc;->k:Lcom/b/b/cc$b;

    if-eqz v0, :cond_d

    .line 2449
    invoke-virtual {p0}, Lcom/b/b/cc;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2457
    iget-object v0, p0, Lcom/b/b/cc;->k:Lcom/b/b/cc$b;

    invoke-interface {v0, p0, v3}, Lcom/b/b/cc$b;->a(Lcom/b/b/cc;Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 420
    :cond_d
    :try_start_b
    invoke-static {v3}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    .line 421
    invoke-static {v1}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 424
    invoke-direct {p0}, Lcom/b/b/cc;->j()V

    goto/16 :goto_0

    .line 420
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_c
    invoke-static {v1}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    .line 421
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 420
    :catchall_3
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_4

    .line 365
    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private j()V
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/b/b/cc;->x:Z

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/cc;->x:Z

    .line 479
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/b/b/cc;->q:Lcom/b/b/bl;

    invoke-virtual {v0, p1}, Lcom/b/b/bl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/b/b/cc;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/b/b/cc;->A:Lcom/b/b/cb;

    invoke-virtual {v0}, Lcom/b/b/cb;->a()V

    .line 306
    invoke-virtual {p0}, Lcom/b/b/cc;->h()V

    .line 307
    :goto_0
    return-void

    .line 281
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/b/b/az;->a()Lcom/b/b/az;

    move-result-object v0

    .line 2079
    iget-boolean v0, v0, Lcom/b/b/az;->b:Z

    .line 281
    if-nez v0, :cond_1

    .line 282
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/cc;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network not available, aborting http request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/b/cc;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    iget-object v0, p0, Lcom/b/b/cc;->A:Lcom/b/b/cb;

    invoke-virtual {v0}, Lcom/b/b/cb;->a()V

    .line 306
    invoke-virtual {p0}, Lcom/b/b/cc;->h()V

    goto :goto_0

    .line 287
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/b/b/cc$a;->a:Lcom/b/b/cc$a;

    iget-object v1, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    invoke-virtual {v0, v1}, Lcom/b/b/cc$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    :cond_2
    sget-object v0, Lcom/b/b/cc$a;->b:Lcom/b/b/cc$a;

    iput-object v0, p0, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    .line 293
    :cond_3
    invoke-direct {p0}, Lcom/b/b/cc;->i()V

    .line 295
    const/4 v0, 0x4

    sget-object v1, Lcom/b/b/cc;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/b/b/cc;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/b/b/cc;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    iget-object v0, p0, Lcom/b/b/cc;->A:Lcom/b/b/cb;

    invoke-virtual {v0}, Lcom/b/b/cb;->a()V

    .line 306
    invoke-virtual {p0}, Lcom/b/b/cc;->h()V

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const/4 v1, 0x4

    :try_start_3
    sget-object v2, Lcom/b/b/cc;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/b/b/cc;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/b/b/cc;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x3

    sget-object v2, Lcom/b/b/cc;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during http request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/b/cc;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    iget-object v1, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v1

    iput v1, p0, Lcom/b/b/cc;->b:I

    .line 300
    iget-object v1, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v1

    iput v1, p0, Lcom/b/b/cc;->a:I

    .line 301
    iput-object v0, p0, Lcom/b/b/cc;->o:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    iget-object v0, p0, Lcom/b/b/cc;->A:Lcom/b/b/cb;

    invoke-virtual {v0}, Lcom/b/b/cb;->a()V

    .line 306
    invoke-virtual {p0}, Lcom/b/b/cc;->h()V

    goto/16 :goto_0

    .line 304
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/b/cc;->A:Lcom/b/b/cb;

    invoke-virtual {v1}, Lcom/b/b/cb;->a()V

    .line 306
    invoke-virtual {p0}, Lcom/b/b/cc;->h()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/b/b/cc;->c:Lcom/b/b/bl;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 206
    iget-object v1, p0, Lcom/b/b/cc;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/cc;->y:Z

    monitor-exit v1

    return v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/b/b/cc;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/b/cc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/b/b/cc;->p:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/b/b/cc;->p:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/b/b/cc;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/b/b/cc;->o:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 259
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/cc;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancelling http request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/b/cc;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/b/b/cc;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/b/cc;->y:Z

    .line 262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    iget-boolean v0, p0, Lcom/b/b/cc;->x:Z

    if-nez v0, :cond_0

    .line 1489
    iput-boolean v4, p0, Lcom/b/b/cc;->x:Z

    .line 1492
    iget-object v0, p0, Lcom/b/b/cc;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 1493
    new-instance v0, Lcom/b/b/cc$1;

    invoke-direct {v0, p0}, Lcom/b/b/cc$1;-><init>(Lcom/b/b/cc;)V

    .line 1504
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 265
    :cond_0
    return-void

    .line 262
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/b/b/cc;->f()V

    .line 313
    return-void
.end method

.method final h()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/b/b/cc;->k:Lcom/b/b/cc$b;

    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/b/b/cc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/b/b/cc;->k:Lcom/b/b/cc$b;

    invoke-interface {v0, p0}, Lcom/b/b/cc$b;->a(Lcom/b/b/cc;)V

    goto :goto_0
.end method
