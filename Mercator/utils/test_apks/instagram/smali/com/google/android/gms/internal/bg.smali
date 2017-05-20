.class public Lcom/google/android/gms/internal/bg;
.super Lcom/google/android/gms/internal/bi;


# instance fields
.field private final i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/am;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/f$a;IILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/bi;-><init>(Lcom/google/android/gms/internal/am;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/f$a;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/bg;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ap;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/bg;->i:Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ap;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/f$a;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/f$a;

    new-instance v3, Lcom/google/android/gms/internal/f$a$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/f$a$b;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/f$a;->Y:Lcom/google/android/gms/internal/f$a$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/f$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/f$a;->Y:Lcom/google/android/gms/internal/f$a$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/ap;->a:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/f$a$b;->c:Ljava/lang/Long;

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
