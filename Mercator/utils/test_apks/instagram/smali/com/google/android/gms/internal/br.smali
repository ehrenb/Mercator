.class public final Lcom/google/android/gms/internal/br;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/json/JSONObject;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/br;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/br;->b:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/br;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/br;->a:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/br;->e:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/br;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/br;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/br;->f:Z

    return v0
.end method
