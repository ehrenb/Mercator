.class public Lcom/google/android/gms/internal/fm$d;
.super Lcom/google/android/gms/internal/le;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/le",
        "<",
        "Lcom/google/android/gms/internal/fj;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/google/android/gms/internal/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kn",
            "<",
            "Lcom/google/android/gms/internal/fj;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/kn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kn",
            "<",
            "Lcom/google/android/gms/internal/fj;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/le;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fm$d;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$d;->e:Lcom/google/android/gms/internal/kn;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/fm$d;->f:Z

    iput v1, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fm$d;)Lcom/google/android/gms/internal/kn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$d;->e:Lcom/google/android/gms/internal/kn;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    const-string v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fm$d;->f:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fm$d;->d()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected d()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fm$d;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    if-nez v0, :cond_1

    const-string v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/fm$d$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fm$d$3;-><init>(Lcom/google/android/gms/internal/fm$d;)V

    new-instance v2, Lcom/google/android/gms/internal/ld$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ld$b;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/fm$d;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m_()Lcom/google/android/gms/internal/fm$c;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/fm$c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fm$c;-><init>(Lcom/google/android/gms/internal/fm$d;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fm$d;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/fm$d$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fm$d$1;-><init>(Lcom/google/android/gms/internal/fm$d;Lcom/google/android/gms/internal/fm$c;)V

    new-instance v3, Lcom/google/android/gms/internal/fm$d$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/fm$d$2;-><init>(Lcom/google/android/gms/internal/fm$d;Lcom/google/android/gms/internal/fm$c;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/fm$d;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    iget v0, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected n_()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    if-lt v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    const-string v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/fm$d;->g:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fm$d;->d()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
