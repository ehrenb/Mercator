.class abstract Lcom/google/android/gms/auth/api/signin/internal/c$a;
.super Lcom/google/android/gms/internal/mx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/g;",
        ">",
        "Lcom/google/android/gms/internal/mx$a",
        "<TR;",
        "Lcom/google/android/gms/auth/api/signin/internal/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/auth/api/signin/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/c;Lcom/google/android/gms/common/api/c;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/c$a;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    sget-object v0, Lcom/google/android/gms/auth/api/a;->f:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mx$a;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)V

    return-void
.end method
