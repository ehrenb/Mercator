.class public final Lio/realm/u;
.super Lio/realm/a;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/u$a;
    }
.end annotation


# static fields
.field private static i:Lio/realm/x;


# direct methods
.method constructor <init>(Lio/realm/x;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lio/realm/a;-><init>(Lio/realm/x;)V

    .line 136
    return-void
.end method

.method private a(Lio/realm/ac;ILjava/util/Map;)Lio/realm/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;I",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)TE;"
        }
    .end annotation

    .prologue
    .line 1296
    invoke-virtual {p0}, Lio/realm/u;->f()V

    .line 1297
    iget-object v0, p0, Lio/realm/u;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/k;->a(Lio/realm/ac;ILjava/util/Map;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method private a(Lio/realm/ac;ZLjava/util/Map;)Lio/realm/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 1291
    invoke-virtual {p0}, Lio/realm/u;->f()V

    .line 1292
    iget-object v0, p0, Lio/realm/u;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/realm/internal/k;->a(Lio/realm/u;Lio/realm/ac;ZLjava/util/Map;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method static a(Lio/realm/x;Lio/realm/internal/a;)Lio/realm/u;
    .locals 2

    .prologue
    .line 214
    :try_start_0
    invoke-static {p0, p1}, Lio/realm/u;->b(Lio/realm/x;Lio/realm/internal/a;)Lio/realm/u;
    :try_end_0
    .catch Lio/realm/exceptions/RealmMigrationNeededException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {p0}, Lio/realm/x;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p0}, Lio/realm/u;->e(Lio/realm/x;)Z

    .line 228
    :goto_1
    invoke-static {p0, p1}, Lio/realm/u;->b(Lio/realm/x;Lio/realm/internal/a;)Lio/realm/u;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_0
    :try_start_1
    invoke-static {p0}, Lio/realm/u;->d(Lio/realm/x;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 222
    :catch_1
    move-exception v0

    .line 224
    new-instance v1, Lio/realm/exceptions/RealmIOException;

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1390
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    new-instance v0, Lio/realm/exceptions/RealmIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve the canonical path to the Realm file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 1313
    if-gez p1, :cond_0

    .line 1314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxDepth must be > 0. It was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_0
    return-void
.end method

.method private static a(Lio/realm/u;)V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    invoke-virtual {p0}, Lio/realm/u;->j()J

    move-result-wide v4

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lio/realm/u;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    cmp-long v0, v4, v10

    if-nez v0, :cond_5

    .line 268
    :try_start_1
    iget-object v0, p0, Lio/realm/u;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/realm/u;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v1, v2

    .line 271
    :goto_0
    :try_start_2
    iget-object v0, p0, Lio/realm/u;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v6

    .line 272
    invoke-virtual {v6}, Lio/realm/internal/k;->a()Ljava/util/Set;

    move-result-object v0

    .line 274
    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 275
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 277
    cmp-long v9, v4, v10

    if-nez v9, :cond_0

    .line 278
    iget-object v9, p0, Lio/realm/u;->e:Lio/realm/internal/m;

    invoke-virtual {v9}, Lio/realm/internal/m;->g()Lio/realm/internal/e;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Lio/realm/internal/k;->a(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/Table;

    .line 280
    :cond_0
    iget-object v9, p0, Lio/realm/u;->e:Lio/realm/internal/m;

    invoke-virtual {v9}, Lio/realm/internal/m;->g()Lio/realm/internal/e;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Lio/realm/internal/k;->b(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/b;

    move-result-object v9

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    .line 292
    invoke-virtual {p0, v3, v2}, Lio/realm/u;->a(ZZ)V

    .line 294
    :goto_3
    throw v0

    .line 282
    :cond_1
    :try_start_3
    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    new-instance v6, Lio/realm/internal/a;

    invoke-direct {v6, v7}, Lio/realm/internal/a;-><init>(Ljava/util/Map;)V

    iput-object v6, v0, Lio/realm/ah;->a:Lio/realm/internal/a;

    .line 284
    cmp-long v0, v4, v10

    if-nez v0, :cond_2

    .line 285
    invoke-virtual {p0}, Lio/realm/u;->i()Lio/realm/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x;->i()Lio/realm/u$a;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_2

    .line 287
    invoke-interface {v0, p0}, Lio/realm/u$a;->a(Lio/realm/u;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    :cond_2
    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {p0, v3, v2}, Lio/realm/u;->a(ZZ)V

    .line 297
    :goto_4
    return-void

    .line 294
    :cond_3
    invoke-virtual {p0}, Lio/realm/u;->e()V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lio/realm/u;->e()V

    goto :goto_3

    .line 291
    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method public static a(Lio/realm/x;Lio/realm/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1351
    new-instance v0, Lio/realm/u$1;

    invoke-direct {v0}, Lio/realm/u$1;-><init>()V

    invoke-static {p0, p1, v0}, Lio/realm/a;->a(Lio/realm/x;Lio/realm/ab;Lio/realm/a$a;)V

    .line 1356
    return-void
.end method

.method public static b(Lio/realm/x;)Lio/realm/u;
    .locals 2

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    const-class v0, Lio/realm/u;

    invoke-static {p0, v0}, Lio/realm/v;->a(Lio/realm/x;Ljava/lang/Class;)Lio/realm/a;

    move-result-object v0

    check-cast v0, Lio/realm/u;

    return-object v0
.end method

.method static b(Lio/realm/x;Lio/realm/internal/a;)Lio/realm/u;
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 233
    new-instance v0, Lio/realm/u;

    invoke-direct {v0, p0}, Lio/realm/u;-><init>(Lio/realm/x;)V

    .line 234
    invoke-virtual {v0}, Lio/realm/u;->j()J

    move-result-wide v2

    .line 235
    invoke-virtual {p0}, Lio/realm/x;->d()J

    move-result-wide v4

    .line 236
    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    if-nez p1, :cond_0

    .line 237
    invoke-virtual {v0}, Lio/realm/u;->k()V

    .line 238
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Realm on disk need to migrate from v%s to v%s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    cmp-long v1, v2, v10

    if-eqz v1, :cond_1

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    if-nez p1, :cond_1

    .line 241
    invoke-virtual {v0}, Lio/realm/u;->k()V

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Realm on disk is newer than the one specified: v%s vs. v%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    if-nez p1, :cond_2

    .line 248
    :try_start_0
    invoke-static {v0}, Lio/realm/u;->a(Lio/realm/u;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    invoke-virtual {v0}, Lio/realm/u;->k()V

    .line 251
    throw v1

    .line 254
    :cond_2
    iget-object v1, v0, Lio/realm/u;->f:Lio/realm/ah;

    iput-object p1, v1, Lio/realm/ah;->a:Lio/realm/internal/a;

    goto :goto_0
.end method

.method public static c(Lio/realm/x;)V
    .locals 2

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    sput-object p0, Lio/realm/u;->i:Lio/realm/x;

    .line 193
    return-void
.end method

.method public static d(Lio/realm/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1338
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/realm/u;->a(Lio/realm/x;Lio/realm/ab;)V

    .line 1339
    return-void
.end method

.method private e(Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 1301
    if-nez p1, :cond_0

    .line 1302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null objects cannot be copied into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1307
    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    invoke-virtual {v0, p1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A RealmObject with no @PrimaryKey cannot be updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_0
    return-void
.end method

.method public static e(Lio/realm/x;)Z
    .locals 1

    .prologue
    .line 1366
    invoke-static {p0}, Lio/realm/a;->a(Lio/realm/x;)Z

    move-result v0

    return v0
.end method

.method private f(Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 1319
    if-nez p1, :cond_0

    .line 1320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null objects cannot be copied from Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1322
    :cond_0
    invoke-static {p1}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmObject is not valid, so it cannot be copied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :cond_1
    instance-of v0, p1, Lio/realm/f;

    if-eqz v0, :cond_2

    .line 1326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicRealmObject cannot be copied from Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :cond_2
    return-void
.end method

.method public static n()Lio/realm/u;
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lio/realm/u;->i:Lio/realm/x;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No default RealmConfiguration was found. Call setDefaultConfiguration() first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    sget-object v0, Lio/realm/u;->i:Lio/realm/x;

    const-class v1, Lio/realm/u;

    invoke-static {v0, v1}, Lio/realm/v;->a(Lio/realm/x;Ljava/lang/Class;)Lio/realm/a;

    move-result-object v0

    check-cast v0, Lio/realm/u;

    return-object v0
.end method

.method public static o()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1409
    const-string v1, "io.realm.DefaultRealmModule"

    .line 1413
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1414
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 1415
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1416
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1418
    :goto_0
    return-object v0

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    const/4 v0, 0x0

    goto :goto_0

    .line 1419
    :catch_1
    move-exception v0

    .line 1420
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1421
    :catch_2
    move-exception v0

    .line 1422
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1423
    :catch_3
    move-exception v0

    .line 1424
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public a(Lio/realm/ac;)Lio/realm/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lio/realm/u;->e(Lio/realm/ac;)V

    .line 720
    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lio/realm/u;->a(Lio/realm/ac;ZLjava/util/Map;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/ac;I)Lio/realm/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;I)TE;"
        }
    .end annotation

    .prologue
    .line 1036
    invoke-direct {p0, p2}, Lio/realm/u;->a(I)V

    .line 1037
    invoke-direct {p0, p1}, Lio/realm/u;->f(Lio/realm/ac;)V

    .line 1038
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/u;->a(Lio/realm/ac;ILjava/util/Map;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lio/realm/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 679
    invoke-virtual {p0}, Lio/realm/u;->f()V

    .line 680
    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    invoke-virtual {v0, p1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lio/realm/internal/Table;->e()J

    move-result-wide v0

    .line 682
    invoke-virtual {p0, p1, v0, v1}, Lio/realm/u;->a(Ljava/lang/Class;J)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    invoke-virtual {v0, p1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 701
    invoke-virtual {v0, p2}, Lio/realm/internal/Table;->a(Ljava/lang/Object;)J

    move-result-wide v0

    .line 702
    invoke-virtual {p0, p1, v0, v1}, Lio/realm/u;->a(Ljava/lang/Class;J)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 953
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lio/realm/u;->a(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 978
    invoke-direct {p0, p2}, Lio/realm/u;->a(I)V

    .line 979
    if-nez p1, :cond_0

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 990
    :goto_0
    return-object v0

    .line 983
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 984
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 985
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    .line 986
    invoke-direct {p0, v0}, Lio/realm/u;->f(Lio/realm/ac;)V

    .line 987
    invoke-direct {p0, v0, p2, v2}, Lio/realm/u;->a(Lio/realm/ac;ILjava/util/Map;)Lio/realm/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 990
    goto :goto_0
.end method

.method public a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lio/realm/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p0}, Lio/realm/u;->g()V

    .line 866
    if-nez p1, :cond_0

    .line 867
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null objects cannot be inserted into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    :goto_0
    return-void

    .line 872
    :cond_1
    iget-object v0, p0, Lio/realm/u;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/k;->a(Lio/realm/u;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0, p1}, Lio/realm/a;->a(Z)V

    return-void
.end method

.method public bridge synthetic a()Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->a()Z

    move-result v0

    return v0
.end method

.method public b(Lio/realm/ac;)Lio/realm/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lio/realm/u;->e(Lio/realm/ac;)V

    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/u;->e(Ljava/lang/Class;)V

    .line 740
    const/4 v0, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lio/realm/u;->a(Lio/realm/ac;ZLjava/util/Map;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lio/realm/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/af",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1049
    invoke-virtual {p0}, Lio/realm/u;->f()V

    .line 1050
    invoke-static {p0, p1}, Lio/realm/af;->a(Lio/realm/u;Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->c()V

    return-void
.end method

.method public c(Lio/realm/ac;)V
    .locals 2

    .prologue
    .line 899
    invoke-virtual {p0}, Lio/realm/u;->g()V

    .line 900
    if-nez p1, :cond_0

    .line 901
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null object cannot be inserted into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 904
    iget-object v1, p0, Lio/realm/u;->d:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lio/realm/internal/k;->a(Lio/realm/u;Lio/realm/ac;Ljava/util/Map;)V

    .line 905
    return-void
.end method

.method public c(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1284
    invoke-virtual {p0}, Lio/realm/u;->f()V

    .line 1285
    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    invoke-virtual {v0, p1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->c()V

    .line 1286
    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->close()V

    return-void
.end method

.method public d(Lio/realm/ac;)Lio/realm/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1011
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lio/realm/u;->a(Lio/realm/ac;I)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    invoke-virtual {v0, p1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->e()V

    return-void
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lio/realm/x;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->i()Lio/realm/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()J
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic l()Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->l()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic m()Lio/realm/ah;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lio/realm/a;->m()Lio/realm/ah;

    move-result-object v0

    return-object v0
.end method
