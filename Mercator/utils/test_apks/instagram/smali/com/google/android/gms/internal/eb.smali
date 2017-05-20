.class public Lcom/google/android/gms/internal/eb;
.super Lcom/google/android/gms/internal/dw$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dw$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/eb;->a:Lcom/google/android/gms/ads/b/e$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ds;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->a:Lcom/google/android/gms/ads/b/e$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/eb;->b(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/dt;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/e$a;->a(Lcom/google/android/gms/ads/b/e;)V

    return-void
.end method

.method b(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/dt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/ds;)V

    return-object v0
.end method
