.class final Lrx/c/a/ax$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/ax$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final b:I


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TR;>;"
        }
    .end annotation
.end field

.field c:I

.field private final d:Lrx/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/i",
            "<+TR;>;"
        }
    .end annotation
.end field

.field private final e:Lrx/j/b;

.field private volatile f:[Ljava/lang/Object;

.field private g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 176
    sget v0, Lrx/c/e/h;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/c/a/ax$a;->b:I

    return-void
.end method

.method public constructor <init>(Lrx/j;Lrx/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;",
            "Lrx/b/i",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 174
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/c/a/ax$a;->e:Lrx/j/b;

    .line 184
    iput-object p1, p0, Lrx/c/a/ax$a;->a:Lrx/e;

    .line 185
    iput-object p2, p0, Lrx/c/a/ax$a;->d:Lrx/b/i;

    .line 186
    iget-object v0, p0, Lrx/c/a/ax$a;->e:Lrx/j/b;

    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 187
    return-void
.end method


# virtual methods
.method a()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 215
    iget-object v4, p0, Lrx/c/a/ax$a;->f:[Ljava/lang/Object;

    .line 216
    if-nez v4, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Lrx/c/a/ax$a;->getAndIncrement()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-nez v0, :cond_0

    .line 221
    array-length v5, v4

    .line 222
    iget-object v6, p0, Lrx/c/a/ax$a;->a:Lrx/e;

    .line 223
    iget-object v7, p0, Lrx/c/a/ax$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    :cond_2
    :goto_1
    new-array v8, v5, [Ljava/lang/Object;

    .line 228
    const/4 v2, 0x1

    move v3, v1

    .line 229
    :goto_2
    if-ge v3, v5, :cond_5

    .line 230
    aget-object v0, v4, v3

    check-cast v0, Lrx/c/a/ax$a$a;

    iget-object v0, v0, Lrx/c/a/ax$a$a;->a:Lrx/c/e/h;

    .line 231
    invoke-virtual {v0}, Lrx/c/e/h;->g()Ljava/lang/Object;

    move-result-object v9

    .line 233
    if-nez v9, :cond_3

    move v0, v1

    .line 229
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 238
    :cond_3
    invoke-virtual {v0, v9}, Lrx/c/e/h;->b(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 239
    invoke-interface {v6}, Lrx/e;->onCompleted()V

    .line 242
    iget-object v0, p0, Lrx/c/a/ax$a;->e:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-virtual {v0, v9}, Lrx/c/e/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v3

    move v0, v2

    goto :goto_3

    .line 249
    :cond_5
    if-eqz v2, :cond_9

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-lez v0, :cond_9

    .line 252
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ax$a;->d:Lrx/b/i;

    invoke-interface {v0, v8}, Lrx/b/i;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Lrx/e;->onNext(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 255
    iget v0, p0, Lrx/c/a/ax$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/c/a/ax$a;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    array-length v3, v4

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_7

    aget-object v0, v4, v2

    .line 262
    check-cast v0, Lrx/c/a/ax$a$a;

    iget-object v0, v0, Lrx/c/a/ax$a$a;->a:Lrx/c/e/h;

    .line 263
    invoke-virtual {v0}, Lrx/c/e/h;->f()Ljava/lang/Object;

    .line 265
    invoke-virtual {v0}, Lrx/c/e/h;->g()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Lrx/c/e/h;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    invoke-interface {v6}, Lrx/e;->onCompleted()V

    .line 269
    iget-object v0, p0, Lrx/c/a/ax$a;->e:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-static {v0, v6, v8}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 273
    :cond_7
    iget v0, p0, Lrx/c/a/ax$a;->c:I

    sget v2, Lrx/c/a/ax$a;->b:I

    if-le v0, v2, :cond_2

    .line 274
    array-length v3, v4

    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_8

    aget-object v0, v4, v2

    .line 275
    check-cast v0, Lrx/c/a/ax$a$a;

    iget v8, p0, Lrx/c/a/ax$a;->c:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lrx/c/a/ax$a$a;->a(J)V

    .line 274
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 277
    :cond_8
    iput v1, p0, Lrx/c/a/ax$a;->c:I

    goto/16 :goto_1

    .line 283
    :cond_9
    invoke-virtual {p0}, Lrx/c/a/ax$a;->decrementAndGet()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-gtz v0, :cond_2

    goto/16 :goto_0
.end method

.method public a([Lrx/d;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 191
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/Object;

    move v0, v1

    .line 192
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 193
    new-instance v3, Lrx/c/a/ax$a$a;

    invoke-direct {v3, p0}, Lrx/c/a/ax$a$a;-><init>(Lrx/c/a/ax$a;)V

    .line 194
    aput-object v3, v2, v0

    .line 195
    iget-object v4, p0, Lrx/c/a/ax$a;->e:Lrx/j/b;

    invoke-virtual {v4, v3}, Lrx/j/b;->a(Lrx/k;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iput-object p2, p0, Lrx/c/a/ax$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    iput-object v2, p0, Lrx/c/a/ax$a;->f:[Ljava/lang/Object;

    .line 201
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 202
    aget-object v3, p1, v1

    aget-object v0, v2, v1

    check-cast v0, Lrx/c/a/ax$a$a;

    invoke-virtual {v3, v0}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_1
    return-void
.end method
