.class public final Lcom/google/android/gms/ads/b/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:Lcom/google/android/gms/ads/j;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/b/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/b/b$a;->a(Lcom/google/android/gms/ads/b/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/b;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/b/b$a;->b(Lcom/google/android/gms/ads/b/b$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/b/b;->b:I

    invoke-static {p1}, Lcom/google/android/gms/ads/b/b$a;->c(Lcom/google/android/gms/ads/b/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/b;->c:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/b/b$a;->d(Lcom/google/android/gms/ads/b/b$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/b/b;->d:I

    invoke-static {p1}, Lcom/google/android/gms/ads/b/b$a;->e(Lcom/google/android/gms/ads/b/b$a;)Lcom/google/android/gms/ads/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/b/b;->e:Lcom/google/android/gms/ads/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/b/b$a;Lcom/google/android/gms/ads/b/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/b/b;-><init>(Lcom/google/android/gms/ads/b/b$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/b;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/b/b;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/b;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/b/b;->d:I

    return v0
.end method

.method public e()Lcom/google/android/gms/ads/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/b/b;->e:Lcom/google/android/gms/ads/j;

    return-object v0
.end method
