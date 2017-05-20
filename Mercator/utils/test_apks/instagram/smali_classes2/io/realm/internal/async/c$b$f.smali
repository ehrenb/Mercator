.class Lio/realm/internal/async/c$b$f;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"

# interfaces
.implements Lio/realm/internal/async/c$b$a;
.implements Lio/realm/internal/async/c$b$b;
.implements Lio/realm/internal/async/c$b$d;
.implements Lio/realm/internal/async/c$b$e;
.implements Lio/realm/internal/async/c$b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/async/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Lio/realm/x;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/internal/async/c$b$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lio/realm/internal/async/c$b$c;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/internal/async/c$1;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lio/realm/internal/async/c$b$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;I)Lio/realm/internal/async/c$b$a;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/realm/internal/async/c$b$f;->d:Ljava/lang/ref/WeakReference;

    .line 322
    iput p2, p0, Lio/realm/internal/async/c$b$f;->e:I

    .line 323
    return-object p0
.end method

.method public a(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;)Lio/realm/internal/async/c$b$e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/ag",
            "<*>;>;J",
            "Lio/realm/internal/async/a;",
            ")",
            "Lio/realm/internal/async/c$b$e;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lio/realm/internal/async/c$b$f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/realm/internal/async/c$b$f;->b:Ljava/util/List;

    .line 306
    :cond_0
    iget-object v6, p0, Lio/realm/internal/async/c$b$f;->b:Ljava/util/List;

    new-instance v0, Lio/realm/internal/async/c$b$c;

    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/async/c$b$c;-><init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;Lio/realm/internal/async/c$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-object p0
.end method

.method public a(Lio/realm/x;)Lio/realm/internal/async/c$b$g;
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lio/realm/internal/async/c$b$f;->a:Lio/realm/x;

    .line 296
    return-object p0
.end method

.method public a()Lio/realm/internal/async/c;
    .locals 8

    .prologue
    .line 328
    new-instance v0, Lio/realm/internal/async/c;

    iget-object v1, p0, Lio/realm/internal/async/c$b$f;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/realm/internal/async/c$b$f;->a:Lio/realm/x;

    iget-object v3, p0, Lio/realm/internal/async/c$b$f;->b:Ljava/util/List;

    iget-object v4, p0, Lio/realm/internal/async/c$b$f;->c:Lio/realm/internal/async/c$b$c;

    iget-object v5, p0, Lio/realm/internal/async/c$b$f;->d:Ljava/lang/ref/WeakReference;

    iget v6, p0, Lio/realm/internal/async/c$b$f;->e:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lio/realm/internal/async/c;-><init>(ILio/realm/x;Ljava/util/List;Lio/realm/internal/async/c$b$c;Ljava/lang/ref/WeakReference;ILio/realm/internal/async/c$1;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;)Lio/realm/internal/async/c$b$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Lio/realm/ac;",
            ">;J",
            "Lio/realm/internal/async/a;",
            ")",
            "Lio/realm/internal/async/c$b$b;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Lio/realm/internal/async/c$b$c;

    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/async/c$b$c;-><init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;Lio/realm/internal/async/c$1;)V

    iput-object v0, p0, Lio/realm/internal/async/c$b$f;->c:Lio/realm/internal/async/c$b$c;

    .line 316
    return-object p0
.end method
