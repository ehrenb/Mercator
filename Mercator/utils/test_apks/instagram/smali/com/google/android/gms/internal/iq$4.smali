.class Lcom/google/android/gms/internal/iq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cp;Lcom/google/android/gms/internal/ip;)V
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
.field final synthetic a:Lcom/google/android/gms/internal/iq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iq$4;->a:Lcom/google/android/gms/internal/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fj;)V
    .locals 2

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/eh;->i:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq$4;->a(Lcom/google/android/gms/internal/fj;)V

    return-void
.end method
