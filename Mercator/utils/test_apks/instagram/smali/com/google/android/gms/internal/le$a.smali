.class Lcom/google/android/gms/internal/le$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ld$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ld$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ld$a;

.field final synthetic c:Lcom/google/android/gms/internal/le;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/le;Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ld$c",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ld$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/le$a;->c:Lcom/google/android/gms/internal/le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/le$a;->a:Lcom/google/android/gms/internal/ld$c;

    iput-object p3, p0, Lcom/google/android/gms/internal/le$a;->b:Lcom/google/android/gms/internal/ld$a;

    return-void
.end method
