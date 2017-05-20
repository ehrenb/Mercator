.class public Lcom/google/android/gms/internal/jp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/gf;

.field private final b:Lcom/google/android/gms/internal/jm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gf;Lcom/google/android/gms/internal/jl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jp;->a:Lcom/google/android/gms/internal/gf;

    new-instance v0, Lcom/google/android/gms/internal/jm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jm;-><init>(Lcom/google/android/gms/internal/jl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/jm;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/gf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->a:Lcom/google/android/gms/internal/gf;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/internal/jm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/jm;

    return-object v0
.end method
