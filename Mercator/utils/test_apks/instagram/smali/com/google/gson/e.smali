.class public final Lcom/google/gson/e;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/e$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/gson/h;

.field final b:Lcom/google/gson/m;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/c/a",
            "<*>;",
            "Lcom/google/gson/e$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/c/a",
            "<*>;",
            "Lcom/google/gson/o",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/p;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/gson/b/c;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 186
    sget-object v1, Lcom/google/gson/b/d;->a:Lcom/google/gson/b/d;

    sget-object v2, Lcom/google/gson/c;->a:Lcom/google/gson/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v11, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-direct/range {v0 .. v12}, Lcom/google/gson/e;-><init>(Lcom/google/gson/b/d;Lcom/google/gson/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/n;Ljava/util/List;)V

    .line 191
    return-void
.end method

.method constructor <init>(Lcom/google/gson/b/d;Lcom/google/gson/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/n;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/b/d;",
            "Lcom/google/gson/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/f",
            "<*>;>;ZZZZZZZ",
            "Lcom/google/gson/n;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/e;->d:Ljava/util/Map;

    .line 135
    new-instance v1, Lcom/google/gson/e$1;

    invoke-direct {v1, p0}, Lcom/google/gson/e$1;-><init>(Lcom/google/gson/e;)V

    iput-object v1, p0, Lcom/google/gson/e;->a:Lcom/google/gson/h;

    .line 142
    new-instance v1, Lcom/google/gson/e$2;

    invoke-direct {v1, p0}, Lcom/google/gson/e$2;-><init>(Lcom/google/gson/e;)V

    iput-object v1, p0, Lcom/google/gson/e;->b:Lcom/google/gson/m;

    .line 199
    new-instance v1, Lcom/google/gson/b/c;

    invoke-direct {v1, p3}, Lcom/google/gson/b/c;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/gson/e;->f:Lcom/google/gson/b/c;

    .line 200
    iput-boolean p4, p0, Lcom/google/gson/e;->g:Z

    .line 201
    iput-boolean p6, p0, Lcom/google/gson/e;->i:Z

    .line 202
    iput-boolean p7, p0, Lcom/google/gson/e;->h:Z

    .line 203
    iput-boolean p8, p0, Lcom/google/gson/e;->j:Z

    .line 204
    iput-boolean p9, p0, Lcom/google/gson/e;->k:Z

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    sget-object v2, Lcom/google/gson/b/a/m;->Y:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Lcom/google/gson/b/a/h;->a:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    sget-object v2, Lcom/google/gson/b/a/m;->D:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v2, Lcom/google/gson/b/a/m;->m:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v2, Lcom/google/gson/b/a/m;->g:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v2, Lcom/google/gson/b/a/m;->i:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v2, Lcom/google/gson/b/a/m;->k:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static/range {p11 .. p11}, Lcom/google/gson/e;->a(Lcom/google/gson/n;)Lcom/google/gson/o;

    move-result-object v2

    .line 225
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lcom/google/gson/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/o;)Lcom/google/gson/p;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/gson/e;->a(Z)Lcom/google/gson/o;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/gson/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/o;)Lcom/google/gson/p;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/gson/e;->b(Z)Lcom/google/gson/o;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/gson/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/o;)Lcom/google/gson/p;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v3, Lcom/google/gson/b/a/m;->x:Lcom/google/gson/p;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v3, Lcom/google/gson/b/a/m;->o:Lcom/google/gson/p;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v3, Lcom/google/gson/b/a/m;->q:Lcom/google/gson/p;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lcom/google/gson/e;->a(Lcom/google/gson/o;)Lcom/google/gson/o;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gson/b/a/m;->a(Ljava/lang/Class;Lcom/google/gson/o;)Lcom/google/gson/p;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/google/gson/e;->b(Lcom/google/gson/o;)Lcom/google/gson/o;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/gson/b/a/m;->a(Ljava/lang/Class;Lcom/google/gson/o;)Lcom/google/gson/p;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v2, Lcom/google/gson/b/a/m;->s:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v2, Lcom/google/gson/b/a/m;->z:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v2, Lcom/google/gson/b/a/m;->F:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v2, Lcom/google/gson/b/a/m;->H:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-class v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/google/gson/b/a/m;->B:Lcom/google/gson/o;

    invoke-static {v2, v3}, Lcom/google/gson/b/a/m;->a(Ljava/lang/Class;Lcom/google/gson/o;)Lcom/google/gson/p;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-class v2, Ljava/math/BigInteger;

    sget-object v3, Lcom/google/gson/b/a/m;->C:Lcom/google/gson/o;

    invoke-static {v2, v3}, Lcom/google/gson/b/a/m;->a(Ljava/lang/Class;Lcom/google/gson/o;)Lcom/google/gson/p;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v2, Lcom/google/gson/b/a/m;->J:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v2, Lcom/google/gson/b/a/m;->L:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v2, Lcom/google/gson/b/a/m;->P:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v2, Lcom/google/gson/b/a/m;->R:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v2, Lcom/google/gson/b/a/m;->W:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v2, Lcom/google/gson/b/a/m;->N:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v2, Lcom/google/gson/b/a/m;->d:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v2, Lcom/google/gson/b/a/c;->a:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v2, Lcom/google/gson/b/a/m;->U:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v2, Lcom/google/gson/b/a/k;->a:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v2, Lcom/google/gson/b/a/j;->a:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v2, Lcom/google/gson/b/a/m;->S:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v2, Lcom/google/gson/b/a/a;->a:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v2, Lcom/google/gson/b/a/m;->b:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v2, Lcom/google/gson/b/a/b;

    iget-object v3, p0, Lcom/google/gson/e;->f:Lcom/google/gson/b/c;

    invoke-direct {v2, v3}, Lcom/google/gson/b/a/b;-><init>(Lcom/google/gson/b/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v2, Lcom/google/gson/b/a/g;

    iget-object v3, p0, Lcom/google/gson/e;->f:Lcom/google/gson/b/c;

    invoke-direct {v2, v3, p5}, Lcom/google/gson/b/a/g;-><init>(Lcom/google/gson/b/c;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v2, Lcom/google/gson/b/a/d;

    iget-object v3, p0, Lcom/google/gson/e;->f:Lcom/google/gson/b/c;

    invoke-direct {v2, v3}, Lcom/google/gson/b/a/d;-><init>(Lcom/google/gson/b/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v2, Lcom/google/gson/b/a/m;->Z:Lcom/google/gson/p;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v2, Lcom/google/gson/b/a/i;

    iget-object v3, p0, Lcom/google/gson/e;->f:Lcom/google/gson/b/c;

    invoke-direct {v2, v3, p2, p1}, Lcom/google/gson/b/a/i;-><init>(Lcom/google/gson/b/c;Lcom/google/gson/d;Lcom/google/gson/b/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    .line 265
    return-void
.end method

.method private static a(Lcom/google/gson/n;)Lcom/google/gson/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/n;",
            ")",
            "Lcom/google/gson/o",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    if-ne p0, v0, :cond_0

    .line 325
    sget-object v0, Lcom/google/gson/b/a/m;->t:Lcom/google/gson/o;

    .line 327
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/e$5;

    invoke-direct {v0}, Lcom/google/gson/e$5;-><init>()V

    goto :goto_0
.end method

.method private static a(Lcom/google/gson/o;)Lcom/google/gson/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/o",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/o",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/google/gson/e$6;

    invoke-direct {v0, p0}, Lcom/google/gson/e$6;-><init>(Lcom/google/gson/o;)V

    invoke-virtual {v0}, Lcom/google/gson/e$6;->a()Lcom/google/gson/o;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/google/gson/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/o",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    sget-object v0, Lcom/google/gson/b/a/m;->v:Lcom/google/gson/o;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/e$3;

    invoke-direct {v0, p0}, Lcom/google/gson/e$3;-><init>(Lcom/google/gson/e;)V

    goto :goto_0
.end method

.method static a(D)V
    .locals 4

    .prologue
    .line 316
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    return-void
.end method

.method private static b(Lcom/google/gson/o;)Lcom/google/gson/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/o",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/o",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Lcom/google/gson/e$7;

    invoke-direct {v0, p0}, Lcom/google/gson/e$7;-><init>(Lcom/google/gson/o;)V

    invoke-virtual {v0}, Lcom/google/gson/e$7;->a()Lcom/google/gson/o;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lcom/google/gson/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/o",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    sget-object v0, Lcom/google/gson/b/a/m;->u:Lcom/google/gson/o;

    .line 295
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/e$4;

    invoke-direct {v0, p0}, Lcom/google/gson/e$4;-><init>(Lcom/google/gson/e;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/gson/c/a;)Lcom/google/gson/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/c/a",
            "<TT;>;)",
            "Lcom/google/gson/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/gson/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/o;

    .line 393
    if-eqz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 398
    const/4 v1, 0x0

    .line 399
    if-nez v0, :cond_5

    .line 400
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 401
    iget-object v0, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 402
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 406
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/e$a;

    .line 407
    if-nez v0, :cond_0

    .line 412
    :try_start_0
    new-instance v3, Lcom/google/gson/e$a;

    invoke-direct {v3}, Lcom/google/gson/e$a;-><init>()V

    .line 413
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/p;

    .line 416
    invoke-interface {v0, p0, p1}, Lcom/google/gson/p;->a(Lcom/google/gson/e;Lcom/google/gson/c/a;)Lcom/google/gson/o;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v3, v0}, Lcom/google/gson/e$a;->a(Lcom/google/gson/o;)V

    .line 419
    iget-object v3, p0, Lcom/google/gson/e;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 423
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    if-eqz v1, :cond_4

    .line 428
    iget-object v1, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Lcom/google/gson/p;Lcom/google/gson/c/a;)Lcom/google/gson/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/p;",
            "Lcom/google/gson/c/a",
            "<TT;>;)",
            "Lcom/google/gson/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 484
    const/4 v0, 0x0

    .line 488
    iget-object v2, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/p;

    .line 491
    if-nez v2, :cond_2

    .line 492
    if-ne v0, p1, :cond_1

    move v2, v1

    .line 493
    goto :goto_0

    .line 498
    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/gson/p;->a(Lcom/google/gson/e;Lcom/google/gson/c/a;)Lcom/google/gson/o;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_1

    .line 500
    return-object v0

    .line 503
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;)Lcom/google/gson/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/gson/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 513
    invoke-static {p1}, Lcom/google/gson/c/a;->b(Ljava/lang/Class;)Lcom/google/gson/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/e;->a(Lcom/google/gson/c/a;)Lcom/google/gson/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Lcom/google/gson/stream/a;
    .locals 2

    .prologue
    .line 720
    new-instance v0, Lcom/google/gson/stream/a;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/a;-><init>(Ljava/io/Reader;)V

    .line 721
    iget-boolean v1, p0, Lcom/google/gson/e;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/a;->a(Z)V

    .line 722
    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/google/gson/stream/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/google/gson/e;->i:Z

    if-eqz v0, :cond_0

    .line 706
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 708
    :cond_0
    new-instance v0, Lcom/google/gson/stream/c;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/c;-><init>(Ljava/io/Writer;)V

    .line 709
    iget-boolean v1, p0, Lcom/google/gson/e;->j:Z

    if-eqz v1, :cond_1

    .line 710
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/c;->c(Ljava/lang/String;)V

    .line 712
    :cond_1
    iget-boolean v1, p0, Lcom/google/gson/e;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/c;->c(Z)V

    .line 713
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/e;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/e;->f:Lcom/google/gson/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
