.class Lcom/google/android/gms/internal/bw$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bw$5;->a:Lcom/google/android/gms/internal/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ll;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ll;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bw$5;->a:Lcom/google/android/gms/internal/bw;

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->a(Lcom/google/android/gms/internal/bw;)Lcom/google/android/gms/internal/bt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/bt;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw$5;->a:Lcom/google/android/gms/internal/bw;

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->a(Lcom/google/android/gms/internal/bw;)Lcom/google/android/gms/internal/bt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/internal/ll;Ljava/util/Map;)V

    goto :goto_0
.end method
