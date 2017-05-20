.class public final Lio/realm/x;
.super Ljava/lang/Object;
.source "RealmConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/x$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Lio/realm/internal/k;

.field private static c:Ljava/lang/Boolean;


# instance fields
.field private final d:Ljava/io/File;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:[B

.field private final i:J

.field private final j:Lio/realm/ab;

.field private final k:Z

.field private final l:Lio/realm/internal/SharedGroup$a;

.field private final m:Lio/realm/internal/k;

.field private final n:Lio/realm/a/b;

.field private final o:Lio/realm/u$a;

.field private final p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lio/realm/u;->o()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lio/realm/x;->a:Ljava/lang/Object;

    .line 74
    sget-object v0, Lio/realm/x;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lio/realm/x;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/x;->a(Ljava/lang/String;)Lio/realm/internal/k;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lio/realm/internal/k;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RealmTransformer doesn\'t seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://realm.io/news/android-installation-change/"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    sput-object v0, Lio/realm/x;->b:Lio/realm/internal/k;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lio/realm/x;->b:Lio/realm/internal/k;

    goto :goto_0
.end method

.method private constructor <init>(Lio/realm/x$a;)V
    .locals 3

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lio/realm/x$a;->a(Lio/realm/x$a;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->d:Ljava/io/File;

    .line 103
    invoke-static {p1}, Lio/realm/x$a;->b(Lio/realm/x$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->e:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/realm/x;->d:Ljava/io/File;

    iget-object v2, p0, Lio/realm/x;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lio/realm/u;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->f:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lio/realm/x$a;->c(Lio/realm/x$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->g:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lio/realm/x$a;->d(Lio/realm/x$a;)[B

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->h:[B

    .line 107
    invoke-static {p1}, Lio/realm/x$a;->e(Lio/realm/x$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/x;->i:J

    .line 108
    invoke-static {p1}, Lio/realm/x$a;->f(Lio/realm/x$a;)Z

    move-result v0

    iput-boolean v0, p0, Lio/realm/x;->k:Z

    .line 109
    invoke-static {p1}, Lio/realm/x$a;->g(Lio/realm/x$a;)Lio/realm/ab;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->j:Lio/realm/ab;

    .line 110
    invoke-static {p1}, Lio/realm/x$a;->h(Lio/realm/x$a;)Lio/realm/internal/SharedGroup$a;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->l:Lio/realm/internal/SharedGroup$a;

    .line 111
    invoke-direct {p0, p1}, Lio/realm/x;->a(Lio/realm/x$a;)Lio/realm/internal/k;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->m:Lio/realm/internal/k;

    .line 112
    invoke-static {p1}, Lio/realm/x$a;->i(Lio/realm/x$a;)Lio/realm/a/b;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->n:Lio/realm/a/b;

    .line 113
    invoke-static {p1}, Lio/realm/x$a;->j(Lio/realm/x$a;)Lio/realm/u$a;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->o:Lio/realm/u$a;

    .line 114
    invoke-static {p1}, Lio/realm/x$a;->k(Lio/realm/x$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lio/realm/x;->p:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lio/realm/x$a;Lio/realm/x$1;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lio/realm/x;-><init>(Lio/realm/x$a;)V

    return-void
.end method

.method private a(Lio/realm/x$a;)Lio/realm/internal/k;
    .locals 4

    .prologue
    .line 257
    invoke-static {p1}, Lio/realm/x$a;->l(Lio/realm/x$a;)Ljava/util/HashSet;

    move-result-object v1

    .line 258
    invoke-static {p1}, Lio/realm/x$a;->m(Lio/realm/x$a;)Ljava/util/HashSet;

    move-result-object v2

    .line 261
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    new-instance v0, Lio/realm/internal/c/b;

    sget-object v1, Lio/realm/x;->b:Lio/realm/internal/k;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/c/b;-><init>(Lio/realm/internal/k;Ljava/util/Collection;)V

    .line 277
    :goto_0
    return-object v0

    .line 266
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 267
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/x;->a(Ljava/lang/String;)Lio/realm/internal/k;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [Lio/realm/internal/k;

    .line 272
    const/4 v0, 0x0

    .line 273
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 274
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/x;->a(Ljava/lang/String;)Lio/realm/internal/k;

    move-result-object v3

    aput-object v3, v2, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 276
    goto :goto_1

    .line 277
    :cond_2
    new-instance v0, Lio/realm/internal/c/a;

    invoke-direct {v0, v2}, Lio/realm/internal/c/a;-><init>([Lio/realm/internal/k;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lio/realm/internal/k;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 283
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 284
    const-string v1, "io.realm.%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Mediator"

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 290
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 291
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/k;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 294
    :catch_1
    move-exception v0

    .line 295
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

    .line 296
    :catch_2
    move-exception v0

    .line 297
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

    .line 298
    :catch_3
    move-exception v0

    .line 299
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

.method static synthetic n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lio/realm/x;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lio/realm/x;->p()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized p()Z
    .locals 2

    .prologue
    .line 334
    const-class v1, Lio/realm/x;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/realm/x;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 336
    :try_start_1
    const-string v0, "rx.d"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 337
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/realm/x;->c:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lio/realm/x;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/realm/x;->c:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lio/realm/x;->d:Ljava/io/File;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/realm/x;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()[B
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lio/realm/x;->h:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/x;->h:[B

    iget-object v1, p0, Lio/realm/x;->h:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lio/realm/x;->i:J

    return-wide v0
.end method

.method public e()Lio/realm/ab;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lio/realm/x;->j:Lio/realm/ab;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 218
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 221
    check-cast p1, Lio/realm/x;

    .line 223
    iget-wide v2, p0, Lio/realm/x;->i:J

    iget-wide v4, p1, Lio/realm/x;->i:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 224
    iget-boolean v1, p0, Lio/realm/x;->k:Z

    iget-boolean v2, p1, Lio/realm/x;->k:Z

    if-ne v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lio/realm/x;->d:Ljava/io/File;

    iget-object v2, p1, Lio/realm/x;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lio/realm/x;->e:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/x;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lio/realm/x;->f:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/x;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lio/realm/x;->h:[B

    iget-object v2, p1, Lio/realm/x;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lio/realm/x;->l:Lio/realm/internal/SharedGroup$a;

    iget-object v2, p1, Lio/realm/x;->l:Lio/realm/internal/SharedGroup$a;

    invoke-virtual {v1, v2}, Lio/realm/internal/SharedGroup$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lio/realm/x;->j:Lio/realm/ab;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/realm/x;->j:Lio/realm/ab;

    iget-object v2, p1, Lio/realm/x;->j:Lio/realm/ab;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :cond_2
    iget-object v1, p0, Lio/realm/x;->n:Lio/realm/a/b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lio/realm/x;->n:Lio/realm/a/b;

    iget-object v2, p1, Lio/realm/x;->n:Lio/realm/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    :cond_3
    iget-object v1, p0, Lio/realm/x;->o:Lio/realm/u$a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/realm/x;->o:Lio/realm/u$a;

    iget-object v2, p1, Lio/realm/x;->o:Lio/realm/u$a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    :cond_4
    iget-object v0, p0, Lio/realm/x;->m:Lio/realm/internal/k;

    iget-object v1, p1, Lio/realm/x;->m:Lio/realm/internal/k;

    invoke-virtual {v0, v1}, Lio/realm/internal/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 230
    :cond_5
    iget-object v1, p1, Lio/realm/x;->j:Lio/realm/ab;

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 232
    :cond_6
    iget-object v1, p1, Lio/realm/x;->n:Lio/realm/a/b;

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 233
    :cond_7
    iget-object v1, p1, Lio/realm/x;->o:Lio/realm/u$a;

    if-eqz v1, :cond_4

    goto/16 :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lio/realm/x;->k:Z

    return v0
.end method

.method public g()Lio/realm/internal/SharedGroup$a;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lio/realm/x;->l:Lio/realm/internal/SharedGroup$a;

    return-object v0
.end method

.method h()Lio/realm/internal/k;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lio/realm/x;->m:Lio/realm/internal/k;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lio/realm/x;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    .line 240
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/x;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/x;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 242
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/realm/x;->h:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/x;->h:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 243
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/realm/x;->i:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 244
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/realm/x;->j:Lio/realm/ab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/x;->j:Lio/realm/ab;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 245
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lio/realm/x;->k:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/x;->m:Lio/realm/internal/k;

    invoke-virtual {v2}, Lio/realm/internal/k;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 247
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/x;->l:Lio/realm/internal/SharedGroup$a;

    invoke-virtual {v2}, Lio/realm/internal/SharedGroup$a;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 248
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/realm/x;->n:Lio/realm/a/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/realm/x;->n:Lio/realm/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 249
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/x;->o:Lio/realm/u$a;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/realm/x;->o:Lio/realm/u$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 251
    return v0

    :cond_1
    move v0, v1

    .line 242
    goto :goto_0

    :cond_2
    move v0, v1

    .line 244
    goto :goto_1

    :cond_3
    move v0, v1

    .line 245
    goto :goto_2

    :cond_4
    move v0, v1

    .line 248
    goto :goto_3
.end method

.method i()Lio/realm/u$a;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lio/realm/x;->o:Lio/realm/u$a;

    return-object v0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lio/realm/x;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lio/realm/x;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lio/realm/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context should not be null. Use Application Context instead of Activity Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lio/realm/x;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lio/realm/a/b;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lio/realm/x;->n:Lio/realm/a/b;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RxJava seems to be missing from the classpath. Remember to add it as a compile dependency. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lio/realm/x;->n:Lio/realm/a/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    const-string v0, "realmFolder: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/x;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v0, "realmFileName : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/x;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v0, "canonicalPath: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/x;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v0, "key: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lio/realm/x;->h:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, "schemaVersion: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/realm/x;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v0, "migration: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/x;->j:Lio/realm/ab;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, "deleteRealmIfMigrationNeeded: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lio/realm/x;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v0, "durability: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/x;->l:Lio/realm/internal/SharedGroup$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, "schemaMediator: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/x;->m:Lio/realm/internal/k;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method
