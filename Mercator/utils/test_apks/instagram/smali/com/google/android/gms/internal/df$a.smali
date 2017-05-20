.class Lcom/google/android/gms/internal/df$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/df;

.field private final b:Lcom/google/android/gms/internal/jf;

.field private final c:Lcom/google/android/gms/internal/lh;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/df;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/lh;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/df$a;->a:Lcom/google/android/gms/internal/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/df$a;->b:Lcom/google/android/gms/internal/jf;

    iput-object p3, p0, Lcom/google/android/gms/internal/df$a;->c:Lcom/google/android/gms/internal/lh;

    iput-object p4, p0, Lcom/google/android/gms/internal/df$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->b:Lcom/google/android/gms/internal/jf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jf;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->b:Lcom/google/android/gms/internal/jf;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jf;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->c:Lcom/google/android/gms/internal/lh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lh;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->b:Lcom/google/android/gms/internal/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/df$a;->c:Lcom/google/android/gms/internal/lh;

    iget-object v1, v1, Lcom/google/android/gms/internal/lh;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jf;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->c:Lcom/google/android/gms/internal/lh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/lh;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->b:Lcom/google/android/gms/internal/jf;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jf;->b(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->b:Lcom/google/android/gms/internal/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/df$a;->c:Lcom/google/android/gms/internal/lh;

    iget-object v1, v1, Lcom/google/android/gms/internal/lh;->c:Lcom/google/android/gms/internal/zzr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jf;->b(Lcom/google/android/gms/internal/zzr;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/df$a;->b:Lcom/google/android/gms/internal/jf;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jf;->c(Ljava/lang/String;)V

    goto :goto_2
.end method
