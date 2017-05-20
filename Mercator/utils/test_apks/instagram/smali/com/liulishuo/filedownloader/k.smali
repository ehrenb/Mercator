.class Lcom/liulishuo/filedownloader/k;
.super Ljava/lang/Object;
.source "FileDownloadMessenger.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/s;


# instance fields
.field private a:Lcom/liulishuo/filedownloader/a$b;

.field private b:Lcom/liulishuo/filedownloader/a$d;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/a$d;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/k;->a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/a$d;)V

    .line 47
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 228
    invoke-static {p1}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the messenger[%s] has already accomplished all his job, but there still are some messages in parcel queue[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    .line 234
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 231
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    .line 238
    :cond_1
    return-void
.end method

.method private a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/a$d;)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    .line 51
    iput-object p2, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    .line 53
    return-void
.end method

.method private k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    if-nez v0, :cond_1

    .line 199
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 202
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->l()Lcom/liulishuo/filedownloader/i;

    move-result-object v0

    if-nez v0, :cond_4

    .line 211
    :cond_2
    invoke-static {}, Lcom/liulishuo/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->p_()V

    .line 218
    :cond_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/k;->a(I)V

    goto :goto_0

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 222
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->a()Lcom/liulishuo/filedownloader/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/j;->a(Lcom/liulishuo/filedownloader/s;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 74
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "notify pending %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    .line 80
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 81
    return-void
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "notify begin %s"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    if-nez v2, :cond_1

    .line 62
    const-string v2, "can\'t begin the task, the holder fo the messenger is nil, %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    .line 63
    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 62
    invoke-static {p0, v2, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->a()V

    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 247
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v3

    .line 248
    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    .line 250
    const-string v0, "can\'t handover the message, no master to receive this message(status[%d]) size[%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v7, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    .line 251
    invoke-static {v0, v5}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    move v0, v1

    .line 250
    :goto_1
    invoke-static {v5, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 256
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    .line 258
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->l()Lcom/liulishuo/filedownloader/i;

    move-result-object v7

    .line 259
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a$b;->B()Lcom/liulishuo/filedownloader/w$a;

    move-result-object v2

    .line 261
    invoke-direct {p0, v3}, Lcom/liulishuo/filedownloader/k;->a(I)V

    .line 263
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/i;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x4

    if-ne v3, v0, :cond_3

    .line 269
    :try_start_0
    invoke-virtual {v7, v1}, Lcom/liulishuo/filedownloader/i;->blockComplete(Lcom/liulishuo/filedownloader/a;)V

    .line 270
    check-cast v6, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;

    invoke-interface {v6}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;->q_()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-interface {v2, v0}, Lcom/liulishuo/filedownloader/w$a;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/k;->h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 251
    goto :goto_1

    .line 275
    :cond_3
    const/4 v0, 0x0

    .line 276
    instance-of v2, v7, Lcom/liulishuo/filedownloader/g;

    if-eqz v2, :cond_4

    move-object v0, v7

    .line 277
    check-cast v0, Lcom/liulishuo/filedownloader/g;

    .line 280
    :cond_4
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 359
    :pswitch_1
    invoke-virtual {v7, v1}, Lcom/liulishuo/filedownloader/i;->warn(Lcom/liulishuo/filedownloader/a;)V

    goto :goto_0

    .line 282
    :pswitch_2
    if-eqz v0, :cond_5

    .line 284
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v2

    .line 285
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v4

    .line 283
    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/g;->pending(Lcom/liulishuo/filedownloader/a;JJ)V

    goto :goto_0

    .line 288
    :cond_5
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result v0

    .line 289
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    move-result v2

    .line 287
    invoke-virtual {v7, v1, v0, v2}, Lcom/liulishuo/filedownloader/i;->pending(Lcom/liulishuo/filedownloader/a;II)V

    goto/16 :goto_0

    .line 294
    :pswitch_3
    invoke-virtual {v7, v1}, Lcom/liulishuo/filedownloader/i;->started(Lcom/liulishuo/filedownloader/a;)V

    goto/16 :goto_0

    .line 297
    :pswitch_4
    if-eqz v0, :cond_6

    .line 299
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()Z

    move-result v3

    .line 301
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->n()J

    move-result-wide v4

    .line 302
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v6

    .line 298
    invoke-virtual/range {v0 .. v7}, Lcom/liulishuo/filedownloader/g;->connected(Lcom/liulishuo/filedownloader/a;Ljava/lang/String;ZJJ)V

    goto/16 :goto_0

    .line 306
    :cond_6
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()Z

    move-result v3

    .line 308
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->m()I

    move-result v4

    .line 309
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    move-result v5

    move-object v0, v7

    .line 305
    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/i;->connected(Lcom/liulishuo/filedownloader/a;Ljava/lang/String;ZII)V

    goto/16 :goto_0

    .line 314
    :pswitch_5
    if-eqz v0, :cond_7

    .line 316
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v2

    .line 317
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->p()J

    move-result-wide v4

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/g;->progress(Lcom/liulishuo/filedownloader/a;JJ)V

    goto/16 :goto_0

    .line 321
    :cond_7
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result v0

    .line 322
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->o()I

    move-result v2

    .line 320
    invoke-virtual {v7, v1, v0, v2}, Lcom/liulishuo/filedownloader/i;->progress(Lcom/liulishuo/filedownloader/a;II)V

    goto/16 :goto_0

    .line 326
    :pswitch_6
    if-eqz v0, :cond_8

    .line 328
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v2

    .line 329
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()I

    move-result v3

    .line 330
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v4

    .line 327
    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/g;->retry(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;IJ)V

    goto/16 :goto_0

    .line 333
    :cond_8
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    .line 334
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()I

    move-result v2

    .line 335
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result v3

    .line 332
    invoke-virtual {v7, v1, v0, v2, v3}, Lcom/liulishuo/filedownloader/i;->retry(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;II)V

    goto/16 :goto_0

    .line 340
    :pswitch_7
    invoke-virtual {v7, v1}, Lcom/liulishuo/filedownloader/i;->completed(Lcom/liulishuo/filedownloader/a;)V

    goto/16 :goto_0

    .line 344
    :pswitch_8
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    .line 343
    invoke-virtual {v7, v1, v0}, Lcom/liulishuo/filedownloader/i;->error(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 347
    :pswitch_9
    if-eqz v0, :cond_9

    .line 349
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v2

    .line 350
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v4

    .line 348
    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/g;->paused(Lcom/liulishuo/filedownloader/a;JJ)V

    goto/16 :goto_0

    .line 353
    :cond_9
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result v0

    .line 354
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    move-result v2

    .line 352
    invoke-virtual {v7, v1, v0, v2}, Lcom/liulishuo/filedownloader/i;->paused(Lcom/liulishuo/filedownloader/a;II)V

    goto/16 :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 85
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "notify started %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    .line 91
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 92
    return-void
.end method

.method public c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 96
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "notify connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    .line 102
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 103
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->x()Z

    move-result v0

    return v0
.end method

.method public d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 108
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "notify progress %s %d %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    .line 110
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->p()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 109
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->f()I

    move-result v0

    if-gtz v0, :cond_2

    .line 113
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "notify progress but client not request notify %s"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v2, v1, v6

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    .line 121
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 130
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "notify block completed %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    .line 136
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 137
    return-void
.end method

.method public f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 5

    .prologue
    .line 141
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 143
    const-string v1, "notify retry %s %d %d %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 144
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->v()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->w()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->t()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v2, v3

    .line 143
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    .line 149
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 150
    return-void
.end method

.method public g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 155
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "notify warn %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->p_()V

    .line 161
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 162
    return-void
.end method

.method public h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 166
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "notify error %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->t()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->p_()V

    .line 172
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 173
    return-void
.end method

.method public i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 177
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "notify paused %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->p_()V

    .line 183
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 184
    return-void
.end method

.method public j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .prologue
    .line 188
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "notify completed %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->p_()V

    .line 194
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 394
    const-string v0, "%d:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
