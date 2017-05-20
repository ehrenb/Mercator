.class final Lio/realm/v;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/v$b;,
        Lio/realm/v$c;,
        Lio/realm/v$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/realm/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lio/realm/v$b;",
            "Lio/realm/v$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/realm/x;

.field private c:Lio/realm/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/v;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lio/realm/x;)V
    .locals 7

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lio/realm/v;->b:Lio/realm/x;

    .line 88
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/realm/v$b;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/realm/v;->a:Ljava/util/EnumMap;

    .line 89
    invoke-static {}, Lio/realm/v$b;->values()[Lio/realm/v$b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 90
    iget-object v4, p0, Lio/realm/v;->a:Ljava/util/EnumMap;

    new-instance v5, Lio/realm/v$c;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lio/realm/v$c;-><init>(Lio/realm/v$1;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method static declared-synchronized a(Lio/realm/x;Ljava/lang/Class;)Lio/realm/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/a;",
            ">(",
            "Lio/realm/x;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    const-class v4, Lio/realm/v;

    monitor-enter v4

    const/4 v2, 0x1

    .line 104
    :try_start_0
    sget-object v0, Lio/realm/v;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/v;

    .line 105
    if-nez v0, :cond_4

    .line 107
    new-instance v0, Lio/realm/v;

    invoke-direct {v0, p0}, Lio/realm/v;-><init>(Lio/realm/x;)V

    .line 111
    invoke-static {p0}, Lio/realm/v;->b(Lio/realm/x;)V

    move-object v3, v0

    move v2, v1

    .line 117
    :goto_0
    iget-object v0, v3, Lio/realm/v;->a:Ljava/util/EnumMap;

    invoke-static {p1}, Lio/realm/v$b;->a(Ljava/lang/Class;)Lio/realm/v$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/v$c;

    .line 119
    invoke-static {v0}, Lio/realm/v$c;->a(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 124
    const-class v1, Lio/realm/u;

    if-ne p1, v1, :cond_5

    .line 126
    iget-object v1, v3, Lio/realm/v;->c:Lio/realm/internal/a;

    invoke-static {p0, v1}, Lio/realm/u;->a(Lio/realm/x;Lio/realm/internal/a;)Lio/realm/u;

    move-result-object v1

    .line 136
    :goto_1
    if-nez v2, :cond_0

    .line 137
    sget-object v2, Lio/realm/v;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    invoke-static {v0}, Lio/realm/v$c;->a(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 140
    invoke-static {v0}, Lio/realm/v$c;->b(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 143
    :cond_1
    invoke-static {v0}, Lio/realm/v$c;->b(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 145
    const-class v2, Lio/realm/u;

    if-ne p1, v2, :cond_2

    invoke-static {v0}, Lio/realm/v$c;->c(Lio/realm/v$c;)I

    move-result v2

    if-nez v2, :cond_2

    .line 146
    invoke-static {v0}, Lio/realm/v$c;->a(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/a;

    iget-object v2, v2, Lio/realm/a;->f:Lio/realm/ah;

    iget-object v2, v2, Lio/realm/ah;->a:Lio/realm/internal/a;

    iput-object v2, v3, Lio/realm/v;->c:Lio/realm/internal/a;

    .line 149
    :cond_2
    invoke-static {v0}, Lio/realm/v$c;->d(Lio/realm/v$c;)I

    .line 151
    :cond_3
    invoke-static {v0}, Lio/realm/v$c;->b(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 154
    invoke-static {v0}, Lio/realm/v$c;->a(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v4

    return-object v0

    .line 114
    :cond_4
    :try_start_1
    invoke-direct {v0, p0}, Lio/realm/v;->a(Lio/realm/x;)V

    move-object v3, v0

    goto/16 :goto_0

    .line 127
    :cond_5
    const-class v1, Lio/realm/e;

    if-ne p1, v1, :cond_6

    .line 128
    invoke-static {p0}, Lio/realm/e;->c(Lio/realm/x;)Lio/realm/e;

    move-result-object v1

    goto :goto_1

    .line 130
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static declared-synchronized a(Lio/realm/a;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 165
    const-class v4, Lio/realm/v;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v5

    .line 166
    sget-object v0, Lio/realm/v;->d:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/v;

    .line 170
    if-eqz v0, :cond_7

    .line 171
    iget-object v1, v0, Lio/realm/v;->a:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lio/realm/v$b;->a(Ljava/lang/Class;)Lio/realm/v$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/v$c;

    .line 172
    invoke-static {v1}, Lio/realm/v$c;->b(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    .line 174
    :goto_0
    if-nez v1, :cond_0

    .line 175
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 178
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Realm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been closed already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_1
    monitor-exit v4

    return-void

    .line 184
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    .line 189
    invoke-static {v2}, Lio/realm/v$c;->b(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 190
    invoke-static {v2}, Lio/realm/v$c;->a(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 193
    invoke-static {v2}, Lio/realm/v$c;->e(Lio/realm/v$c;)I

    .line 194
    invoke-static {v2}, Lio/realm/v$c;->c(Lio/realm/v$c;)I

    move-result v1

    if-gez v1, :cond_2

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global reference counter of Realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got corrupted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 201
    :cond_2
    :try_start_2
    instance-of v1, p0, Lio/realm/u;

    if-eqz v1, :cond_3

    invoke-static {v2}, Lio/realm/v$c;->c(Lio/realm/v$c;)I

    move-result v1

    if-nez v1, :cond_3

    .line 203
    const/4 v1, 0x0

    iput-object v1, v0, Lio/realm/v;->c:Lio/realm/internal/a;

    .line 207
    :cond_3
    invoke-static {}, Lio/realm/v$b;->values()[Lio/realm/v$b;

    move-result-object v6

    array-length v7, v6

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_4

    aget-object v1, v6, v2

    .line 208
    iget-object v8, v0, Lio/realm/v;->a:Ljava/util/EnumMap;

    invoke-virtual {v8, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/v$c;

    invoke-static {v1}, Lio/realm/v$c;->c(Lio/realm/v$c;)I

    move-result v1

    add-int/2addr v3, v1

    .line 207
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 211
    :cond_4
    if-nez v3, :cond_5

    .line 212
    sget-object v0, Lio/realm/v;->d:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_5
    invoke-virtual {p0}, Lio/realm/a;->k()V

    goto :goto_1

    .line 218
    :cond_6
    invoke-static {v2}, Lio/realm/v$c;->b(Lio/realm/v$c;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_7
    move-object v2, v1

    goto/16 :goto_0
.end method

.method private a(Lio/realm/x;)V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lio/realm/v;->b:Lio/realm/x;

    invoke-virtual {v0, p1}, Lio/realm/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lio/realm/v;->b:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/x;->c()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong key used to decrypt Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lio/realm/x;->e()Lio/realm/ab;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lio/realm/v;->b:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->e()Lio/realm/ab;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lio/realm/x;->e()Lio/realm/ab;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/v;->b:Lio/realm/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nNew configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized a(Lio/realm/x;Lio/realm/v$a;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 265
    const-class v4, Lio/realm/v;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lio/realm/v;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/v;

    .line 266
    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/realm/v$a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :goto_0
    monitor-exit v4

    return-void

    .line 271
    :cond_0
    :try_start_1
    invoke-static {}, Lio/realm/v$b;->values()[Lio/realm/v$b;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v1, v5, v2

    .line 272
    iget-object v7, v0, Lio/realm/v;->a:Ljava/util/EnumMap;

    invoke-virtual {v7, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/v$c;

    invoke-static {v1}, Lio/realm/v$c;->c(Lio/realm/v$c;)I

    move-result v1

    add-int/2addr v3, v1

    .line 271
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 274
    :cond_1
    invoke-interface {p1, v3}, Lio/realm/v$a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private static b(Lio/realm/x;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-virtual {p0}, Lio/realm/x;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lio/realm/x;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lio/realm/x;->k()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 304
    if-nez v3, :cond_4

    .line 305
    :try_start_1
    new-instance v0, Lio/realm/exceptions/RealmIOException;

    const-string v2, "Invalid input stream to asset file."

    invoke-direct {v0, v2}, Lio/realm/exceptions/RealmIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 314
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 315
    :goto_1
    :try_start_2
    new-instance v3, Lio/realm/exceptions/RealmIOException;

    const-string v5, "Could not resolve the path to the Realm asset file."

    invoke-direct {v3, v5, v0}, Lio/realm/exceptions/RealmIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_2

    .line 319
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 324
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 326
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 328
    :cond_3
    throw v0

    .line 308
    :cond_4
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 309
    const/16 v0, 0x1000

    :try_start_6
    new-array v0, v0, [B

    .line 311
    :goto_4
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-le v1, v5, :cond_5

    .line 312
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 314
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 317
    :cond_5
    if-eqz v3, :cond_6

    .line 319
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 324
    :cond_6
    :goto_5
    if-eqz v2, :cond_0

    .line 326
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 327
    :catch_2
    move-exception v0

    .line 328
    new-instance v1, Lio/realm/exceptions/RealmIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid output stream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 327
    :catch_3
    move-exception v0

    .line 328
    new-instance v1, Lio/realm/exceptions/RealmIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid output stream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 320
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_3

    .line 317
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 314
    :catch_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1
.end method
