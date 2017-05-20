.class Lcom/google/android/gms/internal/ml$a$1;
.super Lcom/google/android/gms/internal/mo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ml$a;->a(Lcom/google/android/gms/internal/mm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ml$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ml$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ml$a$1;->a:Lcom/google/android/gms/internal/ml$a;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ml$a$1;->a:Lcom/google/android/gms/internal/ml$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ml$a;->b(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
