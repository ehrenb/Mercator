.class Lcom/google/android/gms/internal/ni$b$1;
.super Lcom/google/android/gms/internal/nm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ni$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Lcom/google/android/gms/internal/ni$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ni$b;Lcom/google/android/gms/internal/nl;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ni$b$1;->b:Lcom/google/android/gms/internal/ni$b;

    iput-object p3, p0, Lcom/google/android/gms/internal/ni$b$1;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/nm$a;-><init>(Lcom/google/android/gms/internal/nl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$b$1;->b:Lcom/google/android/gms/internal/ni$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/ni$b;->a:Lcom/google/android/gms/internal/ni;

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$b$1;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ni;->a(Lcom/google/android/gms/internal/ni;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
