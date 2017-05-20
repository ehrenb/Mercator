.class public abstract Lio/realm/ad;
.super Ljava/lang/Object;
.source "RealmObject.java"

# interfaces
.implements Lio/realm/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeListener(Lio/realm/ac;Lio/realm/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;",
            "Lio/realm/w",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    if-nez p1, :cond_1

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    instance-of v0, p0, Lio/realm/internal/j;

    if-eqz v0, :cond_5

    .line 306
    check-cast p0, Lio/realm/internal/j;

    .line 307
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 309
    iget-object v1, v0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v1}, Lio/realm/l;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t register a listener from a non-Looper thread or IntentService thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_2
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->f()Ljava/util/List;

    move-result-object v1

    .line 313
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 314
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_3
    invoke-static {p0}, Lio/realm/ad;->isLoaded(Lio/realm/ac;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    iget-object v0, v0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v0, p0}, Lio/realm/l;->a(Lio/realm/internal/j;)V

    .line 325
    :cond_4
    return-void

    .line 323
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asObservable(Lio/realm/ac;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)",
            "Lrx/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 449
    instance-of v0, p0, Lio/realm/internal/j;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 450
    check-cast v0, Lio/realm/internal/j;

    .line 451
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    .line 452
    instance-of v1, v0, Lio/realm/u;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, v0, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->m()Lio/realm/a/b;

    move-result-object v1

    check-cast v0, Lio/realm/u;

    invoke-interface {v1, v0, p0}, Lio/realm/a/b;->a(Lio/realm/u;Lio/realm/ac;)Lrx/d;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    .line 454
    :cond_0
    instance-of v1, v0, Lio/realm/e;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 455
    check-cast v1, Lio/realm/e;

    .line 456
    check-cast p0, Lio/realm/f;

    .line 458
    iget-object v0, v0, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->m()Lio/realm/a/b;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lio/realm/a/b;->a(Lio/realm/e;Lio/realm/f;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not support RxJava."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteFromRealm(Lio/realm/ac;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 95
    instance-of v0, p0, Lio/realm/internal/j;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object not managed by Realm, so it cannot be removed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    check-cast p0, Lio/realm/internal/j;

    .line 101
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 109
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v1

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->g(J)V

    .line 111
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    sget-object v1, Lio/realm/internal/f;->a:Lio/realm/internal/f;

    invoke-virtual {v0, v1}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    .line 112
    return-void
.end method

.method public static isLoaded(Lio/realm/ac;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 235
    instance-of v1, p0, Lio/realm/internal/j;

    if-eqz v1, :cond_0

    .line 236
    check-cast p0, Lio/realm/internal/j;

    .line 237
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->f()V

    .line 238
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(Lio/realm/ac;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    instance-of v1, p0, Lio/realm/internal/j;

    if-eqz v1, :cond_0

    .line 145
    check-cast p0, Lio/realm/internal/j;

    .line 146
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/realm/internal/l;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 149
    :cond_0
    return v0
.end method

.method public static load(Lio/realm/ac;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {p0}, Lio/realm/ad;->isLoaded(Lio/realm/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    .line 267
    :cond_0
    instance-of v0, p0, Lio/realm/internal/j;

    if-eqz v0, :cond_1

    .line 270
    check-cast p0, Lio/realm/internal/j;

    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->e()Z

    move-result v0

    goto :goto_0

    .line 272
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeChangeListener(Lio/realm/ac;Lio/realm/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;",
            "Lio/realm/w;",
            ")V"
        }
    .end annotation

    .prologue
    .line 349
    if-nez p0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    if-nez p1, :cond_1

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    instance-of v0, p0, Lio/realm/internal/j;

    if-eqz v0, :cond_2

    .line 356
    check-cast p0, Lio/realm/internal/j;

    .line 357
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 358
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 362
    return-void

    .line 360
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeChangeListeners(Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 378
    instance-of v0, p0, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    .line 379
    check-cast p0, Lio/realm/internal/j;

    .line 380
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 381
    invoke-interface {p0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addChangeListener(Lio/realm/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Lio/realm/w",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p0, p1}, Lio/realm/ad;->addChangeListener(Lio/realm/ac;Lio/realm/w;)V

    .line 287
    return-void
.end method

.method public final asObservable()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">()",
            "Lrx/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {p0}, Lio/realm/ad;->asObservable(Lio/realm/ac;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final deleteFromRealm()V
    .locals 0

    .prologue
    .line 82
    invoke-static {p0}, Lio/realm/ad;->deleteFromRealm(Lio/realm/ac;)V

    .line 83
    return-void
.end method

.method public final isLoaded()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {p0}, Lio/realm/ad;->isLoaded(Lio/realm/ac;)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    return v0
.end method

.method public final load()Z
    .locals 1

    .prologue
    .line 252
    invoke-static {p0}, Lio/realm/ad;->load(Lio/realm/ac;)Z

    move-result v0

    return v0
.end method

.method public final removeChangeListener(Lio/realm/w;)V
    .locals 0

    .prologue
    .line 336
    invoke-static {p0, p1}, Lio/realm/ad;->removeChangeListener(Lio/realm/ac;Lio/realm/w;)V

    .line 337
    return-void
.end method

.method public final removeChangeListeners()V
    .locals 0

    .prologue
    .line 368
    invoke-static {p0}, Lio/realm/ad;->removeChangeListeners(Lio/realm/ac;)V

    .line 369
    return-void
.end method
