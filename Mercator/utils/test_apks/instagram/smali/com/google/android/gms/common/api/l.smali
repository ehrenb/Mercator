.class public abstract Lcom/google/android/gms/common/api/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/mu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mu",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Looper;

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/no;

.field private final h:Lcom/google/android/gms/common/api/c;

.field private final i:Lcom/google/android/gms/internal/of;

.field private final j:Lcom/google/android/gms/common/api/a$f;

.field private final k:Lcom/google/android/gms/internal/na;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/internal/na;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/internal/na;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/l;->b:Lcom/google/android/gms/common/api/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->c:Lcom/google/android/gms/common/api/a$a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/l;->e:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/internal/mu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->d:Lcom/google/android/gms/internal/mu;

    new-instance v0, Lcom/google/android/gms/internal/np;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/np;-><init>(Lcom/google/android/gms/common/api/l;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/api/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/no;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/no;

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/no;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/l;->f:I

    new-instance v0, Lcom/google/android/gms/internal/mt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->i:Lcom/google/android/gms/internal/of;

    iput-object p4, p0, Lcom/google/android/gms/common/api/l;->j:Lcom/google/android/gms/common/api/a$f;

    iput-object p5, p0, Lcom/google/android/gms/common/api/l;->k:Lcom/google/android/gms/internal/na;

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Landroid/os/Looper;Lcom/google/android/gms/internal/of;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/of;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/l;->b:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/l;->c:Lcom/google/android/gms/common/api/a$a;

    iput-object p4, p0, Lcom/google/android/gms/common/api/l;->e:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->b:Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->c:Lcom/google/android/gms/common/api/a$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/internal/mu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->d:Lcom/google/android/gms/internal/mu;

    new-instance v0, Lcom/google/android/gms/internal/np;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/np;-><init>(Lcom/google/android/gms/common/api/l;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/api/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/no;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/no;

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/no;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/l;->f:I

    iput-object p5, p0, Lcom/google/android/gms/common/api/l;->i:Lcom/google/android/gms/internal/of;

    iput-object v2, p0, Lcom/google/android/gms/common/api/l;->j:Lcom/google/android/gms/common/api/a$f;

    iput-object v2, p0, Lcom/google/android/gms/common/api/l;->k:Lcom/google/android/gms/internal/na;

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/internal/of;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Lcom/google/android/gms/internal/of;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Landroid/os/Looper;Lcom/google/android/gms/internal/of;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    goto :goto_0
.end method

.method private a(ILcom/google/android/gms/internal/mx$a;)Lcom/google/android/gms/internal/mx$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/mx$a",
            "<+",
            "Lcom/google/android/gms/common/api/g;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mx$a;->i()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/common/api/l;ILcom/google/android/gms/internal/mx$a;)V

    return-object p2
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)Lcom/google/android/gms/common/api/a$f;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->j:Lcom/google/android/gms/common/api/a$f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Client is already built, use getClient(). getClientCallbacks() should also be provided with a helper."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$i;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/common/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a$i;->b()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/l;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/m;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/m;

    move-result-object v6

    iget-object v4, p0, Lcom/google/android/gms/common/api/l;->c:Lcom/google/android/gms/common/api/a$a;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/a$i;->b(Ljava/lang/Object;)Lcom/google/android/gms/common/api/a$h;

    move-result-object v7

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;Lcom/google/android/gms/common/internal/m;Lcom/google/android/gms/common/api/a$h;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/l;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/m;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/m;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/l;->c:Lcom/google/android/gms/common/api/a$a;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/m;Ljava/lang/Object;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/internal/mx$a;)Lcom/google/android/gms/internal/mx$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/mx$a",
            "<+",
            "Lcom/google/android/gms/common/api/g;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/l;->a(ILcom/google/android/gms/internal/mx$a;)Lcom/google/android/gms/internal/mx$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->j:Lcom/google/android/gms/common/api/a$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->k:Lcom/google/android/gms/internal/na;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/google/android/gms/common/api/a$f;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->j:Lcom/google/android/gms/common/api/a$f;

    const-string v1, "Client is null, buildApiClient() should be used."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/mx$a;)Lcom/google/android/gms/internal/mx$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/mx$a",
            "<+",
            "Lcom/google/android/gms/common/api/g;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/l;->a(ILcom/google/android/gms/internal/mx$a;)Lcom/google/android/gms/internal/mx$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/internal/na;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->k:Lcom/google/android/gms/internal/na;

    const-string v1, "ClientCallbacks is null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/na;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/mu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mu",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->d:Lcom/google/android/gms/internal/mu;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/l;->f:I

    return v0
.end method

.method public f()Lcom/google/android/gms/common/api/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/api/c;

    return-object v0
.end method

.method public g()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Landroid/os/Looper;

    return-object v0
.end method
