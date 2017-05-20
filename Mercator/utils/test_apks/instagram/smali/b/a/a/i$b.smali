.class public Lb/a/a/i$b;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "DNSStatefulObject.java"

# interfaces
.implements Lb/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static c:Ld/a/b;


# instance fields
.field protected volatile a:Lb/a/a/b/a;

.field protected volatile b:Lb/a/a/a/g;

.field private volatile d:Lb/a/a/l;

.field private final e:Lb/a/a/i$a;

.field private final f:Lb/a/a/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lb/a/a/i$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/i$b;->c:Ld/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 122
    iput-object v0, p0, Lb/a/a/i$b;->d:Lb/a/a/l;

    .line 123
    iput-object v0, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    .line 124
    sget-object v0, Lb/a/a/a/g;->a:Lb/a/a/a/g;

    iput-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    .line 125
    new-instance v0, Lb/a/a/i$a;

    const-string v1, "Announce"

    invoke-direct {v0, v1}, Lb/a/a/i$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/a/i$b;->e:Lb/a/a/i$a;

    .line 126
    new-instance v0, Lb/a/a/i$a;

    const-string v1, "Cancel"

    invoke-direct {v0, v1}, Lb/a/a/i$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/a/i$b;->f:Lb/a/a/i$a;

    .line 127
    return-void
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lb/a/a/l;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lb/a/a/i$b;->d:Lb/a/a/l;

    return-object v0
.end method

.method protected a(Lb/a/a/a/g;)V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 199
    :try_start_0
    iput-object p1, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    .line 200
    invoke-virtual {p0}, Lb/a/a/i$b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lb/a/a/i$b;->e:Lb/a/a/i$a;

    invoke-virtual {v0}, Lb/a/a/i$a;->a()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lb/a/a/i$b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lb/a/a/i$b;->f:Lb/a/a/i$a;

    invoke-virtual {v0}, Lb/a/a/i$a;->a()V

    .line 206
    iget-object v0, p0, Lb/a/a/i$b;->e:Lb/a/a/i$a;

    invoke-virtual {v0}, Lb/a/a/i$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method public a(Lb/a/a/b/a;Lb/a/a/a/g;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    if-ne v0, p2, :cond_1

    .line 147
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 149
    :try_start_0
    iget-object v0, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    if-ne v0, p2, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lb/a/a/i$b;->c(Lb/a/a/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    .line 156
    :cond_1
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method protected a(Lb/a/a/l;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lb/a/a/i$b;->d:Lb/a/a/l;

    .line 139
    return-void
.end method

.method public a(J)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0xa

    .line 381
    invoke-virtual {p0}, Lb/a/a/i$b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/a/a/i$b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lb/a/a/i$b;->e:Lb/a/a/i$a;

    add-long v2, p1, v4

    invoke-virtual {v0, v2, v3}, Lb/a/a/i$a;->a(J)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lb/a/a/i$b;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lb/a/a/i$b;->e:Lb/a/a/i$a;

    invoke-virtual {v0, v4, v5}, Lb/a/a/i$a;->a(J)V

    .line 387
    invoke-virtual {p0}, Lb/a/a/i$b;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    invoke-direct {p0}, Lb/a/a/i$b;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lb/a/a/i$b;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    :cond_1
    sget-object v0, Lb/a/a/i$b;->c:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for announced cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 395
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lb/a/a/i$b;->h()Z

    move-result v0

    return v0

    .line 391
    :cond_3
    sget-object v0, Lb/a/a/i$b;->c:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for announced timed out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lb/a/a/b/a;)Z
    .locals 4

    .prologue
    .line 218
    const/4 v0, 0x1

    .line 219
    iget-object v1, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    if-ne v1, p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 222
    :try_start_0
    iget-object v1, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    if-ne v1, p1, :cond_1

    .line 223
    iget-object v1, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v1}, Lb/a/a/a/g;->a()Lb/a/a/a/g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb/a/a/i$b;->a(Lb/a/a/a/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    .line 231
    :cond_0
    return v0

    .line 225
    :cond_1
    :try_start_1
    sget-object v1, Lb/a/a/i$b;->c:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to advance state whhen not the owner. owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " perpetrator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ld/a/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method public b(Lb/a/a/b/a;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    if-ne v0, p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 166
    :try_start_0
    iget-object v0, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    if-ne v0, p1, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/i$b;->c(Lb/a/a/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    .line 173
    :cond_1
    return-void

    .line 170
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x1

    .line 240
    invoke-direct {p0}, Lb/a/a/i$b;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 243
    :try_start_0
    invoke-direct {p0}, Lb/a/a/i$b;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v1}, Lb/a/a/a/g;->b()Lb/a/a/a/g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb/a/a/i$b;->a(Lb/a/a/a/g;)V

    .line 245
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lb/a/a/i$b;->c(Lb/a/a/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    .line 251
    :cond_1
    return v0

    .line 248
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method public b(J)Z
    .locals 5

    .prologue
    .line 403
    invoke-virtual {p0}, Lb/a/a/i$b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lb/a/a/i$b;->f:Lb/a/a/i$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/i$a;->a(J)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lb/a/a/i$b;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lb/a/a/i$b;->f:Lb/a/a/i$a;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Lb/a/a/i$a;->a(J)V

    .line 409
    invoke-virtual {p0}, Lb/a/a/i$b;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lb/a/a/i$b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    sget-object v0, Lb/a/a/i$b;->c:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for canceled timed out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 413
    :cond_1
    invoke-virtual {p0}, Lb/a/a/i$b;->j()Z

    move-result v0

    return v0
.end method

.method public b(Lb/a/a/b/a;Lb/a/a/a/g;)Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 182
    :try_start_0
    iget-object v0, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    .line 184
    :goto_0
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method protected c(Lb/a/a/b/a;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    .line 190
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    invoke-direct {p0}, Lb/a/a/i$b;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 263
    :try_start_0
    invoke-direct {p0}, Lb/a/a/i$b;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    sget-object v0, Lb/a/a/a/g;->g:Lb/a/a/a/g;

    invoke-virtual {p0, v0}, Lb/a/a/i$b;->a(Lb/a/a/a/g;)V

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/i$b;->c(Lb/a/a/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const/4 v0, 0x1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    .line 272
    :cond_1
    return v0

    .line 269
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    invoke-direct {p0}, Lb/a/a/i$b;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 284
    :try_start_0
    invoke-direct {p0}, Lb/a/a/i$b;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    sget-object v0, Lb/a/a/a/g;->k:Lb/a/a/a/g;

    invoke-virtual {p0, v0}, Lb/a/a/i$b;->a(Lb/a/a/a/g;)V

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/i$b;->c(Lb/a/a/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    const/4 v0, 0x1

    .line 290
    :cond_0
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    .line 293
    :cond_1
    return v0

    .line 290
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0}, Lb/a/a/i$b;->lock()V

    .line 304
    :try_start_0
    sget-object v1, Lb/a/a/a/g;->a:Lb/a/a/a/g;

    invoke-virtual {p0, v1}, Lb/a/a/i$b;->a(Lb/a/a/a/g;)V

    .line 305
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lb/a/a/i$b;->c(Lb/a/a/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    .line 309
    return v0

    .line 307
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/i$b;->unlock()V

    throw v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->c()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->d()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->e()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->f()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->g()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->h()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->i()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lb/a/a/i$b;->d:Lb/a/a/l;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lb/a/a/i$b;->d:Lb/a/a/l;

    invoke-virtual {v2}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lb/a/a/i$b;->d:Lb/a/a/l;

    invoke-virtual {v2}, Lb/a/a/l;->y()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_1
    return-object v0

    .line 422
    :cond_0
    const-string v0, "NO DNS"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lb/a/a/i$b;->d:Lb/a/a/l;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lb/a/a/i$b;->d:Lb/a/a/l;

    invoke-virtual {v2}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/i$b;->b:Lb/a/a/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/i$b;->a:Lb/a/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "NO DNS"

    goto :goto_2
.end method
