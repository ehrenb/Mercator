.class public Lcom/google/android/gms/internal/fm$c;
.super Lcom/google/android/gms/internal/le;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/le",
        "<",
        "Lcom/google/android/gms/internal/fn;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/fm$d;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fm$d;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/le;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fm$c;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$c;->e:Lcom/google/android/gms/internal/fm$d;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fm$c;)Lcom/google/android/gms/internal/fm$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$c;->e:Lcom/google/android/gms/internal/fm$d;

    return-object v0
.end method


# virtual methods
.method public l_()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$c;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fm$c;->f:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fm$c;->f:Z

    new-instance v0, Lcom/google/android/gms/internal/fm$c$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fm$c$1;-><init>(Lcom/google/android/gms/internal/fm$c;)V

    new-instance v2, Lcom/google/android/gms/internal/ld$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ld$b;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/fm$c;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    new-instance v0, Lcom/google/android/gms/internal/fm$c$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fm$c$2;-><init>(Lcom/google/android/gms/internal/fm$c;)V

    new-instance v2, Lcom/google/android/gms/internal/fm$c$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/fm$c$3;-><init>(Lcom/google/android/gms/internal/fm$c;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/fm$c;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
