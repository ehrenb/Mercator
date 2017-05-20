.class Lcom/google/android/gms/internal/bw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ld$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bw;-><init>(Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/fm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ld$c",
        "<",
        "Lcom/google/android/gms/internal/fn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bw$1;->a:Lcom/google/android/gms/internal/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw$1;->a:Lcom/google/android/gms/internal/bw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bw;->a(Lcom/google/android/gms/internal/bw;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bw$1;->a:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bw;->a(Lcom/google/android/gms/internal/fn;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bw$1;->a(Lcom/google/android/gms/internal/fn;)V

    return-void
.end method
