.class Lcom/google/android/gms/internal/iq$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ld$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iq$2;->run()V
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
.field final synthetic a:Lcom/google/android/gms/internal/dc;

.field final synthetic b:Lcom/google/android/gms/internal/iq$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iq$2;Lcom/google/android/gms/internal/dc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iq$2$1;->b:Lcom/google/android/gms/internal/iq$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/iq$2$1;->a:Lcom/google/android/gms/internal/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fn;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$2$1;->b:Lcom/google/android/gms/internal/iq$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/iq$2;->c:Lcom/google/android/gms/internal/de;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq$2$1;->a:Lcom/google/android/gms/internal/dc;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/dc;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$2$1;->b:Lcom/google/android/gms/internal/iq$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/iq$2;->c:Lcom/google/android/gms/internal/de;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/de;->b()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/iq$2$1;->b:Lcom/google/android/gms/internal/iq$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/iq$2;->b:Lcom/google/android/gms/internal/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/is;->b:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/iq$2$1;->b:Lcom/google/android/gms/internal/iq$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/iq$2;->b:Lcom/google/android/gms/internal/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/is;->c:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/iq$2$1;->b:Lcom/google/android/gms/internal/iq$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/iq$2;->b:Lcom/google/android/gms/internal/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/is;->d:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    :try_start_0
    const-string v0, "AFMA_getAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/iq$2$1;->b:Lcom/google/android/gms/internal/iq$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/iq$2;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq$2$1;->a(Lcom/google/android/gms/internal/fn;)V

    return-void
.end method
