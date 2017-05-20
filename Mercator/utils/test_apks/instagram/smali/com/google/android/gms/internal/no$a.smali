.class Lcom/google/android/gms/internal/no$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c$b;
.implements Lcom/google/android/gms/common/api/c$c;
.implements Lcom/google/android/gms/internal/nb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/c$b;",
        "Lcom/google/android/gms/common/api/c$c;",
        "Lcom/google/android/gms/internal/nb;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/no;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/ms;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/a$f;

.field private final d:Lcom/google/android/gms/common/api/a$c;

.field private final e:Lcom/google/android/gms/internal/mu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mu",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ne;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/mw;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/nw$a",
            "<*>;",
            "Lcom/google/android/gms/internal/oa;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private j:Z

.field private k:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/no;Lcom/google/android/gms/common/api/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l",
            "<TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->b:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/l;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/l;->c()Lcom/google/android/gms/internal/na;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/na;->a(Lcom/google/android/gms/internal/nb;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    check-cast v0, Lcom/google/android/gms/common/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/h;->f()Lcom/google/android/gms/common/api/a$h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->d:Lcom/google/android/gms/common/api/a$c;

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/l;->d()Lcom/google/android/gms/internal/mu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    new-instance v0, Lcom/google/android/gms/internal/ne;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ne;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->f:Lcom/google/android/gms/internal/ne;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/l;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/no$a;->i:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0, p0, p0}, Lcom/google/android/gms/common/api/l;->a(Landroid/os/Looper;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->d:Lcom/google/android/gms/common/api/a$c;

    goto :goto_1
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mw;

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mu;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ms;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ms;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/no$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->o()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/no$a;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/no$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/ms;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->f:Lcom/google/android/gms/internal/ne;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$a;->h()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ms;->a(Lcom/google/android/gms/internal/ne;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ms;->a(Lcom/google/android/gms/internal/no$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/no$a;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->g()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/no$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->j()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/no$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->l()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/no$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->n()V

    return-void
.end method

.method private j()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/no$a;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->o()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/no$a;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/no$a;->j:Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/no$a;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->k()V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->g(Lcom/google/android/gms/internal/no;)Lcom/google/android/gms/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v1}, Lcom/google/android/gms/internal/no;->f(Lcom/google/android/gms/internal/no;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/no$a;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->g()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v2}, Lcom/google/android/gms/internal/no;->h(Lcom/google/android/gms/internal/no;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->f:Lcom/google/android/gms/internal/ne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ne;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->m()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->g()V

    goto :goto_0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->i(Lcom/google/android/gms/internal/no;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v1}, Lcom/google/android/gms/internal/no;->g(Lcom/google/android/gms/internal/no;)Lcom/google/android/gms/common/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v2}, Lcom/google/android/gms/internal/no;->f(Lcom/google/android/gms/internal/no;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->i(Lcom/google/android/gms/internal/no;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v1}, Lcom/google/android/gms/internal/no;->i(Lcom/google/android/gms/internal/no;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/no$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/no$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    iget-object v3, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/no$b;-><init>(Lcom/google/android/gms/internal/no;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/internal/mu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/l$f;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ms;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/no$a;->b(Lcom/google/android/gms/internal/ms;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/no$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ms;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/no$a;->b(Lcom/google/android/gms/internal/ms;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->m()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/no$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->o()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/mw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/no;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/no$a;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->f:Lcom/google/android/gms/internal/ne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ne;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nw$a;

    new-instance v2, Lcom/google/android/gms/internal/ms$c;

    new-instance v3, Lcom/google/android/gms/tasks/d;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/d;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ms$c;-><init>(Lcom/google/android/gms/internal/nw$a;Lcom/google/android/gms/tasks/d;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/no$a;->a(Lcom/google/android/gms/internal/ms;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->g()V

    return-void
.end method

.method public c()Lcom/google/android/gms/common/api/a$f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/nw$a",
            "<*>;",
            "Lcom/google/android/gms/internal/oa;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->h:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/no$a;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method f()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->h()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->j()Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/no$a;->i:I

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$a;->e()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/no$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->k()V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oa;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/oa;->a:Lcom/google/android/gms/internal/nz;

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->d:Lcom/google/android/gms/common/api/a$c;

    new-instance v3, Lcom/google/android/gms/tasks/d;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/d;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/tasks/d;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/no$a;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$a;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/no$a;->m()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$a;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/no$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/no;->e()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/no$a;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/no$a;->k:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/no;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->d(Lcom/google/android/gms/internal/no;)Lcom/google/android/gms/internal/nf;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->e(Lcom/google/android/gms/internal/no;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->d(Lcom/google/android/gms/internal/no;)Lcom/google/android/gms/internal/nf;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/no$a;->i:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/nf;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    iget v1, p0, Lcom/google/android/gms/internal/no$a;->i:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/no$a;->j:Z

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/no$a;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v2}, Lcom/google/android/gms/internal/no;->b(Lcom/google/android/gms/internal/no;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/no$a;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$a;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/no$a;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->f:Lcom/google/android/gms/internal/ne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ne;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v2}, Lcom/google/android/gms/internal/no;->b(Lcom/google/android/gms/internal/no;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/no$a;->e:Lcom/google/android/gms/internal/mu;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    invoke-static {v2}, Lcom/google/android/gms/internal/no;->c(Lcom/google/android/gms/internal/no;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/no$a;->a:Lcom/google/android/gms/internal/no;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/no;I)I

    return-void
.end method
