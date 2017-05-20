.class final Lcom/google/android/gms/internal/iq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/fm;Lcom/google/android/gms/internal/cp;Lcom/google/android/gms/internal/ip;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fm;

.field final synthetic b:Lcom/google/android/gms/internal/is;

.field final synthetic c:Lcom/google/android/gms/internal/de;

.field final synthetic d:Lcom/google/android/gms/internal/dc;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm;Lcom/google/android/gms/internal/is;Lcom/google/android/gms/internal/de;Lcom/google/android/gms/internal/dc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iq$2;->a:Lcom/google/android/gms/internal/fm;

    iput-object p2, p0, Lcom/google/android/gms/internal/iq$2;->b:Lcom/google/android/gms/internal/is;

    iput-object p3, p0, Lcom/google/android/gms/internal/iq$2;->c:Lcom/google/android/gms/internal/de;

    iput-object p4, p0, Lcom/google/android/gms/internal/iq$2;->d:Lcom/google/android/gms/internal/dc;

    iput-object p5, p0, Lcom/google/android/gms/internal/iq$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$2;->a:Lcom/google/android/gms/internal/fm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm;->a()Lcom/google/android/gms/internal/fm$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iq$2;->b:Lcom/google/android/gms/internal/is;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/is;->a(Lcom/google/android/gms/internal/fm$c;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/iq$2;->c:Lcom/google/android/gms/internal/de;

    iget-object v2, p0, Lcom/google/android/gms/internal/iq$2;->d:Lcom/google/android/gms/internal/dc;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/dc;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/iq$2;->c:Lcom/google/android/gms/internal/de;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/de;->a()Lcom/google/android/gms/internal/dc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/iq$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/iq$2$1;-><init>(Lcom/google/android/gms/internal/iq$2;Lcom/google/android/gms/internal/dc;)V

    new-instance v1, Lcom/google/android/gms/internal/iq$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/iq$2$2;-><init>(Lcom/google/android/gms/internal/iq$2;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/fm$c;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    return-void
.end method
