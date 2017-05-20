.class public final Lcom/google/android/gms/internal/ms$c;
.super Lcom/google/android/gms/internal/ms$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/nw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nw$a",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/nw$a;Lcom/google/android/gms/tasks/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/nw$a",
            "<*>;",
            "Lcom/google/android/gms/tasks/d",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ms$a;-><init>(ILcom/google/android/gms/tasks/d;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ms$c;->c:Lcom/google/android/gms/internal/nw$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ms$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/gms/internal/ne;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ms$a;->a(Lcom/google/android/gms/internal/ne;Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/no$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/no$a",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/no$a;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ms$c;->c:Lcom/google/android/gms/internal/nw$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oa;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/oa;->b:Lcom/google/android/gms/internal/ok;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/no$a;->c()Lcom/google/android/gms/common/api/a$f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ms$c;->b:Lcom/google/android/gms/tasks/d;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ok;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/tasks/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/oa;->a:Lcom/google/android/gms/internal/nz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nz;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "UnregisterListenerTask"

    const-string v1, "Received call to unregister a listener without a matching registration call."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ms$c;->b:Lcom/google/android/gms/tasks/d;

    new-instance v1, Lcom/google/android/gms/common/api/zza;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/d;->b(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
