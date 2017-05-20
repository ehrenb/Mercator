.class public Lcom/google/android/gms/internal/ml;
.super Lcom/google/android/gms/common/api/l;

# interfaces
.implements Lcom/google/android/gms/clearcut/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ml$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/l",
        "<",
        "Lcom/google/android/gms/common/api/a$a$b;",
        ">;",
        "Lcom/google/android/gms/clearcut/b;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/clearcut/a;->c:Lcom/google/android/gms/common/api/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/mt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mt;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/internal/of;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/clearcut/b;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ml;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ml;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static b(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->j:Lcom/google/android/gms/clearcut/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->i:Lcom/google/android/gms/internal/ab$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ab$c;->k:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->i:Lcom/google/android/gms/internal/ab$c;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->j:Lcom/google/android/gms/clearcut/a$c;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/a$c;->a()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ab$c;->k:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->k:Lcom/google/android/gms/clearcut/a$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->i:Lcom/google/android/gms/internal/ab$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ab$c;->q:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->i:Lcom/google/android/gms/internal/ab$c;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->k:Lcom/google/android/gms/clearcut/a$c;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/a$c;->a()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ab$c;->q:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->i:Lcom/google/android/gms/internal/ab$c;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ml$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ml;->f()Lcom/google/android/gms/common/api/c;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ml$a;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/c;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ml;->b(Lcom/google/android/gms/internal/mx$a;)Lcom/google/android/gms/internal/mx$a;

    move-result-object v0

    return-object v0
.end method
