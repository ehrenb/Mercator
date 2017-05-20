.class public final Lb/a/a/f;
.super Lb/a/a/e;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/f$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Lb/a/a/f$a;

.field private final j:Lb/a/a/f$a;

.field private final k:Lb/a/a/f$a;

.field private final l:Lb/a/a/f$a;

.field private m:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    sput-boolean v0, Lb/a/a/f;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x1

    const/16 v1, 0x5b4

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/f;-><init>(IZI)V

    .line 200
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lb/a/a/e;-><init>(IIZ)V

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/f;->g:Ljava/util/Map;

    .line 223
    if-lez p3, :cond_0

    move v0, p3

    :goto_0
    iput v0, p0, Lb/a/a/f;->h:I

    .line 224
    new-instance v0, Lb/a/a/f$a;

    invoke-direct {v0, p3, p0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;)V

    iput-object v0, p0, Lb/a/a/f;->i:Lb/a/a/f$a;

    .line 225
    new-instance v0, Lb/a/a/f$a;

    invoke-direct {v0, p3, p0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;)V

    iput-object v0, p0, Lb/a/a/f;->j:Lb/a/a/f$a;

    .line 226
    new-instance v0, Lb/a/a/f$a;

    invoke-direct {v0, p3, p0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;)V

    iput-object v0, p0, Lb/a/a/f;->k:Lb/a/a/f$a;

    .line 227
    new-instance v0, Lb/a/a/f$a;

    invoke-direct {v0, p3, p0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;)V

    iput-object v0, p0, Lb/a/a/f;->l:Lb/a/a/f$a;

    .line 228
    return-void

    .line 223
    :cond_0
    const/16 v0, 0x5b4

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lb/a/a/f;->m:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public a(Lb/a/a/c;Lb/a/a/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lb/a/a/h;->a(Lb/a/a/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lb/a/a/f;->a(Lb/a/a/h;J)V

    .line 288
    :cond_1
    return-void
.end method

.method public a(Lb/a/a/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lb/a/a/f$a;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;)V

    .line 266
    invoke-virtual {v0, p1}, Lb/a/a/f$a;->a(Lb/a/a/g;)V

    .line 267
    invoke-virtual {v0}, Lb/a/a/f$a;->toByteArray()[B

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Lb/a/a/f$a;->close()V

    .line 269
    array-length v0, v1

    invoke-virtual {p0}, Lb/a/a/f;->b()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 270
    iget-object v0, p0, Lb/a/a/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lb/a/a/f;->i:Lb/a/a/f$a;

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/f$a;->write([BII)V

    .line 275
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "message full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/a/a/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lb/a/a/f$a;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;)V

    .line 322
    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lb/a/a/f$a;->a(Lb/a/a/h;J)V

    .line 323
    invoke-virtual {v0}, Lb/a/a/f$a;->toByteArray()[B

    move-result-object v1

    .line 324
    invoke-virtual {v0}, Lb/a/a/f$a;->close()V

    .line 325
    array-length v0, v1

    invoke-virtual {p0}, Lb/a/a/f;->b()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 326
    iget-object v0, p0, Lb/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lb/a/a/f;->k:Lb/a/a/f$a;

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/f$a;->write([BII)V

    .line 331
    return-void

    .line 329
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "message full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/a/a/h;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    if-eqz p1, :cond_1

    .line 299
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lb/a/a/h;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    new-instance v0, Lb/a/a/f$a;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;)V

    .line 301
    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/f$a;->a(Lb/a/a/h;J)V

    .line 302
    invoke-virtual {v0}, Lb/a/a/f$a;->toByteArray()[B

    move-result-object v1

    .line 303
    invoke-virtual {v0}, Lb/a/a/f$a;->close()V

    .line 304
    array-length v0, v1

    invoke-virtual {p0}, Lb/a/a/f;->b()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 305
    iget-object v0, p0, Lb/a/a/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lb/a/a/f;->j:Lb/a/a/f$a;

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/f$a;->write([BII)V

    .line 312
    :cond_1
    return-void

    .line 308
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "message full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lb/a/a/f;->m:Ljava/net/InetSocketAddress;

    .line 247
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lb/a/a/f;->h:I

    add-int/lit8 v0, v0, -0xc

    iget-object v1, p0, Lb/a/a/f;->i:Lb/a/a/f$a;

    invoke-virtual {v1}, Lb/a/a/f$a;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/f;->j:Lb/a/a/f$a;

    invoke-virtual {v1}, Lb/a/a/f$a;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/f;->k:Lb/a/a/f$a;

    invoke-virtual {v1}, Lb/a/a/f$a;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/f;->l:Lb/a/a/f$a;

    invoke-virtual {v1}, Lb/a/a/f$a;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()[B
    .locals 5

    .prologue
    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 360
    iget-object v0, p0, Lb/a/a/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 362
    new-instance v1, Lb/a/a/f$a;

    iget v0, p0, Lb/a/a/f;->h:I

    invoke-direct {v1, v0, p0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;)V

    .line 363
    iget-boolean v0, p0, Lb/a/a/f;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lb/a/a/f$a;->b(I)V

    .line 364
    invoke-virtual {p0}, Lb/a/a/f;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/a/f$a;->b(I)V

    .line 365
    invoke-virtual {p0}, Lb/a/a/f;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/a/f$a;->b(I)V

    .line 366
    invoke-virtual {p0}, Lb/a/a/f;->k()I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/a/f$a;->b(I)V

    .line 367
    invoke-virtual {p0}, Lb/a/a/f;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/a/f$a;->b(I)V

    .line 368
    invoke-virtual {p0}, Lb/a/a/f;->o()I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/a/f$a;->b(I)V

    .line 369
    iget-object v0, p0, Lb/a/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/g;

    .line 370
    invoke-virtual {v1, v0}, Lb/a/a/f$a;->a(Lb/a/a/g;)V

    goto :goto_1

    .line 363
    :cond_0
    invoke-virtual {p0}, Lb/a/a/f;->d()I

    move-result v0

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lb/a/a/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 373
    invoke-virtual {v1, v0, v2, v3}, Lb/a/a/f$a;->a(Lb/a/a/h;J)V

    goto :goto_2

    .line 375
    :cond_2
    iget-object v0, p0, Lb/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 376
    invoke-virtual {v1, v0, v2, v3}, Lb/a/a/f$a;->a(Lb/a/a/h;J)V

    goto :goto_3

    .line 378
    :cond_3
    iget-object v0, p0, Lb/a/a/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 379
    invoke-virtual {v1, v0, v2, v3}, Lb/a/a/f$a;->a(Lb/a/a/h;J)V

    goto :goto_4

    .line 381
    :cond_4
    invoke-virtual {v1}, Lb/a/a/f$a;->toByteArray()[B

    move-result-object v0

    .line 383
    :try_start_0
    invoke-virtual {v1}, Lb/a/a/f$a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_5
    return-object v0

    .line 384
    :catch_0
    move-exception v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    invoke-virtual {p0}, Lb/a/a/f;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dns[query:"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v0, " id=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    invoke-virtual {p0}, Lb/a/a/f;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p0}, Lb/a/a/f;->e()I

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    const-string v0, ", flags=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {p0}, Lb/a/a/f;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {p0}, Lb/a/a/f;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, ":r"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    :cond_0
    invoke-virtual {p0}, Lb/a/a/f;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const-string v0, ":aa"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_1
    invoke-virtual {p0}, Lb/a/a/f;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    const-string v0, ":tc"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_2
    invoke-virtual {p0}, Lb/a/a/f;->h()I

    move-result v0

    if-lez v0, :cond_3

    .line 420
    const-string v0, ", questions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {p0}, Lb/a/a/f;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 423
    :cond_3
    invoke-virtual {p0}, Lb/a/a/f;->k()I

    move-result v0

    if-lez v0, :cond_4

    .line 424
    const-string v0, ", answers="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {p0}, Lb/a/a/f;->k()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 427
    :cond_4
    invoke-virtual {p0}, Lb/a/a/f;->m()I

    move-result v0

    if-lez v0, :cond_5

    .line 428
    const-string v0, ", authorities="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {p0}, Lb/a/a/f;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 431
    :cond_5
    invoke-virtual {p0}, Lb/a/a/f;->o()I

    move-result v0

    if-lez v0, :cond_6

    .line 432
    const-string v0, ", additionals="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {p0}, Lb/a/a/f;->o()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 435
    :cond_6
    invoke-virtual {p0}, Lb/a/a/f;->h()I

    move-result v0

    if-lez v0, :cond_8

    .line 436
    const-string v0, "\nquestions:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    iget-object v0, p0, Lb/a/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/g;

    .line 438
    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 403
    :cond_7
    const-string v0, "dns[response:"

    goto/16 :goto_0

    .line 442
    :cond_8
    invoke-virtual {p0}, Lb/a/a/f;->k()I

    move-result v0

    if-lez v0, :cond_9

    .line 443
    const-string v0, "\nanswers:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    iget-object v0, p0, Lb/a/a/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 445
    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 449
    :cond_9
    invoke-virtual {p0}, Lb/a/a/f;->m()I

    move-result v0

    if-lez v0, :cond_a

    .line 450
    const-string v0, "\nauthorities:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    iget-object v0, p0, Lb/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 452
    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 456
    :cond_a
    invoke-virtual {p0}, Lb/a/a/f;->o()I

    move-result v0

    if-lez v0, :cond_b

    .line 457
    const-string v0, "\nadditionals:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    iget-object v0, p0, Lb/a/a/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 459
    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 463
    :cond_b
    const-string v0, "\nnames="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    iget-object v0, p0, Lb/a/a/f;->g:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 465
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lb/a/a/f;->h:I

    return v0
.end method
