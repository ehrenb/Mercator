.class Lcom/google/android/gms/internal/if$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/if;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/kn",
        "<",
        "Lcom/google/android/gms/internal/fj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/if;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/if;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/if$3;->a:Lcom/google/android/gms/internal/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fj;)V
    .locals 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/if$3;->a:Lcom/google/android/gms/internal/if;

    invoke-static {v0}, Lcom/google/android/gms/internal/if;->a(Lcom/google/android/gms/internal/if;)Lcom/google/android/gms/ads/internal/q;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/if$3;->a:Lcom/google/android/gms/internal/if;

    invoke-static {v0}, Lcom/google/android/gms/internal/if;->a(Lcom/google/android/gms/internal/if;)Lcom/google/android/gms/ads/internal/q;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/if$3;->a:Lcom/google/android/gms/internal/if;

    invoke-static {v0}, Lcom/google/android/gms/internal/if;->a(Lcom/google/android/gms/internal/if;)Lcom/google/android/gms/ads/internal/q;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/if$3;->a:Lcom/google/android/gms/internal/if;

    invoke-static {v0}, Lcom/google/android/gms/internal/if;->a(Lcom/google/android/gms/internal/if;)Lcom/google/android/gms/ads/internal/q;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/fj;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/h;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/ads/internal/overlay/q;ZLcom/google/android/gms/internal/ek;Lcom/google/android/gms/internal/em;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/hb;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/if$3;->a(Lcom/google/android/gms/internal/fj;)V

    return-void
.end method
