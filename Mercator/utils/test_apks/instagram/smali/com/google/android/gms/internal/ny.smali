.class public Lcom/google/android/gms/internal/ny;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ms;

.field public final b:I

.field public final c:Lcom/google/android/gms/common/api/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/l",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ms;ILcom/google/android/gms/common/api/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ms;",
            "I",
            "Lcom/google/android/gms/common/api/l",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ms;

    iput p2, p0, Lcom/google/android/gms/internal/ny;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ny;->c:Lcom/google/android/gms/common/api/l;

    return-void
.end method
