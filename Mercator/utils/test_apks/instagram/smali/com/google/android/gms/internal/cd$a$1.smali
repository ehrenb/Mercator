.class Lcom/google/android/gms/internal/cd$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cd$a;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cd$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cd$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cd$a$1;->a:Lcom/google/android/gms/internal/cd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cd$a$1;->a:Lcom/google/android/gms/internal/cd$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/cd$a;->a(Lcom/google/android/gms/internal/cd$a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cd$a$1;->a:Lcom/google/android/gms/internal/cd$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/cd$a;->b(Lcom/google/android/gms/internal/cd$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cd$a$1;->a:Lcom/google/android/gms/internal/cd$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/cd$a;->c(Lcom/google/android/gms/internal/cd$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cd$a$1;->a:Lcom/google/android/gms/internal/cd$a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cd$a;->a(Lcom/google/android/gms/internal/cd$a;Z)Z

    const-string v0, "App went background"

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cd$a$1;->a:Lcom/google/android/gms/internal/cd$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/cd$a;->d(Lcom/google/android/gms/internal/cd$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cd$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/cd$b;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "OnForegroundStateChangedListener threw exception."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/kd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "App is still foreground"

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
