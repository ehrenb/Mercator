.class public abstract Lb/a/a/h$a;
.super Lb/a/a/h;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field private static d:Ld/a/b;


# instance fields
.field c:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    const-class v0, Lb/a/a/h$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/h$a;->d:Ld/a/b;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZILjava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct/range {p0 .. p5}, Lb/a/a/h;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI)V

    .line 297
    iput-object p6, p0, Lb/a/a/h$a;->c:Ljava/net/InetAddress;

    .line 298
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI[B)V
    .locals 3

    .prologue
    .line 301
    invoke-direct/range {p0 .. p5}, Lb/a/a/h;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI)V

    .line 303
    :try_start_0
    invoke-static {p6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/h$a;->c:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    sget-object v1, Lb/a/a/h$a;->d:Ld/a/b;

    const-string v2, "Address() exception "

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Lb/a/d;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 428
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/h$a;->h()Ljava/util/Map;

    move-result-object v1

    const/4 v6, 0x0

    check-cast v6, [B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 430
    return-object v0
.end method

.method protected a(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-super {p0, p1}, Lb/a/a/h;->a(Ljava/io/DataOutputStream;)V

    .line 352
    invoke-virtual {p0}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 353
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 354
    aget-byte v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0, p1}, Lb/a/a/h;->a(Ljava/lang/StringBuilder;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " address: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    return-void

    .line 451
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method a(Lb/a/a/h;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 323
    :try_start_0
    instance-of v1, p1, Lb/a/a/h$a;

    if-nez v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    check-cast p1, Lb/a/a/h$a;

    .line 327
    invoke-virtual {p0}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    sget-object v2, Lb/a/a/h$a;->d:Ld/a/b;

    const-string v3, "Failed to compare addresses of DNSRecords"

    invoke-interface {v2, v3, v1}, Ld/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lb/a/a/l;)Z
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/a/a/k;->a(Lb/a/a/h$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    sget-object v0, Lb/a/a/h$a;->d:Ld/a/b;

    const-string v1, "handleResponse() Denial detected"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lb/a/a/l;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/k;->f()Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a;->clear()V

    .line 406
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 407
    check-cast v0, Lb/a/a/q;

    .line 408
    invoke-virtual {v0}, Lb/a/a/q;->w()Z

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p1}, Lb/a/a/l;->k()Z

    .line 412
    const/4 v0, 0x1

    .line 414
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lb/a/a/l;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v1

    invoke-virtual {v1, p0}, Lb/a/a/k;->a(Lb/a/a/h$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/h$a;->e()Lb/a/a/a/e;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/h$a;->g()Z

    move-result v3

    const/16 v4, 0xe10

    invoke-virtual {v1, v2, v3, v4}, Lb/a/a/k;->a(Lb/a/a/a/e;ZI)Lb/a/a/h$a;

    move-result-object v1

    .line 365
    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p0, v1}, Lb/a/a/h$a;->e(Lb/a/a/b;)I

    move-result v1

    .line 368
    if-nez v1, :cond_1

    .line 373
    sget-object v1, Lb/a/a/h$a;->d:Ld/a/b;

    const-string v2, "handleQuery() Ignoring an identical address query"

    invoke-interface {v1, v2}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 377
    :cond_1
    sget-object v0, Lb/a/a/h$a;->d:Ld/a/b;

    const-string v2, "handleQuery() Conflicting query detected."

    invoke-interface {v0, v2}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Lb/a/a/l;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 381
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/k;->f()Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a;->clear()V

    .line 383
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 384
    check-cast v0, Lb/a/a/q;

    .line 385
    invoke-virtual {v0}, Lb/a/a/q;->w()Z

    goto :goto_1

    .line 388
    :cond_2
    invoke-virtual {p1}, Lb/a/a/l;->k()Z

    .line 389
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lb/a/a/l;)Lb/a/c;
    .locals 4

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/h$a;->a(Z)Lb/a/d;

    move-result-object v1

    move-object v0, v1

    .line 440
    check-cast v0, Lb/a/a/q;

    invoke-virtual {v0, p1}, Lb/a/a/q;->a(Lb/a/a/l;)V

    .line 441
    new-instance v0, Lb/a/a/p;

    invoke-virtual {v1}, Lb/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lb/a/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3, v1}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    return-object v0
.end method

.method e(Lb/a/a/h;)Z
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lb/a/a/h$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method t()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lb/a/a/h$a;->c:Ljava/net/InetAddress;

    return-object v0
.end method
