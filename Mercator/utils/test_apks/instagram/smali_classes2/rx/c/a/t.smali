.class public final Lrx/c/a/t;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final d:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/d",
            "<+",
            "Lrx/c",
            "<*>;>;",
            "Lrx/d",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:Z

.field private final e:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<-",
            "Lrx/d",
            "<+",
            "Lrx/c",
            "<*>;>;+",
            "Lrx/d",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lrx/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lrx/c/a/t$1;

    invoke-direct {v0}, Lrx/c/a/t$1;-><init>()V

    sput-object v0, Lrx/c/a/t;->d:Lrx/b/e;

    return-void
.end method

.method private constructor <init>(Lrx/d;Lrx/b/e;ZZLrx/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<TT;>;",
            "Lrx/b/e",
            "<-",
            "Lrx/d",
            "<+",
            "Lrx/c",
            "<*>;>;+",
            "Lrx/d",
            "<*>;>;ZZ",
            "Lrx/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lrx/c/a/t;->a:Lrx/d;

    .line 180
    iput-object p2, p0, Lrx/c/a/t;->e:Lrx/b/e;

    .line 181
    iput-boolean p3, p0, Lrx/c/a/t;->b:Z

    .line 182
    iput-boolean p4, p0, Lrx/c/a/t;->c:Z

    .line 183
    iput-object p5, p0, Lrx/c/a/t;->f:Lrx/g;

    .line 184
    return-void
.end method

.method public static a(Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lrx/c/a/t;->d:Lrx/b/e;

    invoke-static {p0, v0}, Lrx/c/a/t;->a(Lrx/d;Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/d;Lrx/b/e;)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TT;>;",
            "Lrx/b/e",
            "<-",
            "Lrx/d",
            "<+",
            "Lrx/c",
            "<*>;>;+",
            "Lrx/d",
            "<*>;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lrx/c/a/t;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lrx/g/a;->b()Lrx/g;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/c/a/t;-><init>(Lrx/d;Lrx/b/e;ZZLrx/g;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 193
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 195
    iget-object v0, p0, Lrx/c/a/t;->f:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v11

    .line 196
    invoke-virtual {p1, v11}, Lrx/j;->add(Lrx/k;)V

    .line 198
    new-instance v6, Lrx/j/d;

    invoke-direct {v6}, Lrx/j/d;-><init>()V

    .line 199
    invoke-virtual {p1, v6}, Lrx/j;->add(Lrx/k;)V

    .line 205
    invoke-static {}, Lrx/i/a;->a()Lrx/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/i/a;->q()Lrx/i/b;

    move-result-object v3

    .line 206
    invoke-static {}, Lrx/e/f;->a()Lrx/j;

    move-result-object v0

    .line 209
    invoke-virtual {v3, v0}, Lrx/i/c;->b(Lrx/j;)Lrx/k;

    .line 211
    new-instance v4, Lrx/c/b/a;

    invoke-direct {v4}, Lrx/c/b/a;-><init>()V

    .line 213
    new-instance v0, Lrx/c/a/t$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lrx/c/a/t$2;-><init>(Lrx/c/a/t;Lrx/j;Lrx/i/c;Lrx/c/b/a;Ljava/util/concurrent/atomic/AtomicLong;Lrx/j/d;)V

    .line 280
    iget-object v1, p0, Lrx/c/a/t;->e:Lrx/b/e;

    new-instance v2, Lrx/c/a/t$3;

    invoke-direct {v2, p0}, Lrx/c/a/t$3;-><init>(Lrx/c/a/t;)V

    invoke-virtual {v3, v2}, Lrx/i/c;->a(Lrx/d$b;)Lrx/d;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/d;

    .line 315
    new-instance v6, Lrx/c/a/t$4;

    move-object v7, p0

    move-object v9, p1

    move-object v10, v5

    move-object v12, v0

    invoke-direct/range {v6 .. v13}, Lrx/c/a/t$4;-><init>(Lrx/c/a/t;Lrx/d;Lrx/j;Ljava/util/concurrent/atomic/AtomicLong;Lrx/g$a;Lrx/b/a;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v11, v6}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 353
    new-instance v6, Lrx/c/a/t$5;

    move-object v7, p0

    move-object v8, v5

    move-object v9, v4

    move-object v10, v13

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Lrx/c/a/t$5;-><init>(Lrx/c/a/t;Ljava/util/concurrent/atomic/AtomicLong;Lrx/c/b/a;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/g$a;Lrx/b/a;)V

    invoke-virtual {p1, v6}, Lrx/j;->setProducer(Lrx/f;)V

    .line 367
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/t;->a(Lrx/j;)V

    return-void
.end method
