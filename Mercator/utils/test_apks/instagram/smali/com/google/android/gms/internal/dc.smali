.class public Lcom/google/android/gms/internal/dc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/dc;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/dc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/dc;->a:J

    iput-object p3, p0, Lcom/google/android/gms/internal/dc;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/dc;->c:Lcom/google/android/gms/internal/dc;

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/dc;->a:J

    return-wide v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Lcom/google/android/gms/internal/dc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->c:Lcom/google/android/gms/internal/dc;

    return-object v0
.end method
