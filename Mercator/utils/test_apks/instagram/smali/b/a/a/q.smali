.class public Lb/a/a/q;
.super Lb/a/d;
.source "ServiceInfoImpl.java"

# interfaces
.implements Lb/a/a/d;
.implements Lb/a/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/q$1;,
        Lb/a/a/q$a;
    }
.end annotation


# static fields
.field private static b:Ld/a/b;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private transient p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private final s:Lb/a/a/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lb/a/a/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/q;->b:Ld/a/b;

    return-void
.end method

.method constructor <init>(Lb/a/d;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-direct {p0}, Lb/a/d;-><init>()V

    .line 223
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->n:Ljava/util/Set;

    .line 224
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->o:Ljava/util/Set;

    .line 225
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Lb/a/d;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->c:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Lb/a/d;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->d:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lb/a/d;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->e:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lb/a/d;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->f:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Lb/a/d;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->g:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Lb/a/d;->i()I

    move-result v1

    iput v1, p0, Lb/a/a/q;->i:I

    .line 232
    invoke-virtual {p1}, Lb/a/d;->k()I

    move-result v1

    iput v1, p0, Lb/a/a/q;->j:I

    .line 233
    invoke-virtual {p1}, Lb/a/d;->j()I

    move-result v1

    iput v1, p0, Lb/a/a/q;->k:I

    .line 234
    invoke-virtual {p1}, Lb/a/d;->l()[B

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->l:[B

    .line 235
    invoke-virtual {p1}, Lb/a/d;->m()Z

    move-result v1

    iput-boolean v1, p0, Lb/a/a/q;->q:Z

    .line 236
    invoke-virtual {p1}, Lb/a/d;->h()[Ljava/net/Inet6Address;

    move-result-object v2

    .line 237
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 238
    iget-object v5, p0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1}, Lb/a/d;->g()[Ljava/net/Inet4Address;

    move-result-object v1

    .line 241
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 242
    iget-object v4, p0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :cond_1
    new-instance v0, Lb/a/a/q$a;

    invoke-direct {v0, p0}, Lb/a/a/q$a;-><init>(Lb/a/a/q;)V

    iput-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V
    .locals 7

    .prologue
    .line 178
    invoke-static {p1, p2, p3}, Lb/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 179
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v6, 0x0

    check-cast v6, [B

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 187
    iput-object p6, p0, Lb/a/a/q;->h:Ljava/lang/String;

    .line 189
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 190
    invoke-static {v0, p6}, Lb/a/a/q;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lb/a/a/q;->l:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/Map;IIIZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p6}, Lb/a/a/q;->b(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 183
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZ[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;IIIZ[B)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lb/a/d;-><init>()V

    .line 198
    invoke-static {p1}, Lb/a/a/q;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 200
    sget-object v0, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/q;->c:Ljava/lang/String;

    .line 201
    sget-object v0, Lb/a/d$a;->b:Lb/a/d$a;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/q;->d:Ljava/lang/String;

    .line 202
    sget-object v0, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/q;->e:Ljava/lang/String;

    .line 203
    sget-object v0, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/q;->f:Ljava/lang/String;

    .line 204
    sget-object v0, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/q;->g:Ljava/lang/String;

    .line 206
    iput p2, p0, Lb/a/a/q;->i:I

    .line 207
    iput p3, p0, Lb/a/a/q;->j:I

    .line 208
    iput p4, p0, Lb/a/a/q;->k:I

    .line 209
    iput-object p6, p0, Lb/a/a/q;->l:[B

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/q;->a(Z)V

    .line 211
    new-instance v0, Lb/a/a/q$a;

    invoke-direct {v0, p0}, Lb/a/a/q$a;-><init>(Lb/a/a/q;)V

    iput-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    .line 212
    iput-boolean p5, p0, Lb/a/a/q;->q:Z

    .line 213
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/q;->n:Ljava/util/Set;

    .line 214
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/q;->o:Ljava/util/Set;

    .line 215
    return-void
.end method

.method private final F()Z
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    const/4 v6, 0x0

    .line 260
    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 264
    const-string v3, ""

    .line 265
    const-string v5, ""

    .line 266
    const-string v0, ""

    .line 267
    const-string v4, ""

    .line 269
    const-string v1, "in-addr.arpa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ip6.arpa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    :cond_0
    const-string v0, "in-addr.arpa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "in-addr.arpa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 271
    :goto_0
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v0, ""

    move-object v4, v0

    move-object v0, v2

    move-object v2, v5

    .line 320
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 321
    sget-object v6, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-static {v1}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v1, Lb/a/d$a;->b:Lb/a/d$a;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v1, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-static {v4}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v1, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-object v5

    .line 270
    :cond_1
    const-string v0, "ip6.arpa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 276
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    const-string v2, ""

    move-object v4, v2

    move-object v2, v5

    goto :goto_1

    .line 281
    :cond_3
    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "_services"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 282
    :cond_4
    const-string v1, "._"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 283
    if-lez v7, :cond_b

    .line 285
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 286
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_b

    .line 287
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 293
    :goto_2
    const-string v7, "._"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 294
    if-lez v7, :cond_5

    .line 295
    add-int/lit8 v3, v7, 0x2

    .line 296
    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 297
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 299
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 301
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x2

    .line 302
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    sub-int v1, v8, v1

    .line 303
    if-le v1, v7, :cond_9

    .line 304
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 306
    :goto_4
    if-lez v2, :cond_7

    .line 307
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 312
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "._sub"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 313
    if-lez v4, :cond_8

    .line 314
    add-int/lit8 v5, v4, 0x5

    .line 315
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto/16 :goto_1

    :cond_6
    move v1, v6

    .line 302
    goto :goto_3

    .line 309
    :cond_7
    const-string v2, ""

    goto :goto_5

    :cond_8
    move-object v4, v2

    move-object v2, v5

    goto/16 :goto_1

    :cond_9
    move-object v1, v4

    goto :goto_4

    :cond_a
    move-object v1, v4

    goto :goto_5

    :cond_b
    move-object v1, v2

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p0}, Lb/a/a/q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 251
    sget-object v1, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v1, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {v0}, Lb/a/a/q;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 334
    sget-object v0, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 336
    :cond_0
    const-string v0, "local"

    .line 338
    :cond_1
    invoke-static {v0}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    sget-object v2, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lb/a/d$a;->b:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lb/a/d$a;->b:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 343
    :cond_2
    const-string v0, "tcp"

    .line 345
    :cond_3
    invoke-static {v0}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    sget-object v2, Lb/a/d$a;->b:Lb/a/d$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 350
    :cond_4
    const-string v0, ""

    .line 352
    :cond_5
    invoke-static {v0}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    sget-object v2, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 357
    :cond_6
    const-string v0, ""

    .line 360
    :cond_7
    invoke-static {v0}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    sget-object v2, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 365
    :cond_8
    const-string v0, ""

    .line 367
    :cond_9
    invoke-static {v0}, Lb/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    sget-object v2, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-object v1

    .line 334
    :cond_a
    const-string v0, "local"

    goto/16 :goto_0

    .line 341
    :cond_b
    const-string v0, "tcp"

    goto/16 :goto_1

    .line 348
    :cond_c
    const-string v0, ""

    goto :goto_2

    .line 355
    :cond_d
    const-string v0, ""

    goto :goto_3

    .line 363
    :cond_e
    const-string v0, ""

    goto :goto_4
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 774
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 775
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 776
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 773
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    :cond_0
    const/16 v3, 0x7ff

    if-le v2, v3, :cond_1

    .line 779
    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 780
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 781
    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 783
    :cond_1
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 784
    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 788
    :cond_2
    return-void
.end method

.method private static b(Ljava/util/Map;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1269
    .line 1270
    if-eqz p0, :cond_8

    .line 1272
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v5, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1273
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1274
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1275
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v7, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1276
    invoke-static {v7, v1}, Lb/a/a/q;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1277
    if-nez v3, :cond_0

    .line 1293
    :goto_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1294
    array-length v7, v2

    const/16 v8, 0xff

    if-le v7, v8, :cond_5

    .line 1295
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot have individual values larger that 255 chars. Offending value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_4

    const-string v1, ""

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :catch_0
    move-exception v1

    .line 1302
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1279
    :cond_0
    :try_start_1
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1280
    const/16 v2, 0x3d

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1281
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v7, v2}, Lb/a/a/q;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 1282
    :cond_1
    instance-of v2, v3, [B

    if-eqz v2, :cond_3

    .line 1283
    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0

    check-cast v2, [B

    .line 1284
    array-length v8, v2

    if-lez v8, :cond_2

    .line 1285
    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1286
    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v7, v2, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 1288
    goto :goto_1

    .line 1291
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid property value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1295
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1297
    :cond_5
    array-length v1, v2

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1298
    const/4 v1, 0x0

    array-length v3, v2

    invoke-virtual {v5, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 1300
    :cond_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1305
    :goto_3
    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    :goto_4
    return-object v1

    :cond_7
    sget-object v1, Lb/a/a/h;->b:[B

    goto :goto_4

    :cond_8
    move-object v1, v4

    goto :goto_3
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 374
    if-nez p0, :cond_1

    .line 375
    const-string v0, ""

    .line 387
    :cond_0
    :goto_0
    return-object v0

    .line 377
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_2
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0}, Lb/a/a/q$a;->g()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0}, Lb/a/a/q$a;->h()Z

    move-result v0

    return v0
.end method

.method public C()Lb/a/a/q;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1157
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/q;->u()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lb/a/a/q;->i:I

    iget v3, p0, Lb/a/a/q;->j:I

    iget v4, p0, Lb/a/a/q;->k:I

    iget-boolean v5, p0, Lb/a/a/q;->q:Z

    iget-object v6, p0, Lb/a/a/q;->l:[B

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 1158
    invoke-virtual {p0}, Lb/a/a/q;->h()[Ljava/net/Inet6Address;

    move-result-object v2

    .line 1159
    array-length v3, v2

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1160
    iget-object v5, v0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lb/a/a/q;->g()[Ljava/net/Inet4Address;

    move-result-object v2

    .line 1163
    array-length v3, v2

    move v1, v7

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1164
    iget-object v5, v0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1166
    :cond_1
    return-object v0
.end method

.method public D()Lb/a/a/l;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0}, Lb/a/a/q$a;->a()Lb/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 1343
    iget-boolean v0, p0, Lb/a/a/q;->r:Z

    return v0
.end method

.method a([BII)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 794
    .line 795
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 796
    add-int v5, p2, p3

    :goto_0
    if-ge p2, v5, :cond_3

    .line 797
    add-int/lit8 v1, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 798
    shr-int/lit8 v2, v0, 0x4

    packed-switch v2, :pswitch_data_0

    .line 825
    :pswitch_0
    add-int/lit8 v2, v1, 0x1

    if-lt v2, p3, :cond_2

    move-object v0, v3

    .line 834
    :goto_1
    return-object v0

    .line 811
    :pswitch_1
    if-lt v1, p3, :cond_0

    move-object v0, v3

    .line 812
    goto :goto_1

    .line 815
    :cond_0
    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    move v1, v2

    .line 832
    :goto_2
    :pswitch_2
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v1

    .line 833
    goto :goto_0

    .line 818
    :pswitch_3
    add-int/lit8 v2, v1, 0x2

    if-lt v2, p3, :cond_1

    move-object v0, v3

    .line 819
    goto :goto_1

    .line 822
    :cond_1
    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    .line 823
    goto :goto_2

    .line 829
    :cond_2
    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    .line 834
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lb/a/a/a/d;ZILb/a/a/k;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/d;",
            "ZI",
            "Lb/a/a/k;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1225
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    sget-object v0, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    if-eq p1, v0, :cond_0

    sget-object v0, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    if-ne p1, v0, :cond_2

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lb/a/a/q;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1229
    new-instance v0, Lb/a/a/h$e;

    invoke-virtual {p0}, Lb/a/a/q;->s()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v5

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$e;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    :cond_1
    new-instance v0, Lb/a/a/h$e;

    invoke-virtual {p0}, Lb/a/a/q;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v5

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$e;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    new-instance v0, Lb/a/a/h$f;

    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    iget v5, p0, Lb/a/a/q;->k:I

    iget v6, p0, Lb/a/a/q;->j:I

    iget v7, p0, Lb/a/a/q;->i:I

    invoke-virtual {p4}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v8

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lb/a/a/h$f;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZIIIILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    new-instance v0, Lb/a/a/h$g;

    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v5

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$g;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZI[B)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_2
    return-object v9
.end method

.method public a(Lb/a/a/a;JLb/a/a/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 888
    instance-of v0, p4, Lb/a/a/h;

    if-eqz v0, :cond_2

    invoke-virtual {p4, p2, p3}, Lb/a/a/b;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 890
    sget-object v0, Lb/a/a/q$1;->a:[I

    invoke-virtual {p4}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lb/a/a/a/e;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 943
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lb/a/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    invoke-virtual {p0}, Lb/a/a/q;->D()Lb/a/a/l;

    move-result-object v0

    .line 945
    if-eqz v0, :cond_1

    .line 949
    new-instance v1, Lb/a/a/p;

    invoke-virtual {p0}, Lb/a/a/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p0}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    .line 950
    invoke-virtual {v0, v1}, Lb/a/a/l;->a(Lb/a/c;)V

    .line 954
    :cond_1
    monitor-enter p0

    .line 955
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 956
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :cond_2
    return-void

    .line 892
    :pswitch_0
    invoke-virtual {p4}, Lb/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v1, p0, Lb/a/a/q;->n:Ljava/util/Set;

    check-cast p4, Lb/a/a/h$a;

    invoke-virtual {p4}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 894
    goto :goto_0

    .line 898
    :pswitch_1
    invoke-virtual {p4}, Lb/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v1, p0, Lb/a/a/q;->o:Ljava/util/Set;

    check-cast p4, Lb/a/a/h$a;

    invoke-virtual {p4}, Lb/a/a/h$a;->t()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 900
    goto :goto_0

    .line 904
    :pswitch_2
    invoke-virtual {p4}, Lb/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    check-cast p4, Lb/a/a/h$f;

    .line 906
    iget-object v0, p0, Lb/a/a/q;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/a/a/q;->h:Ljava/lang/String;

    invoke-virtual {p4}, Lb/a/a/h$f;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v2

    .line 907
    :goto_1
    invoke-virtual {p4}, Lb/a/a/h$f;->t()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lb/a/a/q;->h:Ljava/lang/String;

    .line 908
    invoke-virtual {p4}, Lb/a/a/h$f;->w()I

    move-result v3

    iput v3, p0, Lb/a/a/q;->i:I

    .line 909
    invoke-virtual {p4}, Lb/a/a/h$f;->v()I

    move-result v3

    iput v3, p0, Lb/a/a/q;->j:I

    .line 910
    invoke-virtual {p4}, Lb/a/a/h$f;->u()I

    move-result v3

    iput v3, p0, Lb/a/a/q;->k:I

    .line 911
    if-eqz v0, :cond_6

    .line 912
    iget-object v0, p0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 913
    iget-object v0, p0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 914
    iget-object v0, p0, Lb/a/a/q;->h:Ljava/lang/String;

    sget-object v2, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    sget-object v3, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p1, v0, v2, v3}, Lb/a/a/a;->b(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 915
    invoke-virtual {p0, p1, p2, p3, v0}, Lb/a/a/q;->a(Lb/a/a/a;JLb/a/a/b;)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 906
    goto :goto_1

    .line 917
    :cond_5
    iget-object v0, p0, Lb/a/a/q;->h:Ljava/lang/String;

    sget-object v2, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    sget-object v3, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p1, v0, v2, v3}, Lb/a/a/a;->b(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 918
    invoke-virtual {p0, p1, p2, p3, v0}, Lb/a/a/q;->a(Lb/a/a/a;JLb/a/a/b;)V

    goto :goto_3

    :cond_6
    move v1, v2

    .line 922
    goto/16 :goto_0

    .line 927
    :pswitch_3
    invoke-virtual {p4}, Lb/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    check-cast p4, Lb/a/a/h$g;

    .line 929
    invoke-virtual {p4}, Lb/a/a/h$g;->t()[B

    move-result-object v0

    iput-object v0, p0, Lb/a/a/q;->l:[B

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/q;->m:Ljava/util/Map;

    move v1, v2

    .line 932
    goto/16 :goto_0

    .line 935
    :pswitch_4
    invoke-virtual {p0}, Lb/a/a/q;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lb/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p4}, Lb/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/q;->g:Ljava/lang/String;

    move v1, v2

    .line 937
    goto/16 :goto_0

    .line 956
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lb/a/a/b/a;Lb/a/a/a/g;)V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/q$a;->a(Lb/a/a/b/a;Lb/a/a/a/g;)V

    .line 1031
    return-void
.end method

.method public a(Lb/a/a/l;)V
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0, p1}, Lb/a/a/q$a;->a(Lb/a/a/l;)V

    .line 1310
    return-void
.end method

.method a(Ljava/net/Inet4Address;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method a(Ljava/net/Inet6Address;)V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1333
    iput-boolean p1, p0, Lb/a/a/q;->r:Z

    .line 1334
    iget-boolean v0, p0, Lb/a/a/q;->r:Z

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/a/q$a;->c(Lb/a/a/b/a;)V

    .line 1337
    :cond_0
    return-void
.end method

.method a([B)V
    .locals 1

    .prologue
    .line 1264
    iput-object p1, p0, Lb/a/a/q;->l:[B

    .line 1265
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/q;->m:Ljava/util/Map;

    .line 1266
    return-void
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 967
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/q;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/q$a;->a(J)Z

    move-result v0

    return v0
.end method

.method public a(Lb/a/a/b/a;)Z
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0, p1}, Lb/a/a/q$a;->a(Lb/a/a/b/a;)Z

    move-result v0

    return v0
.end method

.method public a(Lb/a/d;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1363
    if-nez p1, :cond_1

    move v0, v1

    .line 1372
    :cond_0
    :goto_0
    return v0

    .line 1364
    :cond_1
    instance-of v2, p1, Lb/a/a/q;

    if-eqz v2, :cond_3

    .line 1365
    check-cast p1, Lb/a/a/q;

    .line 1366
    iget-object v2, p0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p1, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p1, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lb/a/a/q;->n:Ljava/util/Set;

    iget-object v3, p1, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/q;->o:Ljava/util/Set;

    iget-object v3, p1, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1370
    :cond_3
    invoke-virtual {p0}, Lb/a/a/q;->f()[Ljava/net/InetAddress;

    move-result-object v2

    .line 1371
    invoke-virtual {p1}, Lb/a/d;->f()[Ljava/net/InetAddress;

    move-result-object v3

    .line 1372
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_4

    new-instance v4, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 395
    invoke-virtual {p0}, Lb/a/a/q;->n()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {p0}, Lb/a/a/q;->o()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {p0}, Lb/a/a/q;->p()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public b(Lb/a/a/b/a;)V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0, p1}, Lb/a/a/q$a;->b(Lb/a/a/b/a;)V

    .line 1023
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 436
    iput-object p1, p0, Lb/a/a/q;->f:Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/q;->p:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public b(J)Z
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/q$a;->b(J)Z

    move-result v0

    return v0
.end method

.method public b(Lb/a/a/b/a;Lb/a/a/a/g;)Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/q$a;->b(Lb/a/a/b/a;Lb/a/a/a/g;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lb/a/a/q;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lb/a/a/q;->h:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lb/a/a/q;->C()Lb/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 445
    invoke-virtual {p0}, Lb/a/a/q;->n()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {p0}, Lb/a/a/q;->o()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-virtual {p0}, Lb/a/a/q;->p()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual {p0}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lb/a/a/q;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1126
    instance-of v0, p1, Lb/a/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lb/a/a/q;

    invoke-virtual {p1}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()[Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 559
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 560
    iget-object v1, p0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 561
    iget-object v1, p0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public g()[Ljava/net/Inet4Address;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lb/a/a/q;->n:Ljava/util/Set;

    iget-object v1, p0, Lb/a/a/q;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet4Address;

    return-object v0
.end method

.method public h()[Ljava/net/Inet6Address;
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lb/a/a/q;->o:Ljava/util/Set;

    iget-object v1, p0, Lb/a/a/q;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet6Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet6Address;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1118
    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lb/a/a/q;->i:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lb/a/a/q;->k:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lb/a/a/q;->j:I

    return v0
.end method

.method public l()[B
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lb/a/a/q;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->l:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->l:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/a/a/h;->b:[B

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 1325
    iget-boolean v0, p0, Lb/a/a/q;->q:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lb/a/a/q;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "local"

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lb/a/a/q;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tcp"

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lb/a/a/q;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lb/a/a/q;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public synthetic r()Lb/a/d;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lb/a/a/q;->C()Lb/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p0}, Lb/a/a/q;->q()Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "._sub."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lb/a/a/q;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/q;->p:Ljava/lang/String;

    .line 426
    :cond_0
    iget-object v0, p0, Lb/a/a/q;->p:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const-string v0, "name: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/q;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v0, "\' address: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {p0}, Lb/a/a/q;->f()[Ljava/net/InetAddress;

    move-result-object v2

    .line 1180
    array-length v0, v2

    if-lez v0, :cond_1

    .line 1181
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 1182
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1183
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {p0}, Lb/a/a/q;->i()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1185
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1177
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1188
    :cond_1
    const-string v0, "(null):"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {p0}, Lb/a/a/q;->i()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1191
    :cond_2
    const-string v0, "\' status: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0}, Lb/a/a/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {p0}, Lb/a/a/q;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\' is persistent,"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    const-string v0, " has "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {p0}, Lb/a/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    const-string v0, "data"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    .line 1200
    invoke-virtual {p0}, Lb/a/a/q;->v()Ljava/util/Map;

    move-result-object v2

    .line 1201
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1202
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1193
    :cond_3
    const-string v0, "\',"

    goto :goto_2

    .line 1195
    :cond_4
    const-string v0, "NO "

    goto :goto_3

    .line 1207
    :cond_5
    const-string v0, " empty"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    :cond_6
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 761
    sget-object v1, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-virtual {p0}, Lb/a/a/q;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v1, Lb/a/d$a;->b:Lb/a/d$a;

    invoke-virtual {p0}, Lb/a/a/q;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v1, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-virtual {p0}, Lb/a/a/q;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v1, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-virtual {p0}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v1, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-virtual {p0}, Lb/a/a/q;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    return-object v0
.end method

.method declared-synchronized v()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 838
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/q;->m:Ljava/util/Map;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 839
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 842
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 844
    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v3, v0, 0xff

    .line 845
    if-eqz v3, :cond_0

    add-int v0, v4, v3

    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v5

    array-length v5, v5

    if-le v0, v5, :cond_3

    .line 846
    :cond_0
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    :cond_1
    :goto_1
    :try_start_2
    iput-object v2, p0, Lb/a/a/q;->m:Ljava/util/Map;

    .line 876
    :cond_2
    iget-object v0, p0, Lb/a/a/q;->m:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/a/a/q;->m:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_3
    move v0, v1

    .line 851
    :goto_3
    if-ge v0, v3, :cond_4

    :try_start_3
    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v5

    add-int v6, v4, v0

    aget-byte v5, v5, v6

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 856
    :cond_4
    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v5

    invoke-virtual {p0, v5, v4, v0}, Lb/a/a/q;->a([BII)Ljava/lang/String;

    move-result-object v5

    .line 857
    if-nez v5, :cond_5

    .line 858
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 870
    :catch_0
    move-exception v0

    .line 872
    :try_start_4
    sget-object v1, Lb/a/a/q;->b:Ld/a/b;

    const-string v3, "Malformed TXT Field "

    invoke-interface {v1, v3, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 861
    :cond_5
    if-ne v0, v3, :cond_6

    .line 862
    :try_start_5
    sget-object v0, Lb/a/a/q;->a:[B

    invoke-virtual {v2, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    :goto_4
    add-int v0, v4, v3

    .line 869
    goto :goto_0

    .line 864
    :cond_6
    add-int/lit8 v0, v0, 0x1

    sub-int v6, v3, v0

    new-array v6, v6, [B

    .line 865
    invoke-virtual {p0}, Lb/a/a/q;->l()[B

    move-result-object v7

    add-int v8, v4, v0

    const/4 v9, 0x0

    sub-int v0, v3, v0

    invoke-static {v7, v8, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 876
    :cond_7
    :try_start_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    goto :goto_2
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0}, Lb/a/a/q$a;->b()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0}, Lb/a/a/q$a;->c()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0}, Lb/a/a/q$a;->e()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/q$a;

    invoke-virtual {v0}, Lb/a/a/q$a;->f()Z

    move-result v0

    return v0
.end method
